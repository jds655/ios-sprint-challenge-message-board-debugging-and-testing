Bug List
    1.  Problem Description:    

2019-10-11 11:19:53.711922-0400 Message Board[72672:1667411] Error decoding message threads from JSON data: dataCorrupted(Swift.DecodingError.Context(codingPath: [], debugDescription: "The given data was not valid JSON.", underlyingError: Optional(Error Domain=NSCocoaErrorDomain Code=3840 "JSON text did not start with array or object and option to allow fragments not set." UserInfo={NSDebugDescription=JSON text did not start with array or object and option to allow fragments not set.})))

        Possible Resolution(s):
        
        Handle an empty DB properly
        OR let it fail silently....moving on
        
        UI Test [ ], Unit Test [ ]
        Fails [ ], Recode [ ] , Passes [ ]
        git Commit [ ]
        
        
    2. Problem Description:
    
    Typing something in the "Create a new thread:" and hitting <enter>/<return> does nothing.
    
        Possible Resolution(s):
        
        1. X  have the table update itself
        2. >> make sure data is being added to the list (Unit tests on model/controller)
        3. >> Add .resume() to data task adding Message board to FB
        
        UI Test [ ], Unit Test [ ]
        Fails [ ], Recode [ ] , Passes [ ]
        git Commit [ ]
        
    3. Problem Description
    
    Data is gettign to FB but not decoding properly.
    
    2019-10-11 12:12:53.114374-0400 Message Board[74744:1715308] Error decoding message threads from JSON data: typeMismatch(Swift.Array<Any>, Swift.DecodingError.Context(codingPath: [], debugDescription: "Expected to decode Array<Any> but found a dictionary instead.", underlyingError: nil))

    Possible solutions:
    
    1. Check model and decode setup to handle real data from FB
    2. >> Changed Decode line to: JSONDecoder().decode([String : MessageThread].self, from: data).map({$0.value}) to make it a dictionary vs an array.



    4. Probelm Description
        Added MT, clicked on it in TV, clicked back, list empty, got added to FBs
        
        Possible solution:
        
        >> fixing decode fixed this.
        

    5. Problem Description:

    "Save" button does nothing on "New Message" View 
        MessageThread not being injected

    Possible Resolution(s):

    1. Fix the IBAction
    2. Trace through code to see what's happening
    3. >> Fixed seque name in privious VC to poperly inject dependants 
    3. >> Added: navigationController?.popViewController(animated: true) to end of save 

    UI Test [ ], Unit Test [ ]
    Fails [ ], Recode [ ] , Passes [ ]
    git Commit [ ]
    
    6. Problem Description:
    
    Messages saving to FB but failing to decode from FB:
    
    2019-10-11 12:48:00.035771-0400 Message Board[76216:1749634] Error decoding message threads from JSON data: typeMismatch(Swift.Array<Any>, Swift.DecodingError.Context(codingPath: [_DictionaryCodingKey(stringValue: "0FC89943-0CF8-418C-892E-139243F6EAC0", intValue: nil), CodingKeys(stringValue: "messages", intValue: nil)], debugDescription: "Expected to decode Array<Any> but found a dictionary instead.", underlyingError: nil))
    
    Possible Resolution(s):
    
    1. fix decode line in controller
    
    1. Fix the IBAction
    2. Trace through code to see what's happening
    3. >> Fixed seque name in privious VC to poperly inject dependants 
    3. >> Added: navigationController?.popViewController(animated: true) to end of save 
    
    UI Test [ ], Unit Test [ ]
    Fails [ ], Recode [ ] , Passes [ ]
    git Commit [ ]
