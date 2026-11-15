package org.mozilla.javascript.tools.debugger;

import com.just.agentweb.DefaultWebClient;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.mozilla.javascript.Callable;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ContextAction;
import org.mozilla.javascript.ContextFactory;
import org.mozilla.javascript.ImporterTopLevel;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.NativeCall;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.SecurityUtilities;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.debug.DebugFrame;
import org.mozilla.javascript.debug.DebuggableObject;
import org.mozilla.javascript.debug.DebuggableScript;
import org.mozilla.javascript.debug.Debugger;

public class Dim {
    public static final int BREAK = 4;
    public static final int EXIT = 5;
    public static final int GO = 3;
    private static final int IPROXY_COMPILE_SCRIPT = 2;
    private static final int IPROXY_DEBUG = 0;
    private static final int IPROXY_EVAL_SCRIPT = 3;
    private static final int IPROXY_LISTEN = 1;
    private static final int IPROXY_OBJECT_IDS = 7;
    private static final int IPROXY_OBJECT_PROPERTY = 6;
    private static final int IPROXY_OBJECT_TO_STRING = 5;
    private static final int IPROXY_STRING_IS_COMPILABLE = 4;
    public static final int STEP_INTO = 1;
    public static final int STEP_OUT = 2;
    public static final int STEP_OVER = 0;
    private boolean breakFlag;
    private boolean breakOnEnter;
    private boolean breakOnExceptions;
    private boolean breakOnReturn;
    private GuiCallback callback;
    private ContextFactory contextFactory;
    private StackFrame evalFrame;
    private String evalRequest;
    private String evalResult;
    private boolean insideInterruptLoop;
    private volatile ContextData interruptedContextData;
    private b listener;
    private ScopeProvider scopeProvider;
    private SourceProvider sourceProvider;
    private int frameIndex = -1;
    private Object monitor = new Object();
    private Object eventThreadMonitor = new Object();
    private volatile int returnValue = -1;
    private final Map<String, SourceInfo> urlToSourceInfo = Collections.synchronizedMap(new HashMap());
    private final Map<String, FunctionSource> functionNames = Collections.synchronizedMap(new HashMap());
    private final Map<DebuggableScript, FunctionSource> functionToSource = Collections.synchronizedMap(new HashMap());

    public static class ContextData {
        private boolean breakNextLine;
        private boolean eventThreadFlag;
        private Throwable lastProcessedException;
        private ObjArray frameStack = new ObjArray();
        private int stopAtFrameDepth = -1;

        public static ContextData get(Context context) {
            return (ContextData) context.getDebuggerContextData();
        }

        public void popFrame() {
            this.frameStack.pop();
        }

        public void pushFrame(StackFrame stackFrame) {
            this.frameStack.push(stackFrame);
        }

        public int frameCount() {
            return this.frameStack.size();
        }

        public StackFrame getFrame(int i) {
            return (StackFrame) this.frameStack.get((this.frameStack.size() - i) - 1);
        }
    }

    public static class FunctionSource {
        private int firstLine;
        private String name;
        private SourceInfo sourceInfo;

        public int firstLine() {
            return this.firstLine;
        }

        public String name() {
            return this.name;
        }

        public SourceInfo sourceInfo() {
            return this.sourceInfo;
        }

        private FunctionSource(SourceInfo sourceInfo, int i, String str) {
            if (str == null) {
                throw new IllegalArgumentException();
            }
            this.sourceInfo = sourceInfo;
            this.firstLine = i;
            this.name = str;
        }
    }

    public static class SourceInfo {
        private static final boolean[] EMPTY_BOOLEAN_ARRAY = new boolean[0];
        private boolean[] breakableLines;
        private boolean[] breakpoints;
        private FunctionSource[] functionSources;
        private String source;
        private String url;

        public void copyBreakpointsFrom(SourceInfo sourceInfo) {
            int length = sourceInfo.breakpoints.length;
            boolean[] zArr = this.breakpoints;
            if (length > zArr.length) {
                length = zArr.length;
            }
            for (int i = 0; i != length; i++) {
                if (sourceInfo.breakpoints[i]) {
                    this.breakpoints[i] = true;
                }
            }
        }

        public boolean breakableLine(int i) {
            boolean[] zArr = this.breakableLines;
            return i < zArr.length && zArr[i];
        }

        public boolean breakpoint(int i) {
            if (!breakableLine(i)) {
                throw new IllegalArgumentException(String.valueOf(i));
            }
            boolean[] zArr = this.breakpoints;
            return i < zArr.length && zArr[i];
        }

        public FunctionSource functionSource(int i) {
            return this.functionSources[i];
        }

        public int functionSourcesTop() {
            return this.functionSources.length;
        }

        public void removeAllBreakpoints() {
            synchronized (this.breakpoints) {
                int i = 0;
                while (true) {
                    try {
                        boolean[] zArr = this.breakpoints;
                        if (i != zArr.length) {
                            zArr[i] = false;
                            i++;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        public String source() {
            return this.source;
        }

        public String url() {
            return this.url;
        }

        private SourceInfo(String str, DebuggableScript[] debuggableScriptArr, String str2) {
            this.source = str;
            this.url = str2;
            int length = debuggableScriptArr.length;
            int[][] iArr = new int[length][];
            for (int i = 0; i != length; i++) {
                iArr[i] = debuggableScriptArr[i].getLineNumbers();
            }
            int[] iArr2 = new int[length];
            int i2 = 0;
            int i3 = 0;
            int i4 = -1;
            while (true) {
                if (i2 == length) {
                    break;
                }
                int[] iArr3 = iArr[i2];
                if (iArr3 == null || iArr3.length == 0) {
                    iArr2[i2] = -1;
                } else {
                    int i5 = iArr3[0];
                    int i6 = i5;
                    for (int i7 = 1; i7 != iArr3.length; i7++) {
                        int i8 = iArr3[i7];
                        if (i8 < i5) {
                            i5 = i8;
                        } else if (i8 > i6) {
                            i6 = i8;
                        }
                    }
                    iArr2[i2] = i5;
                    if (i3 > i4) {
                        i3 = i5;
                    } else {
                        i3 = i5 < i3 ? i5 : i3;
                        if (i6 > i4) {
                        }
                    }
                    i4 = i6;
                }
                i2++;
            }
            if (i3 > i4) {
                boolean[] zArr = EMPTY_BOOLEAN_ARRAY;
                this.breakableLines = zArr;
                this.breakpoints = zArr;
            } else {
                if (i3 < 0) {
                    throw new IllegalStateException(String.valueOf(i3));
                }
                int i9 = i4 + 1;
                this.breakableLines = new boolean[i9];
                this.breakpoints = new boolean[i9];
                for (int i10 = 0; i10 != length; i10++) {
                    int[] iArr4 = iArr[i10];
                    if (iArr4 != null && iArr4.length != 0) {
                        for (int i11 = 0; i11 != iArr4.length; i11++) {
                            this.breakableLines[iArr4[i11]] = true;
                        }
                    }
                }
            }
            this.functionSources = new FunctionSource[length];
            for (int i12 = 0; i12 != length; i12++) {
                String functionName = debuggableScriptArr[i12].getFunctionName();
                if (functionName == null) {
                    functionName = "";
                }
                this.functionSources[i12] = new FunctionSource(this, iArr2[i12], functionName);
            }
        }

        public boolean breakpoint(int i, boolean z) {
            boolean z2;
            if (breakableLine(i)) {
                synchronized (this.breakpoints) {
                    try {
                        boolean[] zArr = this.breakpoints;
                        if (zArr[i] != z) {
                            zArr[i] = z;
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return z2;
            }
            throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    public static class StackFrame implements DebugFrame {
        private boolean[] breakpoints;
        private ContextData contextData;
        private Dim dim;
        private FunctionSource fsource;
        private int lineNumber;
        private Scriptable scope;
        private Scriptable thisObj;

        public ContextData contextData() {
            return this.contextData;
        }

        public String getFunctionName() {
            return this.fsource.name();
        }

        public int getLineNumber() {
            return this.lineNumber;
        }

        public String getUrl() {
            return this.fsource.sourceInfo().url();
        }

        @Override
        public void onDebuggerStatement(Context context) {
            this.dim.handleBreakpointHit(this, context);
        }

        @Override
        public void onEnter(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
            this.contextData.pushFrame(this);
            this.scope = scriptable;
            this.thisObj = scriptable2;
            if (this.dim.breakOnEnter) {
                this.dim.handleBreakpointHit(this, context);
            }
        }

        @Override
        public void onExceptionThrown(Context context, Throwable th) {
            this.dim.handleExceptionThrown(context, th, this);
        }

        @Override
        public void onExit(Context context, boolean z, Object obj) {
            if (this.dim.breakOnReturn && !z) {
                this.dim.handleBreakpointHit(this, context);
            }
            this.contextData.popFrame();
        }

        @Override
        public void onLineChange(Context context, int i) {
            this.lineNumber = i;
            if (!this.breakpoints[i] && !this.dim.breakFlag) {
                boolean z = this.contextData.breakNextLine;
                if (z && this.contextData.stopAtFrameDepth >= 0) {
                    z = this.contextData.frameCount() <= this.contextData.stopAtFrameDepth;
                }
                if (!z) {
                    return;
                }
                this.contextData.stopAtFrameDepth = -1;
                this.contextData.breakNextLine = false;
            }
            this.dim.handleBreakpointHit(this, context);
        }

        public Object scope() {
            return this.scope;
        }

        public SourceInfo sourceInfo() {
            return this.fsource.sourceInfo();
        }

        public Object thisObj() {
            return this.thisObj;
        }

        private StackFrame(Context context, Dim dim, FunctionSource functionSource) {
            this.dim = dim;
            this.contextData = ContextData.get(context);
            this.fsource = functionSource;
            this.breakpoints = functionSource.sourceInfo().breakpoints;
            this.lineNumber = functionSource.firstLine();
        }
    }

    public static class b implements ContextAction, ContextFactory.Listener, Debugger {
        public Dim b;
        public int c;
        public String d;
        public String e;
        public Object f;
        public Object g;
        public boolean h;
        public String i;
        public Object j;
        public Object[] k;

        @Override
        public void contextCreated(Context context) {
            if (this.c != 1) {
                Kit.codeBug();
            }
            context.setDebugger(new b(this.b, 0), new ContextData());
            context.setGeneratingDebug(true);
            context.setOptimizationLevel(-1);
        }

        @Override
        public void contextReleased(Context context) {
            if (this.c != 1) {
                Kit.codeBug();
            }
        }

        @Override
        public DebugFrame getFrame(Context context, DebuggableScript debuggableScript) {
            if (this.c != 0) {
                Kit.codeBug();
            }
            FunctionSource functionSource = this.b.getFunctionSource(debuggableScript);
            if (functionSource == null) {
                return null;
            }
            return new StackFrame(context, this.b, functionSource);
        }

        @Override
        public void handleCompilationDone(Context context, DebuggableScript debuggableScript, String str) {
            if (this.c != 0) {
                Kit.codeBug();
            }
            if (debuggableScript.isTopLevel()) {
                this.b.registerTopScript(debuggableScript, str);
            }
        }

        public final void j() {
            this.b.contextFactory.call(this);
        }

        @Override
        public Object run(Context context) {
            switch (this.c) {
                case 2:
                    context.compileString(this.e, this.d, 1, null);
                    return null;
                case 3:
                    Scriptable scope = this.b.scopeProvider != null ? this.b.scopeProvider.getScope() : null;
                    if (scope == null) {
                        scope = new ImporterTopLevel(context);
                    }
                    context.evaluateString(scope, this.e, this.d, 1, null);
                    return null;
                case 4:
                    this.h = context.stringIsCompilableUnit(this.e);
                    return null;
                case 5:
                    Object obj = this.f;
                    if (obj == Undefined.instance) {
                        this.i = "undefined";
                    } else if (obj == null) {
                        this.i = "null";
                    } else if (obj instanceof NativeCall) {
                        this.i = "[object Call]";
                    } else {
                        this.i = Context.toString(obj);
                    }
                    return null;
                case 6:
                    this.j = this.b.getObjectPropertyImpl(context, this.f, this.g);
                    return null;
                case 7:
                    this.k = this.b.getObjectIdsImpl(context, this.f);
                    return null;
                default:
                    throw Kit.codeBug();
            }
        }

        public b(Dim dim, int i) {
            this.b = dim;
            this.c = i;
        }
    }

    private static void collectFunctions_r(DebuggableScript debuggableScript, ObjArray objArray) {
        objArray.add(debuggableScript);
        for (int i = 0; i != debuggableScript.getFunctionCount(); i++) {
            collectFunctions_r(debuggableScript.getFunction(i), objArray);
        }
    }

    private static String do_eval(Context context, StackFrame stackFrame, String str) {
        String message = "";
        Debugger debugger = context.getDebugger();
        Object debuggerContextData = context.getDebuggerContextData();
        int optimizationLevel = context.getOptimizationLevel();
        context.setDebugger(null, null);
        context.setOptimizationLevel(-1);
        context.setGeneratingDebug(false);
        try {
            try {
                Object objCall = ((Callable) context.compileString(str, "", 0, null)).call(context, stackFrame.scope, stackFrame.thisObj, ScriptRuntime.emptyArgs);
                if (objCall != Undefined.instance) {
                    message = ScriptRuntime.toString(objCall);
                }
            } catch (Exception e) {
                message = e.getMessage();
            }
            context.setGeneratingDebug(true);
            context.setOptimizationLevel(optimizationLevel);
            context.setDebugger(debugger, debuggerContextData);
            return message == null ? "null" : message;
        } catch (Throwable th) {
            context.setGeneratingDebug(true);
            context.setOptimizationLevel(optimizationLevel);
            context.setDebugger(debugger, debuggerContextData);
            throw th;
        }
    }

    private FunctionSource functionSource(DebuggableScript debuggableScript) {
        return this.functionToSource.get(debuggableScript);
    }

    private static DebuggableScript[] getAllFunctions(DebuggableScript debuggableScript) {
        ObjArray objArray = new ObjArray();
        collectFunctions_r(debuggableScript, objArray);
        DebuggableScript[] debuggableScriptArr = new DebuggableScript[objArray.size()];
        objArray.toArray(debuggableScriptArr);
        return debuggableScriptArr;
    }

    public FunctionSource getFunctionSource(DebuggableScript debuggableScript) {
        String strLoadSource;
        FunctionSource functionSource = functionSource(debuggableScript);
        if (functionSource != null) {
            return functionSource;
        }
        String normalizedUrl = getNormalizedUrl(debuggableScript);
        if (sourceInfo(normalizedUrl) != null || debuggableScript.isGeneratedScript() || (strLoadSource = loadSource(normalizedUrl)) == null) {
            return functionSource;
        }
        DebuggableScript debuggableScript2 = debuggableScript;
        while (true) {
            DebuggableScript parent = debuggableScript2.getParent();
            if (parent == null) {
                registerTopScript(debuggableScript2, strLoadSource);
                return functionSource(debuggableScript);
            }
            debuggableScript2 = parent;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003d  */
    private String getNormalizedUrl(DebuggableScript debuggableScript) {
        String str;
        String sourceName = debuggableScript.getSourceName();
        if (sourceName == null) {
            return "<stdin>";
        }
        int length = sourceName.length();
        StringBuilder sb = null;
        int i = 0;
        while (true) {
            int iIndexOf = sourceName.indexOf(35, i);
            if (iIndexOf < 0) {
                break;
            }
            int i2 = iIndexOf + 1;
            int i3 = i2;
            while (i3 != length) {
                char cCharAt = sourceName.charAt(i3);
                if ('0' > cCharAt || cCharAt > '9') {
                    break;
                }
                i3++;
            }
            if (i3 != i2) {
                str = "(eval)";
                if ("(eval)".regionMatches(0, sourceName, i3, 6)) {
                    i = i3 + 6;
                } else {
                    str = null;
                }
            } else {
                str = null;
            }
            if (str == null) {
                break;
            }
            if (sb == null) {
                sb = new StringBuilder();
                sb.append(sourceName.substring(0, iIndexOf));
            }
            sb.append(str);
        }
        if (sb == null) {
            return sourceName;
        }
        if (i != length) {
            sb.append(sourceName.substring(i));
        }
        return sb.toString();
    }

    public Object[] getObjectIdsImpl(Context context, Object obj) {
        if (!(obj instanceof Scriptable) || obj == Undefined.instance) {
            return Context.emptyArgs;
        }
        Scriptable scriptable = (Scriptable) obj;
        Object[] allIds = scriptable instanceof DebuggableObject ? ((DebuggableObject) scriptable).getAllIds() : scriptable.getIds();
        Scriptable prototype = scriptable.getPrototype();
        Scriptable parentScope = scriptable.getParentScope();
        char c = 1;
        int i = prototype != null ? 1 : 0;
        if (parentScope != null) {
            i++;
        }
        if (i == 0) {
            return allIds;
        }
        Object[] objArr = new Object[allIds.length + i];
        System.arraycopy(allIds, 0, objArr, i, allIds.length);
        if (prototype != null) {
            objArr[0] = "__proto__";
        } else {
            c = 0;
        }
        if (parentScope != null) {
            objArr[c] = "__parent__";
        }
        return objArr;
    }

    public Object getObjectPropertyImpl(Context context, Object obj, Object obj2) {
        Scriptable scriptable = (Scriptable) obj;
        if (!(obj2 instanceof String)) {
            Object property = ScriptableObject.getProperty(scriptable, ((Integer) obj2).intValue());
            return property == Scriptable.NOT_FOUND ? Undefined.instance : property;
        }
        String str = (String) obj2;
        if (str.equals("this")) {
            return scriptable;
        }
        if (str.equals("__proto__")) {
            return scriptable.getPrototype();
        }
        if (str.equals("__parent__")) {
            return scriptable.getParentScope();
        }
        Object property2 = ScriptableObject.getProperty(scriptable, str);
        return property2 == Scriptable.NOT_FOUND ? Undefined.instance : property2;
    }

    public void handleBreakpointHit(StackFrame stackFrame, Context context) {
        this.breakFlag = false;
        interrupted(context, stackFrame, null);
    }

    public void handleExceptionThrown(Context context, Throwable th, StackFrame stackFrame) {
        if (this.breakOnExceptions) {
            ContextData contextData = stackFrame.contextData();
            if (contextData.lastProcessedException != th) {
                interrupted(context, stackFrame, th);
                contextData.lastProcessedException = th;
            }
        }
    }

    private void interrupted(Context context, StackFrame stackFrame, Throwable th) {
        int i;
        ContextData contextData = stackFrame.contextData();
        boolean zIsGuiEventThread = this.callback.isGuiEventThread();
        contextData.eventThreadFlag = zIsGuiEventThread;
        synchronized (this.eventThreadMonitor) {
            try {
                if (!zIsGuiEventThread) {
                    while (this.interruptedContextData != null) {
                        try {
                            this.eventThreadMonitor.wait();
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                } else if (this.interruptedContextData != null) {
                    return;
                }
                this.interruptedContextData = contextData;
                if (this.interruptedContextData == null) {
                    Kit.codeBug();
                }
                try {
                    this.frameIndex = contextData.frameCount() - 1;
                    String string = Thread.currentThread().toString();
                    String string2 = th == null ? null : th.toString();
                    if (zIsGuiEventThread) {
                        this.returnValue = -1;
                        this.callback.enterInterrupt(stackFrame, string, string2);
                        while (this.returnValue == -1) {
                            try {
                                this.callback.dispatchNextGuiEvent();
                            } catch (InterruptedException unused2) {
                            }
                        }
                        i = this.returnValue;
                    } else {
                        synchronized (this.monitor) {
                            try {
                                if (this.insideInterruptLoop) {
                                    Kit.codeBug();
                                }
                                this.insideInterruptLoop = true;
                                this.evalRequest = null;
                                this.returnValue = -1;
                                this.callback.enterInterrupt(stackFrame, string, string2);
                                while (true) {
                                    try {
                                        try {
                                            this.monitor.wait();
                                            String str = this.evalRequest;
                                            if (str != null) {
                                                this.evalResult = null;
                                                try {
                                                    this.evalResult = do_eval(context, this.evalFrame, str);
                                                    this.evalRequest = null;
                                                    this.evalFrame = null;
                                                    this.monitor.notify();
                                                } catch (Throwable th2) {
                                                    this.evalRequest = null;
                                                    this.evalFrame = null;
                                                    this.monitor.notify();
                                                    throw th2;
                                                }
                                            } else if (this.returnValue != -1) {
                                                break;
                                            }
                                        } catch (Throwable th3) {
                                            this.insideInterruptLoop = false;
                                            throw th3;
                                        }
                                    } catch (InterruptedException unused3) {
                                        Thread.currentThread().interrupt();
                                        i = -1;
                                    }
                                }
                                i = this.returnValue;
                                this.insideInterruptLoop = false;
                            } catch (Throwable th4) {
                                throw th4;
                            }
                        }
                    }
                    if (i == 0) {
                        contextData.breakNextLine = true;
                        contextData.stopAtFrameDepth = contextData.frameCount();
                    } else if (i == 1) {
                        contextData.breakNextLine = true;
                        contextData.stopAtFrameDepth = -1;
                    } else if (i == 2 && contextData.frameCount() > 1) {
                        contextData.breakNextLine = true;
                        contextData.stopAtFrameDepth = contextData.frameCount() - 1;
                    }
                    synchronized (this.eventThreadMonitor) {
                        this.interruptedContextData = null;
                        this.eventThreadMonitor.notifyAll();
                    }
                } catch (Throwable th5) {
                    synchronized (this.eventThreadMonitor) {
                        this.interruptedContextData = null;
                        this.eventThreadMonitor.notifyAll();
                        throw th5;
                    }
                }
            } catch (Throwable th6) {
                throw th6;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0044 A[Catch: IOException -> 0x0041, SecurityException -> 0x0056, TryCatch #1 {SecurityException -> 0x0056, blocks: (B:8:0x0016, B:10:0x001e, B:12:0x0026, B:14:0x003b, B:17:0x0044, B:19:0x004f), top: B:39:0x0016 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x004f A[Catch: IOException -> 0x0041, SecurityException -> 0x0056, TRY_LEAVE, TryCatch #1 {SecurityException -> 0x0056, blocks: (B:8:0x0016, B:10:0x001e, B:12:0x0026, B:14:0x003b, B:17:0x0044, B:19:0x004f), top: B:39:0x0016 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0056 A[Catch: IOException -> 0x0041, PHI: r0 r5
      0x0056: PHI (r0v3 java.lang.String) = (r0v0 java.lang.String), (r0v4 java.lang.String) binds: [B:18:0x004d, B:36:0x0056] A[DONT_GENERATE, DONT_INLINE]
      0x0056: PHI (r5v4 java.lang.String) = (r5v1 java.lang.String), (r5v8 java.lang.String) binds: [B:18:0x004d, B:36:0x0056] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #2 {IOException -> 0x0041, blocks: (B:6:0x0010, B:8:0x0016, B:10:0x001e, B:12:0x0026, B:14:0x003b, B:30:0x00ad, B:32:0x00b2, B:33:0x00b5, B:17:0x0044, B:19:0x004f, B:28:0x009b, B:21:0x0056, B:23:0x005e, B:24:0x0070, B:26:0x0078, B:27:0x008a, B:29:0x00a4), top: B:40:0x0010, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x005e A[Catch: IOException -> 0x0041, TryCatch #2 {IOException -> 0x0041, blocks: (B:6:0x0010, B:8:0x0016, B:10:0x001e, B:12:0x0026, B:14:0x003b, B:30:0x00ad, B:32:0x00b2, B:33:0x00b5, B:17:0x0044, B:19:0x004f, B:28:0x009b, B:21:0x0056, B:23:0x005e, B:24:0x0070, B:26:0x0078, B:27:0x008a, B:29:0x00a4), top: B:40:0x0010, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0070 A[Catch: IOException -> 0x0041, TryCatch #2 {IOException -> 0x0041, blocks: (B:6:0x0010, B:8:0x0016, B:10:0x001e, B:12:0x0026, B:14:0x003b, B:30:0x00ad, B:32:0x00b2, B:33:0x00b5, B:17:0x0044, B:19:0x004f, B:28:0x009b, B:21:0x0056, B:23:0x005e, B:24:0x0070, B:26:0x0078, B:27:0x008a, B:29:0x00a4), top: B:40:0x0010, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0078 A[Catch: IOException -> 0x0041, TryCatch #2 {IOException -> 0x0041, blocks: (B:6:0x0010, B:8:0x0016, B:10:0x001e, B:12:0x0026, B:14:0x003b, B:30:0x00ad, B:32:0x00b2, B:33:0x00b5, B:17:0x0044, B:19:0x004f, B:28:0x009b, B:21:0x0056, B:23:0x005e, B:24:0x0070, B:26:0x0078, B:27:0x008a, B:29:0x00a4), top: B:40:0x0010, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x008a A[Catch: IOException -> 0x0041, TryCatch #2 {IOException -> 0x0041, blocks: (B:6:0x0010, B:8:0x0016, B:10:0x001e, B:12:0x0026, B:14:0x003b, B:30:0x00ad, B:32:0x00b2, B:33:0x00b5, B:17:0x0044, B:19:0x004f, B:28:0x009b, B:21:0x0056, B:23:0x005e, B:24:0x0070, B:26:0x0078, B:27:0x008a, B:29:0x00a4), top: B:40:0x0010, inners: #0 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:23:0x005e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:26:0x0078, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:27:0x008a, please report this as an issue */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x005e -> B:28:0x009b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0078 -> B:28:0x009b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008a -> B:28:0x009b). Please report as a decompilation issue!!! */
    private String loadSource(String str) {
        File file;
        InputStream fileInputStream;
        String systemProperty;
        int iIndexOf = str.indexOf(35);
        if (iIndexOf >= 0) {
            str = str.substring(0, iIndexOf);
        }
        String reader = null;
        try {
            if (str.indexOf(58) < 0) {
                try {
                    if (!str.startsWith("~/") || (systemProperty = SecurityUtilities.getSystemProperty("user.home")) == null) {
                        file = new File(str);
                        if (file.exists()) {
                            fileInputStream = new FileInputStream(file);
                        } else {
                            if (str.startsWith("//")) {
                                str = "http:" + str;
                            } else if (str.startsWith("/")) {
                                str = "http://127.0.0.1" + str;
                            } else {
                                str = DefaultWebClient.HTTP_SCHEME + str;
                            }
                            fileInputStream = new URL(str).openStream();
                        }
                    } else {
                        File file2 = new File(new File(systemProperty), str.substring(2));
                        if (file2.exists()) {
                            fileInputStream = new FileInputStream(file2);
                        } else {
                            file = new File(str);
                            if (file.exists()) {
                                fileInputStream = new FileInputStream(file);
                            } else {
                                if (str.startsWith("//")) {
                                    str = "http:" + str;
                                } else if (str.startsWith("/")) {
                                    str = "http://127.0.0.1" + str;
                                } else {
                                    str = DefaultWebClient.HTTP_SCHEME + str;
                                }
                                fileInputStream = new URL(str).openStream();
                            }
                        }
                    }
                } catch (SecurityException unused) {
                }
            } else {
                fileInputStream = new URL(str).openStream();
            }
            try {
                reader = Kit.readReader(new InputStreamReader(fileInputStream));
            } finally {
                fileInputStream.close();
            }
        } catch (IOException e) {
            System.err.println("Failed to load source from " + str + ": " + e);
        }
        return reader;
    }

    public void registerTopScript(DebuggableScript debuggableScript, String str) {
        int i;
        String source;
        if (!debuggableScript.isTopLevel()) {
            throw new IllegalArgumentException();
        }
        String normalizedUrl = getNormalizedUrl(debuggableScript);
        DebuggableScript[] allFunctions = getAllFunctions(debuggableScript);
        SourceProvider sourceProvider = this.sourceProvider;
        if (sourceProvider != null && (source = sourceProvider.getSource(debuggableScript)) != null) {
            str = source;
        }
        SourceInfo sourceInfo = new SourceInfo(str, allFunctions, normalizedUrl);
        synchronized (this.urlToSourceInfo) {
            try {
                SourceInfo sourceInfo2 = this.urlToSourceInfo.get(normalizedUrl);
                if (sourceInfo2 != null) {
                    sourceInfo.copyBreakpointsFrom(sourceInfo2);
                }
                this.urlToSourceInfo.put(normalizedUrl, sourceInfo);
                for (int i2 = 0; i2 != sourceInfo.functionSourcesTop(); i2++) {
                    FunctionSource functionSource = sourceInfo.functionSource(i2);
                    String strName = functionSource.name();
                    if (strName.length() != 0) {
                        this.functionNames.put(strName, functionSource);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.functionToSource) {
            for (i = 0; i != allFunctions.length; i++) {
                try {
                    this.functionToSource.put(allFunctions[i], sourceInfo.functionSource(i));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.callback.updateSourceText(sourceInfo);
    }

    public void attachTo(ContextFactory contextFactory) {
        detach();
        this.contextFactory = contextFactory;
        b bVar = new b(1);
        this.listener = bVar;
        contextFactory.addListener(bVar);
    }

    public void clearAllBreakpoints() {
        Iterator<SourceInfo> it = this.urlToSourceInfo.values().iterator();
        while (it.hasNext()) {
            it.next().removeAllBreakpoints();
        }
    }

    public void compileScript(String str, String str2) {
        b bVar = new b(2);
        bVar.d = str;
        bVar.e = str2;
        bVar.j();
    }

    public void contextSwitch(int i) {
        this.frameIndex = i;
    }

    public ContextData currentContextData() {
        return this.interruptedContextData;
    }

    public void detach() {
        b bVar = this.listener;
        if (bVar != null) {
            this.contextFactory.removeListener(bVar);
            this.contextFactory = null;
            this.listener = null;
        }
    }

    public void dispose() {
        detach();
    }

    public String eval(String str) {
        ContextData contextDataCurrentContextData;
        String str2 = "undefined";
        if (str == null || (contextDataCurrentContextData = currentContextData()) == null || this.frameIndex >= contextDataCurrentContextData.frameCount()) {
            return "undefined";
        }
        StackFrame frame = contextDataCurrentContextData.getFrame(this.frameIndex);
        if (contextDataCurrentContextData.eventThreadFlag) {
            return do_eval(Context.getCurrentContext(), frame, str);
        }
        synchronized (this.monitor) {
            try {
                if (this.insideInterruptLoop) {
                    this.evalRequest = str;
                    this.evalFrame = frame;
                    this.monitor.notify();
                    do {
                        try {
                            this.monitor.wait();
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                        }
                    } while (this.evalRequest != null);
                    str2 = this.evalResult;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return str2;
    }

    public void evalScript(String str, String str2) {
        b bVar = new b(3);
        bVar.d = str;
        bVar.e = str2;
        bVar.j();
    }

    public String[] functionNames() {
        String[] strArr;
        synchronized (this.urlToSourceInfo) {
            strArr = (String[]) this.functionNames.keySet().toArray(new String[this.functionNames.size()]);
        }
        return strArr;
    }

    public FunctionSource functionSourceByName(String str) {
        return this.functionNames.get(str);
    }

    public Object[] getObjectIds(Object obj) {
        b bVar = new b(7);
        bVar.f = obj;
        bVar.j();
        return bVar.k;
    }

    public Object getObjectProperty(Object obj, Object obj2) {
        b bVar = new b(6);
        bVar.f = obj;
        bVar.g = obj2;
        bVar.j();
        return bVar.j;
    }

    public void go() {
        synchronized (this.monitor) {
            this.returnValue = 3;
            this.monitor.notifyAll();
        }
    }

    public String objectToString(Object obj) {
        b bVar = new b(5);
        bVar.f = obj;
        bVar.j();
        return bVar.i;
    }

    public void setBreak() {
        this.breakFlag = true;
    }

    public void setBreakOnEnter(boolean z) {
        this.breakOnEnter = z;
    }

    public void setBreakOnExceptions(boolean z) {
        this.breakOnExceptions = z;
    }

    public void setBreakOnReturn(boolean z) {
        this.breakOnReturn = z;
    }

    public void setGuiCallback(GuiCallback guiCallback) {
        this.callback = guiCallback;
    }

    public void setReturnValue(int i) {
        synchronized (this.monitor) {
            this.returnValue = i;
            this.monitor.notify();
        }
    }

    public void setScopeProvider(ScopeProvider scopeProvider) {
        this.scopeProvider = scopeProvider;
    }

    public void setSourceProvider(SourceProvider sourceProvider) {
        this.sourceProvider = sourceProvider;
    }

    public SourceInfo sourceInfo(String str) {
        return this.urlToSourceInfo.get(str);
    }

    public boolean stringIsCompilableUnit(String str) {
        b bVar = new b(4);
        bVar.e = str;
        bVar.j();
        return bVar.h;
    }
}
