package org.mozilla.javascript;

public final class ES6Generator extends IdScriptableObject {
    private static final Object GENERATOR_TAG = "Generator";
    private static final int Id_next = 1;
    private static final int Id_return = 2;
    private static final int Id_throw = 3;
    private static final int MAX_PROTOTYPE_ID = 4;
    private static final int SymbolId_iterator = 4;
    private static final long serialVersionUID = 1645892441041347273L;
    private Object delegee;
    private NativeFunction function;
    private int lineNumber;
    private String lineSource;
    private Object savedState;
    private State state = State.SUSPENDED_START;

    public enum State {
        SUSPENDED_START,
        SUSPENDED_YIELD,
        EXECUTING,
        COMPLETED
    }

    public static final class YieldStarResult {
        private Object result;

        public YieldStarResult(Object obj) {
            this.result = obj;
        }

        public Object getResult() {
            return this.result;
        }
    }

    private ES6Generator() {
    }

    private Object callReturnOptionally(Context context, Scriptable scriptable, Object obj) {
        Object obj2 = Undefined.instance;
        Object[] objArr = obj2.equals(obj) ? ScriptRuntime.emptyArgs : new Object[]{obj};
        Object objectPropNoWarn = ScriptRuntime.getObjectPropNoWarn(this.delegee, "return", context, scriptable);
        if (obj2.equals(objectPropNoWarn)) {
            return null;
        }
        if (objectPropNoWarn instanceof Callable) {
            return ((Callable) objectPropNoWarn).call(context, scriptable, ScriptableObject.ensureScriptable(this.delegee), objArr);
        }
        throw ScriptRuntime.typeError2("msg.isnt.function", "return", ScriptRuntime.typeof(objectPropNoWarn));
    }

    public static ES6Generator init(ScriptableObject scriptableObject, boolean z) {
        ES6Generator eS6Generator = new ES6Generator();
        if (scriptableObject != null) {
            eS6Generator.setParentScope(scriptableObject);
            eS6Generator.setPrototype(ScriptableObject.getObjectPrototype(scriptableObject));
        }
        eS6Generator.activatePrototypeMap(4);
        if (z) {
            eS6Generator.sealObject();
        }
        if (scriptableObject != null) {
            scriptableObject.associateValue(GENERATOR_TAG, eS6Generator);
        }
        return eS6Generator;
    }

    private Scriptable resumeAbruptLocal(Context context, Scriptable scriptable, int i, Object obj) {
        Object objWrapException = obj;
        State state = this.state;
        State state2 = State.EXECUTING;
        if (state == state2) {
            throw ScriptRuntime.typeError0("msg.generator.executing");
        }
        if (state == State.SUSPENDED_START) {
            this.state = State.COMPLETED;
        }
        Scriptable scriptableMakeIteratorResult = ES6Iterator.makeIteratorResult(context, scriptable, Boolean.FALSE);
        State state3 = this.state;
        State state4 = State.COMPLETED;
        if (state3 == state4) {
            if (i == 1) {
                throw new JavaScriptException(objWrapException, this.lineSource, this.lineNumber);
            }
            ScriptableObject.putProperty(scriptableMakeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
            return scriptableMakeIteratorResult;
        }
        this.state = state2;
        if (i == 2) {
            if (!(objWrapException instanceof NativeGenerator.GeneratorClosedException)) {
                objWrapException = new NativeGenerator.GeneratorClosedException();
            }
        } else if (objWrapException instanceof JavaScriptException) {
            objWrapException = ((JavaScriptException) objWrapException).getValue();
        } else if (objWrapException instanceof RhinoException) {
            objWrapException = ScriptRuntime.wrapException((Throwable) objWrapException, scriptable, context);
        }
        try {
            try {
                ScriptableObject.putProperty(scriptableMakeIteratorResult, ES6Iterator.VALUE_PROPERTY, this.function.resumeGenerator(context, scriptable, i, this.savedState, objWrapException));
                State state5 = State.SUSPENDED_YIELD;
                this.state = state5;
                if (state5 == state4) {
                    this.delegee = null;
                    ScriptableObject.putProperty(scriptableMakeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
                }
            } catch (JavaScriptException e) {
                State state6 = State.COMPLETED;
                this.state = state6;
                if (!(e.getValue() instanceof NativeIterator.StopIteration)) {
                    this.lineNumber = e.lineNumber();
                    this.lineSource = e.lineSource();
                    if (e.getValue() instanceof RhinoException) {
                        throw ((RhinoException) e.getValue());
                    }
                    throw e;
                }
                ScriptableObject.putProperty(scriptableMakeIteratorResult, ES6Iterator.VALUE_PROPERTY, ((NativeIterator.StopIteration) e.getValue()).getValue());
                if (this.state == state6) {
                }
            } catch (NativeGenerator.GeneratorClosedException unused) {
                this.state = State.COMPLETED;
            } catch (RhinoException e2) {
                this.state = State.COMPLETED;
                this.lineNumber = e2.lineNumber();
                this.lineSource = e2.lineSource();
                throw e2;
            }
            return scriptableMakeIteratorResult;
        } catch (Throwable th) {
            if (this.state == State.COMPLETED) {
                this.delegee = null;
                ScriptableObject.putProperty(scriptableMakeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
            }
            throw th;
        }
    }

    private Scriptable resumeDelegee(Context context, Scriptable scriptable, Object obj) {
        try {
            Scriptable scriptableEnsureScriptable = ScriptableObject.ensureScriptable(ScriptRuntime.getPropFunctionAndThis(this.delegee, ES6Iterator.NEXT_METHOD, context, scriptable).call(context, scriptable, ScriptRuntime.lastStoredScriptable(context), Undefined.instance.equals(obj) ? ScriptRuntime.emptyArgs : new Object[]{obj}));
            if (!ScriptRuntime.isIteratorDone(context, scriptableEnsureScriptable)) {
                return scriptableEnsureScriptable;
            }
            this.delegee = null;
            return resumeLocal(context, scriptable, ScriptableObject.getProperty(scriptableEnsureScriptable, ES6Iterator.VALUE_PROPERTY));
        } catch (RhinoException e) {
            this.delegee = null;
            return resumeAbruptLocal(context, scriptable, 1, e);
        }
    }

    private Scriptable resumeDelegeeReturn(Context context, Scriptable scriptable, Object obj) {
        try {
            Object objCallReturnOptionally = callReturnOptionally(context, scriptable, obj);
            if (objCallReturnOptionally == null) {
                this.delegee = null;
                return resumeAbruptLocal(context, scriptable, 2, obj);
            }
            if (!ScriptRuntime.isIteratorDone(context, objCallReturnOptionally)) {
                return ScriptableObject.ensureScriptable(objCallReturnOptionally);
            }
            this.delegee = null;
            return resumeAbruptLocal(context, scriptable, 2, ScriptRuntime.getObjectPropNoWarn(objCallReturnOptionally, ES6Iterator.VALUE_PROPERTY, context, scriptable));
        } catch (RhinoException e) {
            this.delegee = null;
            return resumeAbruptLocal(context, scriptable, 1, e);
        }
    }

    private Scriptable resumeDelegeeThrow(Context context, Scriptable scriptable, Object obj) {
        boolean z = false;
        try {
            Object objCall = ScriptRuntime.getPropFunctionAndThis(this.delegee, "throw", context, scriptable).call(context, scriptable, ScriptRuntime.lastStoredScriptable(context), new Object[]{obj});
            if (!ScriptRuntime.isIteratorDone(context, objCall)) {
                return ScriptableObject.ensureScriptable(objCall);
            }
            try {
                try {
                    callReturnOptionally(context, scriptable, Undefined.instance);
                    return resumeLocal(context, scriptable, ScriptRuntime.getObjectProp(objCall, ES6Iterator.VALUE_PROPERTY, context, scriptable));
                } finally {
                    this.delegee = null;
                }
            } catch (RhinoException e) {
                e = e;
                z = true;
            }
        } catch (RhinoException e2) {
            e = e2;
        }
        if (!z) {
            try {
                callReturnOptionally(context, scriptable, Undefined.instance);
            } catch (RhinoException e3) {
                return resumeAbruptLocal(context, scriptable, 1, e3);
            } finally {
                this.delegee = null;
            }
        }
        return resumeAbruptLocal(context, scriptable, 1, e);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x008c  */
    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:568)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:594)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    private Scriptable resumeLocal(Context context, Scriptable scriptable, Object obj) {
        State state = this.state;
        State state2 = State.COMPLETED;
        if (state == state2) {
            return ES6Iterator.makeIteratorResult(context, scriptable, Boolean.TRUE);
        }
        State state3 = State.EXECUTING;
        if (state == state3) {
            throw ScriptRuntime.typeError0("msg.generator.executing");
        }
        Scriptable scriptableMakeIteratorResult = ES6Iterator.makeIteratorResult(context, scriptable, Boolean.FALSE);
        this.state = state3;
        try {
            try {
                try {
                    Object objResumeGenerator = this.function.resumeGenerator(context, scriptable, 0, this.savedState, obj);
                    if (!(objResumeGenerator instanceof YieldStarResult)) {
                        ScriptableObject.putProperty(scriptableMakeIteratorResult, ES6Iterator.VALUE_PROPERTY, objResumeGenerator);
                        if (this.state == state2) {
                            ScriptableObject.putProperty(scriptableMakeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
                        } else {
                            this.state = State.SUSPENDED_YIELD;
                        }
                        return scriptableMakeIteratorResult;
                    }
                    State state4 = State.SUSPENDED_YIELD;
                    this.state = state4;
                    try {
                        this.delegee = ScriptRuntime.callIterator(((YieldStarResult) objResumeGenerator).getResult(), context, scriptable);
                        try {
                            Scriptable scriptableResumeDelegee = resumeDelegee(context, scriptable, Undefined.instance);
                            this.state = state3;
                            if (ScriptRuntime.isIteratorDone(context, scriptableResumeDelegee)) {
                                this.state = state2;
                            }
                            if (this.state == state2) {
                                ScriptableObject.putProperty(scriptableMakeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
                            } else {
                                this.state = state4;
                            }
                            return scriptableResumeDelegee;
                        } catch (Throwable th) {
                            this.state = State.EXECUTING;
                            throw th;
                        }
                    } catch (RhinoException e) {
                        Scriptable scriptableResumeAbruptLocal = resumeAbruptLocal(context, scriptable, 1, e);
                        if (this.state == State.COMPLETED) {
                            ScriptableObject.putProperty(scriptableMakeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
                        } else {
                            this.state = State.SUSPENDED_YIELD;
                        }
                        return scriptableResumeAbruptLocal;
                    }
                } catch (NativeGenerator.GeneratorClosedException unused) {
                    this.state = State.COMPLETED;
                }
            } catch (JavaScriptException e2) {
                State state5 = State.COMPLETED;
                this.state = state5;
                if (!(e2.getValue() instanceof NativeIterator.StopIteration)) {
                    this.lineNumber = e2.lineNumber();
                    this.lineSource = e2.lineSource();
                    if (e2.getValue() instanceof RhinoException) {
                        throw ((RhinoException) e2.getValue());
                    }
                    throw e2;
                }
                ScriptableObject.putProperty(scriptableMakeIteratorResult, ES6Iterator.VALUE_PROPERTY, ((NativeIterator.StopIteration) e2.getValue()).getValue());
                if (this.state != state5) {
                    this.state = State.SUSPENDED_YIELD;
                }
            } catch (RhinoException e3) {
                this.lineNumber = e3.lineNumber();
                this.lineSource = e3.lineSource();
                throw e3;
            }
        } catch (Throwable th2) {
            if (this.state == State.COMPLETED) {
                ScriptableObject.putProperty(scriptableMakeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
            } else {
                this.state = State.SUSPENDED_YIELD;
            }
            throw th2;
        }
    }

    @Override
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(GENERATOR_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        if (!(scriptable2 instanceof ES6Generator)) {
            throw IdScriptableObject.incompatibleCallError(idFunctionObject);
        }
        ES6Generator eS6Generator = (ES6Generator) scriptable2;
        Object obj = objArr.length >= 1 ? objArr[0] : Undefined.instance;
        if (iMethodId == 1) {
            return eS6Generator.delegee == null ? eS6Generator.resumeLocal(context, scriptable, obj) : eS6Generator.resumeDelegee(context, scriptable, obj);
        }
        if (iMethodId == 2) {
            return eS6Generator.delegee == null ? eS6Generator.resumeAbruptLocal(context, scriptable, 2, obj) : eS6Generator.resumeDelegeeReturn(context, scriptable, obj);
        }
        if (iMethodId == 3) {
            return eS6Generator.delegee == null ? eS6Generator.resumeAbruptLocal(context, scriptable, 1, obj) : eS6Generator.resumeDelegeeThrow(context, scriptable, obj);
        }
        if (iMethodId == 4) {
            return scriptable2;
        }
        throw new IllegalArgumentException(String.valueOf(iMethodId));
    }

    @Override
    public int findPrototypeId(Symbol symbol) {
        return SymbolKey.ITERATOR.equals(symbol) ? 4 : 0;
    }

    @Override
    public String getClassName() {
        return "Generator";
    }

    @Override
    public void initPrototypeId(int i) {
        String str;
        if (i == 4) {
            initPrototypeMethod(GENERATOR_TAG, i, SymbolKey.ITERATOR, "[Symbol.iterator]", 0);
            return;
        }
        if (i == 1) {
            str = ES6Iterator.NEXT_METHOD;
        } else if (i == 2) {
            str = "return";
        } else {
            if (i != 3) {
                throw new IllegalArgumentException(String.valueOf(i));
            }
            str = "throw";
        }
        initPrototypeMethod(GENERATOR_TAG, i, str, 1);
    }

    @Override
    public int findPrototypeId(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 4) {
            str2 = ES6Iterator.NEXT_METHOD;
            i = 1;
        } else if (length == 5) {
            str2 = "throw";
            i = 3;
        } else if (length == 6) {
            str2 = "return";
            i = 2;
        } else {
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    public ES6Generator(Scriptable scriptable, NativeFunction nativeFunction, Object obj) {
        this.function = nativeFunction;
        this.savedState = obj;
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        setParentScope(topLevelScope);
        setPrototype((ES6Generator) ScriptableObject.getTopScopeValue(topLevelScope, GENERATOR_TAG));
    }
}
