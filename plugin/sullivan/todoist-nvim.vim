let todoist = {
\ 'icons': {
\   'unchecked': '  ',
\   'checked':   '  ',
\   'loading':   '  ',
\   'error':     '  ',
\ },
\}

let clap_provider_todoist = {
\ 'source': {-> Todoist__listProjects()},
\ 'sink': 'Todoist',
\}
