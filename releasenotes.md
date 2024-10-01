# Release Notes
--
## Release 1.0:
Basic functions, no RAG system implemented, so the model is not grounded. 

### Known Bugs:
- Asking for prompts/illegal requests/etc can lead to Azure's filter kicking in, breaking the conversation window. **FIX**: Create new conversation window
- If system message is updated, need to create new conversation for the prompt to kick in. Older customisations will be using the old prompt. 
