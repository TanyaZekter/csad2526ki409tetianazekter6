#include <iostream>
#include <string>
#include "math_operations.h"

static bool test_add(const std::string& name, int a, int b, int expected) {
    int r = add(a, b);
    if (r != expected) {
        std::cout << "[FAIL] " << name << ": add(" << a << ", " << b << ") == " << r << " (expected " << expected << ")\n";
        return false;
    }
    std::cout << "[PASS] " << name << "\n";
    return true;
}

int main() {
    bool ok = true;
    ok &= test_add("positive numbers", 2, 3, 5);
    ok &= test_add("negative numbers", -2, -3, -5);
    ok &= test_add("mixed", -5, 10, 5);
    ok &= test_add("zero", 0, 0, 0);
    ok &= test_add("large", 1000000, 2000000, 3000000);

    if (!ok) {
        std::cout << "Some tests failed\n";
        return 1;
    }

    std::cout << "All tests passed\n";
    return 0;
}