# yaml
bash tool for parsing YAML files (implemented with awk)

# usage

Suppose we have the following YAML file ("my-list.yaml").

```yaml
fruit:
  apple:
    price: 5
    amount: 10
  orange:
    price: 4
    amount: 9
book:
  cooking-about: "not-ready-yet"
```

then we can get the values in it as following.

```
$ cat my-list.yaml | ./get_yaml_value "/fruit/apple/amount" 
10

$ cat my-list.yaml | ./get_yaml_value "/book/cooking-about"
not-ready-yet

$ cat my-list.yaml | ./get_yaml_value "/book/story/harry-potter"
$ # we got nothing here
```


