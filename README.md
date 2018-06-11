## (WIP) Sample of batch for transfer files in ssh server to Treasure Data.

### Process

1. lookup with sh in ssh server
2. if flag was found, run digdag
3. embulk should be invoked by digdag
4. embulk helps data processing(加工) and data transfer(転送)

### Tools
* digdag
* Embulk (Cause of using `liquid` version 0.7.7~ is requird)


### Embulk plugin Required

```.sh
$ embulk gem install embulk-output-td
```

```.sh
$ embulk gem install embulk-filter-add_time
```
