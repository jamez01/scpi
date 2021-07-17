# Warning: Work In Progress
This is very much a work in progress.  It is not ready for use, and the SCPI protocol is only partially implemented.

## Ruby SCPI 
This library implements the SCPI protocol for usb devices on linux that create /dev/usbtmc0.

## Supported Devices:
Currently only the **Hantek DSO2D15** has been tested, but other DSO2XX devices should work.

## Install
There is no current install method, however, this will soon be a ruby gem that can easily be installed.

```bash
git pull https://github.com/jamez01/scpi.git
cd scpi
irb -I ./lib -r scpi
```

## Usage
```ruby
> scope = SCPI::Hantek.new(address) # Address is an integer, usually. Will point to /dev/usbtmc<ADDRESS>

> scope.idn
 => "undefined, DSO2D15, CN2053029001262, 1.1.0(20210416.00)" 
> scope.channel(1).display?
 => false
> scope.channel(1).display(true)
 => true
> scope.channel(1).display?
 => true 
```

## SCPI API Coverage
This library currently supports all SCPI commands for the following command sets:
* Channel
* Acquire
* Timebase

Partial Trigger support is also included. All commands, including sub-commands are defined, but may not work as expected.

## Contributing
Feel free to contribute.  You can add more devices, or help implement the the DSO2D15.
* Fork
* Modify
* Pull Request
## How to get more devices suppored?
Have a scope, function generator, or other device you want supported but don't want code for it? Feel free to contact me and send me any device you want support for.  I will be happy to implement it in exchange for free hardware. ;)
