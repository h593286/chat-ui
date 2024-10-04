# Release Notes

## Release 1.0:
### Features:
- **Basic Chat Functionality**
- **Multi Modal**: Can accept and access pictures uploaded.
- **Course Books**: Has knowledge of the course material due to release timing of the books, but no RAG-system as of yet. Might lead to hallucinations, see **Known Bugs**.

### Known Bugs:
- **Bug**: Filter Breaks Conversation Window. 
  **Description**: Asking for prompts/illegal requests/etc can lead to Azure's filter kicking in, breaking the conversation window.
  **Fix**: Create new conversation window through the "New Chat"-button.
- **Bug**: Unable to Update System Message.
  **Description**:If system message is updated, need to create new conversation for the prompt to kick in. Older customisations will be using the old prompt.
  **Fix**: Create new conversation window through the "New Chat"-button.
- **Bug**: Chapter Hallucinations.
  **Description**: Sometimes refers to chapters in the book that doesnt exist or does not contain the material wanted. Overall LLM-hallucination problem.
  **Fix**: None. 
