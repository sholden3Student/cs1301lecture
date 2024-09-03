import sysPathAppend as sa

class Main():
    '''
        Entry point to application.
    '''
    def __init__(self):
        print("Initialization has started")
        sa.initializeModules()
        print("Initialization is complete")

if __name__ == "__main__":
    Main()
    checkIfFlake8ChecksSnakeCase = False