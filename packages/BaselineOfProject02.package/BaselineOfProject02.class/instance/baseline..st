baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'HTML';
    		    package: 'WebClient' with: 
                        [ spec
                            repository: 'http://ss3.gemstone.com/ss/WebClient';
                            yourself ];
                package: 'Scamper' with: [ spec requires: #('HTML') ].
            spec
                group: 'default' with: #('Scamper');
                group: 'Tests' with: #('Scamper');
                group: 'TravisCI' with: #('Tests') ]