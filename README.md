# Ansible JSON module

CRUD operations on a remote json file.

## Requirements

No external dependencies. Relies on Python `re` library.

## Notes

Escaping your key-string can be pretty tricky.

## Return Value

This module always returns the updated document in a `file` property.
```yaml
- name: read a file
  ansible-json:
    file: /tmp/somefile.json
  register: result

- debug: var=result.file
```

## Examples

This module supports Read, Create, Update, and Delete functionality even across arrays.

### Quick Reference

Only `file` = Read

`file` + `key` + `value` = Create/Update

`file` + `key` + `delete=True`= Delete

### Read

```yaml
- name: Read a file
  ansible-json:
    file: /tmp/somefile.json
  register: result
```

### Create, Update

There is no distinction between the two in this module.

```yaml
- name: Create a key
  ansible-json:
    file: /tmp/somefile.json
    key: some.path.to.location.newkey
    value: mynewvalue
  register: result


- name: Create multiple keys
  ansible-json:
    file: /tmp/somefile.json
    key: some.path.to.array[].newkey
    value: mynewvalue
  register: result


- name: Create multiple keys in a known array index
  ansible-json:
    file: /tmp/somefile.json
    key: some.path.to.array[0].nestedarray[].newkey
    value: mynewvalue
  register: result
```

### Delete

Same support as Create, Update but add the delete option.

```yaml
- name: Create a key
  ansible-json:
    file: /tmp/somefile.json
    key: some.path.to.location.newkey
    delete: True
  register: result

# etc...

```


## Testing

Please see the [Testing README](tests/README.md)
