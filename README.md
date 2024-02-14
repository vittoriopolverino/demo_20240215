
# 📜 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Test](#test)

<br />

# 🤓 About <a name = "about"></a>
The `tinybird` directory is a Data Project containing a set of plain-text files (Datafiles) that describes Tinybird resources.
In other words, Datafiles are the source code of your Data Project.

<br />

<br />


# 🏁 Getting Started <a name = "getting_started"></a>
To install the project dependencies and activate the virtual environment, execute the following command:
```bash
make venv
```

<br />

<br />

To authenticate to Tinybird, use the following command, replacing `your-token` with your actual admin token:
```bash
tb auth --token your-token
```

<br />

Format the project files:
```bash
make format
```

<br />

Pull Data Projects file from server:
```bash
tb pull --folder tinybird
```

<br />

Create Pipe :
```bash
cd tinybird/pipes
tb pipe generate my_pipe "SELECT * FROM my_datasource WHERE action == 'page_hit'"
```

Push Data Projects file to the server:
```bash
tb push my_pipe.pipe
```

<br />

Publish API:
```bash
tb pipe publish my_pipe.pipe
```

<br />

<br />


# 🛠️ Usage <a name = "usage"></a>

<br />

<br />

# 🐛 Test <a name = "test"></a>


<br />

<br />
