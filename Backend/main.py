import uvicorn
if __name__ == "__main__":
    uvicorn.run("app.mainAPI:app", host="localhost", port=8000, reload=True)
