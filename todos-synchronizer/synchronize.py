from flask import Flask, request
app = Flask(__name__)

@app.route('/sync_todo', methods=['POST'])
def synchronize_todo():
    todo = request.get_json()
    # let's pretend some background processor took it from here
    print(f'Todo#{todo["id"]} has been processed!')
    return 'Sync succeeded', 200