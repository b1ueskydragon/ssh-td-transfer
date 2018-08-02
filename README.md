## Batch for transfer files in ssh server to Treasure Data.

### Process

1. Lookup trigger file(flag) with sh in ssh server
2. If trigger was found, run digdag
3. Embulk would be invoked by digdag sh command
4. Embulk helps data processing (加工) and data transfer (転送)

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
* Make batch/ as Source root (e.g. pycharm)
* Please check your permission before execute sh command.
* Check server's bash.
* For gmail user, could not receive an alert mail? - check security of your account

```.sh
$ which bash
```

### How to schedule
#### Use crontab 
like (Permission required)
```.bash
# check date
$ date

$ crontab -e
# 7:00 am everyday
00 07 * * * sh /batch/lookup.sh
```

or..

#### Use digdag scheduler
But we should to check our host - e.g. localhost

anyway
```.bash
$ digdag scheduler
```

We can check enrolled schedule with check command
```.bash
$ digdag check
```
