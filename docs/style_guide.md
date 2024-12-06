# Style Guide

## Contents

- [Formatting](#formatting)
  - [Alignment](#alignment)
  - [Brackets](#brackets)
  - [Characters Per Line](#characters-per-line)
  - [Const](#const)
  - [Empty Lines](#empty-lines)
  - [Indentation](#indentation)
  - [Namespaces](#namespaces)
  - [Single Line Rules](#single-line-rules)
  - [Spaces](#spaces)
  - [Templates](#templates)
- [Naming](#naming)
  - [Case](#case)
  - [Prefix](#prefix)
  - [Suffix](#suffix)
- [Best Practices](#best-practices)

## Formatting

### Alignment

Always break curly brackets:

```cpp
// Good
void foo()
{
    int number = 10;

    if (number == 5)
    {
        return;
    }
}

// Bad
void foo() {
    int number = 10;

    if (number == 5) {
        return;
    }
}
```

If the code inside round brackets doesn't fit in a line, break each argument/parameter onto a new line and break the closing bracket.

```cpp
void function_one( // Doesn't fit in a line, break
    unsigned int value_one,
    unsigned int value_two,
    unsigned int value_three
)
{
}

void function_two(unsigned int value) // Fits in a line, don't break
{
}

int main()
{
    const unsigned int very_long_variable_name1 = 1;
    const unsigned int very_long_variable_name2 = 2;
    const unsigned int very_long_variable_name3 = 3;

    function_one( // Doesn't fit in a line, break
        very_long_variable_name1,
        very_long_variable_name2,
        very_long_variable_name3
    );

    const unsigned int value = 10;

    function_two(value); // Fits in a line, don't break
}
```

Align operands:

```cpp
int aaa = bbbbbbbbbbbbbbb
        + ccccccccccccccc;
```

Align lambda body relative to the lambda signature:

```cpp
some_function_call(
    []()
    {
        // Code...
    }
);
```

Align pointers and references to the left:

```cpp
// Good
int* ptr_one;
int& ref_one;

// Bad: Aligned to the right
int *ptr_two;
int &ref_two;
```

Align initializer list commas to the left:

```cpp
constructor()
    : initializer1()
    , initializer2()
{
    // Code...
}
```

Align inheritance list commas to the left:

```cpp
class foo
    : base1
    , base2
{
    // Code...
}
```

### Brackets

Always use brackets, even for short statements.

```cpp
// Good
for (std::size_t i = 0; i < 100; ++i)
{
    std::cout << i << '\n';
}

// Bad: No brackets used
for (std::size_t i = 0; i < 100; ++i)
    std::cout << i << '\n';
```

### Characters Per Line

Each line must have a maximum of `80` characters.

```cpp
int main()
{
    int very_long_variable_name1 = 1;
    int very_long_variable_name2 = 1;
    int very_long_variable_name3 = 1;
    
    // Good, no more than 80 characters per line
    int result = very_long_variable_name1 
               + very_long_variable_name2 
               + very_long_variable_name3;
}
```

### Const

Use `const` when possible, except for:
- Member variables
- Copy parameters
- Copy return types

```cpp
class foo
{
public:
    std::vector<int> ex_ret_type() // Good
    {
    }

    const std::vector<int> ex_ret_type() // Bad
    {
    }

    void ex_parameter(std::vector<int> list) // Good
    {
    }

    void ex_parameter(const std::vector<int> list) // Bad
    {
    }

private:
    std::vector<int> m_list; // Good

    const std::vector<int> m_list; // Bad
};

int main()
{
    // Good
    const int variable1 = 3;

    // Bad
    int variable2 = 6;
}
```

### Empty Lines

Maximum empty lines to keep: `1`.

```cpp
int main()
{
    // Good
    int my_variable1;

    int my_variable2;
    // ...

    // Bad
    int my_variable3;


    int my_variable4;
    // ...
}
```

### Indentation

Don't use tabs; use `4` spaces for indenting your code.

```cpp
int main()
{
    int random_variable = 10;

    if (random_variable)
    {
        return 0;
    }
}
```

Don't indent pre-processor directives.

```cpp
// Good
#if FOO
#if BAR
#include <foo>
#endif
#endif

// Bad
#if FOO
  #if BAR
    #include <foo>
  #endif
#endif
```

Don't indent `public`, `protected`, and `private` keywords.

```cpp
// Good
class foo
{
public:
    // Code...

protected:
    // Code...

private:
    // Code...
};

// Bad
class foo
{
    public:
        // Code...

    protected:
        // Code...

    private:
        // Code...
};
```

Don't indent `case` and `default` keywords.

```cpp
int main()
{
    int random_variable = 10;

    // Good
    switch (random_variable)
    {
    case 1:
        // Code...
        break;
    default:
        // Code...
        break;
    }

    // Bad
    switch (random_variable)
    {
        case 1:
            // Code...
            break;
        default:
            // Code...
            break;
    }
}
```

### Namespaces

Don't indent namespaces.

If a namespace has more than one line, place a comment with the name of the namespace at the end of its closing brackets.

```cpp
namespace foo
{

void my_function();

void my_function_two();

} // namespace foo
```

### Single Line Rules

Never put anything into a single line except:
- Short compound requirements
- Short lambdas

```cpp
// Good
template <typename data_t>
concept my_concept = requires(data_t value)
{
    { value + 1 } -> std::same_as<int>;
};

void empty_function() {} // Bad

// Good
void empty_function()
{
}

int main()
{
    int random_variable = 10;

    // Bad
    if (random_variable == 1) { return; }

    // Good
    if (random_variable == 1)
    {
        return;
    }

    // Good
    auto lambda1 = [](int parameter) { return parameter; };

    // Bad, not short
    auto lambda2 = [](int parameter) { return parameter < 0 ? -parameter : parameter; };
}
```

### Spaces

Put a space between `for`, `if`, `else if`, and `while` keywords and open brackets.

```cpp
int main()
{
    // Bad
    for(int i = 0; i < 100; ++i)
    {
    }

    // Good
    for (int i = 0; i < 100; ++i)
    {
    }

    // Bad
    while(some_variable)
    {
    }

    // Goood
    while (some_variable)
    {
    }

    // Bad
    if(some_variable)
    {
    }

    // Good
    if (some_variable)
    {
    }
}
```

## Naming

### Case

Use `underscore_style` everywhere except for macros.

```cpp
class random_name // Good
{
};

class RandomName // Bad
{
};

int main()
{
    int myVariable; // Bad

    int my_variable; // Good

    random_name myObject; // Bad

    random_name my_object; // Good
}
```

For macros, use `UPPER_CASE`.

```cpp
#define my_macro // Bad

#define MY_MACRO // Good
```

### Prefix

Put `m_` as a prefix in all non-public member variables.

```cpp
class foo
{
public:
    int member_variable; // Good, no need to put m_ since it is public

    int m_member_variable; // Bad, the variable is public

private:
    int m_member_variable; // Good, the variable is private; m_ is needed 

    int member_variable; // Bad, the variable needs m_ since it's private

protected:
    int m_member_variable; // Good, the variable is protected; m_ is needed 

    int member_variable; // Bad, the variable needs m_ since it's protected
};
```

### Suffix

Put `_t` as a suffix for all defined types.

Defined types are types defined with:
- `typename` keyword.
- `using` keyword.
- `typedef` keyword.

```cpp
using custom_type = std::int16_t; // Bad, didn't add _t suffix

using custom_type_t = std::int16_t; // Good, added _t suffix

typedef std::int16_t custom_type; // Bad, didn't add _t suffix

typedef std::int16_t custom_type_t; // Good, added _t suffix

template<typename T> // Bad, didn't add _t suffix


void foo(const T& data)
{

}

template<typename data_t> // Good, added _t suffix
void foo(const data_t& data)
{

}
```

## Best Practices

Recommended best practices:

[Jason Turner Best Practices](https://github.com/cpp-best-practices/cppbestpractices)

[C++ Core Guidelines](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines)
