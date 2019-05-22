#!/bin/bash
dotnet new -u org.partners.cdr.sample
dotnet new -i org.partners.cdr.sample::1.0.7 --nuget-source http://pcpgm-scm.dipr.partners.org:8081/nexus/repository/hip-nuget-repo/
