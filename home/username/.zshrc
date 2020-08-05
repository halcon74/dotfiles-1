#############################################################################
# Copyright 2020 Ramon Fischer                                              #
#                                                                           #
# Licensed under the Apache License, Version 2.0 (the "License");           #
# you may not use this file except in compliance with the License.          #
# You may obtain a copy of the License at                                   #
#                                                                           #
#     http://www.apache.org/licenses/LICENSE-2.0                            #
#                                                                           #
# Unless required by applicable law or agreed to in writing, software       #
# distributed under the License is distributed on an "AS IS" BASIS,         #
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  #
# See the License for the specific language governing permissions and       #
# limitations under the License.                                            #
#############################################################################

# global
# do not start any programs here. use "~/.zshrc.local" for this!

## exports
### set default scanner device
export SANE_DEFAULT_DEVICE="net:raspberrypi-printer.local:genesys"
### use local man pages
export MANPATH="/home/$(id --user --name)/.local/share/man:${MANPATH}"

## aliases
### ruby
alias ruby-install="ruby-install --jobs='4' --cleanup --src-dir '/home/$(id --user --name)/.local/src' --install-dir '/home/$(id --user --name)/.local'"

## source client-specific file
if [[ -f "/home/$(id --user --name)/.zshrc.local" ]]
then
    source "/home/$(id --user --name)/.zshrc.local"
fi
