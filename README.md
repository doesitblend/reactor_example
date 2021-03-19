# reactor_example
A simple reactor example

## Usage

The path names match exactly where these files are expected to be placed in 
the file system. So, `etc/salt/master.d/reactors.conf` goes to 
`/etc/salt/master.d/reactors.conf`. If you have an existing reactors config
then you will need to merge these together.

You will need to restart the Salt master once the files are in place for the
reactor to take effect.

Then from a minion run `salt-call event.send 'myorg/testing/new' data='{"people":["person1","person2"]}' with_grains=True with_pillar=True
