# {{ ansible_managed }}
#############################################################################
# Copyright 2018 Ramon Fischer                                              #
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

# tmux
## attach or create tmux session
if [[ $(/usr/bin/pgrep --euid "$(/usr/bin/id --user --name)" "tmux") && "${TMUX}" == "" && $(/bin/tty) != "/dev/tty6" ]]
then
    /usr/bin/tmux attach 2>/dev/null
else
    if [[ ! $(/usr/bin/pgrep --euid "$(/usr/bin/id --user --name)" "script") && $(/bin/tty) != "/dev/tty6" ]]
    then
        /usr/bin/tmux new-session 2>/dev/null #-n "$(/usr/bin/id -un)@$(/bin/hostname)"
    fi
fi