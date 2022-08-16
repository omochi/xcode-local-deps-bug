import AnimalModule
import ZooModule

func main() throws {
    let zoo = Zoo()
    let cat = zoo.cat()
    if let nya = cat as? Nya {
        print(nya.nya())
    } else {
        print("not nya")
    }
}

try main()
