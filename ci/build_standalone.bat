pip install -U pip
pip install virtualenv
virtualenv build_venv
call build_venv\Scripts\activate.bat
move pyproject.toml pyproject.toml.bak
pip install -e .[test,docs,check]
pip install gravitybee
gravitybee --with-latest
call build_venv\Scripts\deactivate.bat
move .gravitybee\dist\latest\aqtinstall-*.exe .gravitybee\dist\latest\aqt.exe
