P2P Blockchain Simulation:

This project simulates a Peer-to-Peer Blockchain Network where multiple nodes maintain their own blockchain copies and communicate to stay in sync.  

Features :

-> Create transactions  
-> Mine new blocks (Proof-of-Work)  
-> Maintain blockchain on multiple nodes  
-> Register nodes dynamically  
-> Consensus algorithm (Longest chain wins)  

Tech Stack:

-> Python 3.x  
-> Flask (REST API)  
-> Requests (for node communication)  

Project Structure:

p2p_blockchain/

├── blockchain.py # Blockchain logic

├── node.py # Flask API for nodes

├── run_nodes.bat # Starts 3 nodes on Windows

├── requirements.txt # Dependencies

└── screenshots/ # All screenshots

How to Run ?

1. Install dependencies:
        pip install -r requirements.txt

2. Start multiple nodes
        .\run_nodes.bat

    This will open 3 nodes:

    Node 1 → http://127.0.0.1:5000

    Node 2 → http://127.0.0.1:5001

    Node 3 → http://127.0.0.1:5002


API Endpoints:

1. Add Transaction:
    POST /transactions/new
    Body (JSON):
    {
    "sender": "Alice",
    "recipient": "Bob",
    "amount": 5
    }

2. Mine block:
    GET /mine

3. View Blockchain:
    GET /chain

4. Register Nodes:
    POST /nodes/register

    Body (JSON):
    {
    "nodes": ["http://127.0.0.1:5001", "http://127.0.0.1:5002"]
    }

5. Resolve Conflicts:
    GET /nodes/resolve

How It Works ?

1. Each node runs on a different port and maintains its own blockchain.
2. You can add transactions to any node.
3. When a block is mined, it gets added to that node’s chain.
4. Nodes can be registered with each other.
5. When resolving conflicts, all nodes adopt the longest valid chain.





