Xcode 14 bug for local dependency.

# Steps

1. Checkout this repository

2. Open `ZooModule/Package.swift` via Xcode

3. Select `zoo` schema

4. Run (Cmd + R)

5. It prints `not nya`

6. Right click `AnimalModule/Sources/AnimalModule` directory in navigator

7. Select `New File... > Swift File`

8. Edit new `File.swift` as below

```
extension Cat: Nya {
    public func nya() -> String { "nya" }
}
```

9. Run (Cmd + R)

10. It still prints `not nya`

This is a problem

11. Select `File > Packages > Resolve Package Versions`

12. Run (Cmd + R)

13. Finally it prints `nya`

# Additional information

If you write `extension Cat: Nya { ... }` after `struct Cat` in `Cat.swift` instead of new `File.swift`,
it rebuild correctly without resolving package.

# Delete problem

1. The new file `File.swift` can't delete from right click menus which is gray out.

2. Delete `File.swift` from finder and xcode tracks it. So `File.swift` is removed from navigator.

3. Run (Cmd + R)

4. Build error happens.

```
Build input file cannot be found: '/Users/omochi/github/omochi/xcode-local-deps-bug/AnimalModule/Sources/AnimalModule/File.swift'. 
Did you forget to declare this file as an output of a script phase or custom build rule which produces it?
```

