# * BSD License
# *     
# * Copyright (c) 2017, AT&T Intellectual Property.  All other rights reserved.       
# * 
# *  Redistribution and use in source and binary forms, with or without modification, are permitted
# *   provided that the following conditions are met:
# *
# *   1. Redistributions of source code must retain the above copyright notice, this list of conditions
# *      and the following disclaimer.
# *   2. Redistributions in binary form must reproduce the above copyright notice, this list of
# *      conditions and the following disclaimer in the documentation and/or other materials provided
# *      with the distribution.
# *   3. All advertising materials mentioning features or use of this software must display the
# *      following acknowledgement:  This product includes software developed by the AT&T.
# *   4. Neither the name of AT&T nor the names of its contributors may be used to endorse or
# *      promote products derived from this software without specific prior written permission.
# *
# *   THIS SOFTWARE IS PROVIDED BY AT&T INTELLECTUAL PROPERTY ''AS IS'' AND ANY EXPRESS OR
# *   IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# *   MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
# *   SHALL AT&T INTELLECTUAL PROPERTY BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# *   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# *   PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;  LOSS OF USE, DATA, OR PROFITS;
# *   OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# *   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# *   ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
# *   DAMAGE.
# *******************************************************************************
Feature: Edit Application Page
  As a user
  I want to be able to edit applications for private key in the system

  @EditApplicationPrivateKey
  Scenario: Edit application
    ##Given I am entering credentials for Edit Application private Key
    Given I am on the dash board page for edit application for private key
    Then I enter the specific application name to be edited for private key "PrivateKey Test"
    When I click first row of the expand button on view application page for edit for private key
    When I click the edit button enter all edit values for private key
      | serverName | hostName | ipAddress | userName |
      | server1    | server1  | 1.0.0.3   | user     |
    When I click the next button on edit application page for private key
    When I enter all the application details in tab two edit application page for private key
      | cpuIndex | memoryIndex | osIndex | storageIndex | osTypeIndex |
      |        2 | 24GB        |       2 | 12GB         |           2 |
    When I click the next button on edit application page for private key
    When I enter all the application details in tab three edit application page for private key
      | softwareComponentName | processName |
      | httpd                 | java        |
    When I click the next button on edit application page for private key
    When I enter all the application details in tab five edit application page for private key
      | counterType        | monitorApi       |
      | counterType-update | https://monitor/ |
    When I click the next button on edit application page for private key
    When I enter all the application details in tab six edit application page for private key
      | logType     | logLocation     |
      | sl4j-update | http://tmp/log/ |
    And I click the update button on edit application page for private key
