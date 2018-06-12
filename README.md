## Batch for transfer files in ssh server to Treasure Data.

### Process

1. Lookup with sh in ssh server
2. If tragger file(flag) was found, run digdag
3. Embulk would be invoked by digdag sh command
4. Embulk helps data processing(加工) and data transfer(転送)

### Tools
* Digdag
* Embulk (Since of using `liquid` version 0.7.7~ is requird)


### Embulk plugin Required

```.sh
$ embulk gem install embulk-output-td
```

```.sh
$ embulk gem install embulk-filter-add_time
```

### Remarks
* Table name is same as file name.