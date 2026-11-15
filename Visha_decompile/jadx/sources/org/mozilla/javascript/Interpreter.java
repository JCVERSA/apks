package org.mozilla.javascript;

import defpackage.hx4;
import io.antmedia.rtmp_client.RtmpClient;
import java.io.PrintStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.debug.DebugFrame;
import org.mozilla.javascript.debug.Debugger;

public final class Interpreter extends hx4 implements Evaluator {
    static final int EXCEPTION_HANDLER_SLOT = 2;
    static final int EXCEPTION_LOCAL_SLOT = 4;
    static final int EXCEPTION_SCOPE_SLOT = 5;
    static final int EXCEPTION_SLOT_SIZE = 6;
    static final int EXCEPTION_TRY_END_SLOT = 1;
    static final int EXCEPTION_TRY_START_SLOT = 0;
    static final int EXCEPTION_TYPE_SLOT = 3;
    InterpreterData itsData;

    public static class CallFrame implements Cloneable, Serializable {
        private static final long serialVersionUID = -2843792508994958978L;
        final DebugFrame debuggerFrame;
        final int emptyStackTop;
        final InterpretedFunction fnOrScript;
        int frameIndex;
        boolean frozen;
        final InterpreterData idata;
        boolean isContinuationsTopFrame;
        final int localShift;
        CallFrame parentFrame;
        int pc;
        int pcPrevBranch;
        int pcSourceLineStart;
        Object result;
        double resultDbl;
        double[] sDbl;
        int savedCallOp;
        int savedStackTop;
        Scriptable scope;
        Object[] stack;
        int[] stackAttributes;
        final Scriptable thisObj;
        Object throwable;
        final boolean useActivation;
        final CallFrame varSource;

        public CallFrame(Context context, Scriptable scriptable, InterpretedFunction interpretedFunction, CallFrame callFrame) {
            InterpreterData interpreterData = interpretedFunction.idata;
            this.idata = interpreterData;
            Debugger debugger = context.debugger;
            DebugFrame frame = debugger != null ? debugger.getFrame(context, interpreterData) : null;
            this.debuggerFrame = frame;
            this.useActivation = frame != null || interpreterData.itsNeedsActivation;
            int i = interpreterData.itsMaxVars;
            int i2 = (interpreterData.itsMaxLocals + i) - 1;
            this.emptyStackTop = i2;
            this.fnOrScript = interpretedFunction;
            this.varSource = this;
            this.localShift = i;
            this.thisObj = scriptable;
            this.parentFrame = callFrame;
            int i3 = callFrame != null ? callFrame.frameIndex + 1 : 0;
            this.frameIndex = i3;
            if (i3 > context.getMaximumInterpreterStackDepth()) {
                throw Context.reportRuntimeError("Exceeded maximum stack depth");
            }
            this.result = Undefined.instance;
            this.pcSourceLineStart = interpreterData.firstLinePC;
            this.savedStackTop = i2;
        }

        public static Boolean d(CallFrame callFrame, CallFrame callFrame2, c cVar) {
            while (callFrame != callFrame2) {
                if (callFrame == null || callFrame2 == null) {
                    return Boolean.FALSE;
                }
                if (!callFrame.f(callFrame2, cVar)) {
                    return Boolean.FALSE;
                }
                callFrame = callFrame.parentFrame;
                callFrame2 = callFrame2.parentFrame;
            }
            return Boolean.TRUE;
        }

        public CallFrame cloneFrozen() {
            if (!this.frozen) {
                Kit.codeBug();
            }
            try {
                CallFrame callFrame = (CallFrame) clone();
                callFrame.stack = (Object[]) this.stack.clone();
                callFrame.stackAttributes = (int[]) this.stackAttributes.clone();
                callFrame.sDbl = (double[]) this.sDbl.clone();
                callFrame.frozen = false;
                return callFrame;
            } catch (CloneNotSupportedException unused) {
                throw new IllegalStateException();
            }
        }

        public final Boolean e(final Object obj) {
            return (Boolean) c.q(new java.util.function.Function() {
                @Override
                public final Object apply(Object obj2) {
                    return this.a.i(obj, (c) obj2);
                }
            });
        }

        public boolean equals(final Object obj) {
            if (!(obj instanceof CallFrame)) {
                return false;
            }
            Context contextEnter = Context.enter();
            try {
                if (ScriptRuntime.hasTopCall(contextEnter)) {
                    return e(obj).booleanValue();
                }
                Scriptable topLevelScope = ScriptableObject.getTopLevelScope(this.scope);
                return ((Boolean) ScriptRuntime.doTopCall(new Callable() {
                    @Override
                    public final Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
                        return this.b.h(obj, context, scriptable, scriptable2, objArr);
                    }
                }, contextEnter, topLevelScope, topLevelScope, ScriptRuntime.emptyArgs, g())).booleanValue();
            } finally {
                Context.exit();
            }
        }

        public final boolean f(CallFrame callFrame, c cVar) {
            return this.frameIndex == callFrame.frameIndex && this.pc == callFrame.pc && Interpreter.compareIdata(this.idata, callFrame.idata) && cVar.b(this.varSource.stack, callFrame.varSource.stack) && Arrays.equals(this.varSource.sDbl, callFrame.varSource.sDbl) && cVar.b(this.thisObj, callFrame.thisObj) && cVar.b(this.fnOrScript, callFrame.fnOrScript) && cVar.b(this.scope, callFrame.scope);
        }

        public final boolean g() {
            while (true) {
                CallFrame callFrame = this.parentFrame;
                if (callFrame == null) {
                    return this.idata.isStrict;
                }
                this = callFrame;
            }
        }

        public final Object h(Object obj, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
            return e(obj);
        }

        public int hashCode() {
            int iIcodeHashCode = 0;
            int i = 0;
            while (true) {
                iIcodeHashCode = (((iIcodeHashCode * 31) + this.pc) * 31) + this.idata.icodeHashCode();
                this = this.parentFrame;
                if (this == null) {
                    break;
                }
                int i2 = i + 1;
                if (i >= 8) {
                    break;
                }
                i = i2;
            }
            return iIcodeHashCode;
        }

        public final Boolean i(Object obj, c cVar) {
            return d(this, (CallFrame) obj, cVar);
        }

        public void initializeArgs(Context context, Scriptable scriptable, Object[] objArr, double[] dArr, int i, int i2) {
            if (this.useActivation) {
                if (dArr != null) {
                    objArr = Interpreter.getArgsArray(objArr, dArr, i, i2);
                }
                dArr = null;
                i = 0;
            }
            if (this.idata.itsFunctionType != 0) {
                Scriptable parentScope = this.fnOrScript.getParentScope();
                this.scope = parentScope;
                if (this.useActivation) {
                    InterpreterData interpreterData = this.idata;
                    if (interpreterData.itsFunctionType == 4) {
                        this.scope = ScriptRuntime.createArrowFunctionActivation(this.fnOrScript, parentScope, objArr, interpreterData.isStrict);
                    } else {
                        this.scope = ScriptRuntime.createFunctionActivation(this.fnOrScript, parentScope, objArr, interpreterData.isStrict);
                    }
                }
            } else {
                this.scope = scriptable;
                InterpretedFunction interpretedFunction = this.fnOrScript;
                ScriptRuntime.initScript(interpretedFunction, this.thisObj, context, scriptable, interpretedFunction.idata.evalScriptFlag);
            }
            InterpreterData interpreterData2 = this.idata;
            if (interpreterData2.itsNestedFunctions != null) {
                if (interpreterData2.itsFunctionType != 0 && !interpreterData2.itsNeedsActivation) {
                    Kit.codeBug();
                }
                int i3 = 0;
                while (true) {
                    InterpreterData[] interpreterDataArr = this.idata.itsNestedFunctions;
                    if (i3 >= interpreterDataArr.length) {
                        break;
                    }
                    if (interpreterDataArr[i3].itsFunctionType == 1) {
                        Interpreter.initFunction(context, this.scope, this.fnOrScript, i3);
                    }
                    i3++;
                }
            }
            InterpreterData interpreterData3 = this.idata;
            int i4 = interpreterData3.itsMaxFrameArray;
            if (i4 != this.emptyStackTop + interpreterData3.itsMaxStack + 1) {
                Kit.codeBug();
            }
            this.stack = new Object[i4];
            this.stackAttributes = new int[i4];
            this.sDbl = new double[i4];
            int paramAndVarCount = this.idata.getParamAndVarCount();
            for (int i5 = 0; i5 < paramAndVarCount; i5++) {
                if (this.idata.getParamOrVarConst(i5)) {
                    this.stackAttributes[i5] = 13;
                }
            }
            int i6 = this.idata.argCount;
            if (i6 <= i2) {
                i2 = i6;
            }
            System.arraycopy(objArr, i, this.stack, 0, i2);
            if (dArr != null) {
                System.arraycopy(dArr, i, this.sDbl, 0, i2);
            }
            while (i2 != this.idata.itsMaxVars) {
                this.stack[i2] = Undefined.instance;
                i2++;
            }
        }
    }

    public static final class ContinuationJump implements Serializable {
        private static final long serialVersionUID = 7687739156004308247L;
        CallFrame branchFrame;
        CallFrame capturedFrame;
        Object result;
        double resultDbl;

        public ContinuationJump(NativeContinuation nativeContinuation, CallFrame callFrame) {
            CallFrame callFrame2 = (CallFrame) nativeContinuation.getImplementation();
            this.capturedFrame = callFrame2;
            if (callFrame2 == null || callFrame == null) {
                this.branchFrame = null;
                return;
            }
            int i = callFrame2.frameIndex - callFrame.frameIndex;
            if (i != 0) {
                if (i < 0) {
                    i = -i;
                } else {
                    callFrame = callFrame2;
                    callFrame2 = callFrame;
                }
                do {
                    callFrame = callFrame.parentFrame;
                    i--;
                } while (i != 0);
                if (callFrame.frameIndex != callFrame2.frameIndex) {
                    Kit.codeBug();
                }
                callFrame = callFrame2;
                callFrame2 = callFrame;
            }
            while (callFrame2 != callFrame && callFrame2 != null) {
                callFrame2 = callFrame2.parentFrame;
                callFrame = callFrame.parentFrame;
            }
            this.branchFrame = callFrame2;
            if (callFrame2 == null || callFrame2.frozen) {
                return;
            }
            Kit.codeBug();
        }
    }

    public static class a {
        public int a;
        public Object b;
        public RuntimeException c;

        public a(int i, Object obj) {
            this.a = i;
            this.b = obj;
        }
    }

    private static void addInstructionCount(Context context, CallFrame callFrame, int i) {
        int i2 = context.instructionCount + (callFrame.pc - callFrame.pcPrevBranch) + i;
        context.instructionCount = i2;
        if (i2 > context.instructionThreshold) {
            context.observeInstructionCount(i2);
            context.instructionCount = 0;
        }
    }

    private static int bytecodeSpan(int i) {
        if (i != -66 && i != -65 && i != -54 && i != -23) {
            if (i == -21) {
                return 5;
            }
            if (i != 50) {
                if (i != 57) {
                    if (i != 73 && i != 5 && i != 6 && i != 7) {
                        switch (i) {
                            case -63:
                            case -62:
                                break;
                            case -61:
                                break;
                            default:
                                switch (i) {
                                    case -49:
                                    case -48:
                                        break;
                                    case -47:
                                        return 5;
                                    case -46:
                                        return 3;
                                    case -45:
                                        return 2;
                                    default:
                                        switch (i) {
                                            case -40:
                                                return 5;
                                            case -39:
                                                return 3;
                                            case -38:
                                                return 2;
                                            default:
                                                switch (i) {
                                                    case -28:
                                                        return 5;
                                                    case RtmpClient.RtmpIOException.RTMP_SANITY_FAIL:
                                                    case RtmpClient.RtmpIOException.RTMP_GENERIC_ERROR:
                                                        return 3;
                                                    default:
                                                        switch (i) {
                                                            case -11:
                                                            case -10:
                                                            case -9:
                                                            case -8:
                                                            case -7:
                                                                return 2;
                                                            case -6:
                                                                break;
                                                            default:
                                                                if (hx4.validBytecode(i)) {
                                                                    return 1;
                                                                }
                                                                throw Kit.codeBug();
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                    }
                }
                return 2;
            }
        }
        return 3;
    }

    public static NativeContinuation captureContinuation(Context context) {
        Object obj = context.lastInterpreterFrame;
        if (obj == null || !(obj instanceof CallFrame)) {
            throw new IllegalStateException("Interpreter frames not found");
        }
        return captureContinuation(context, (CallFrame) obj, true);
    }

    private static CallFrame captureFrameForGenerator(CallFrame callFrame) {
        callFrame.frozen = true;
        CallFrame callFrameCloneFrozen = callFrame.cloneFrozen();
        callFrame.frozen = false;
        callFrameCloneFrozen.parentFrame = null;
        callFrameCloneFrozen.frameIndex = 0;
        return callFrameCloneFrozen;
    }

    public static boolean compareIdata(InterpreterData interpreterData, InterpreterData interpreterData2) {
        return interpreterData == interpreterData2 || Objects.equals(getEncodedSource(interpreterData), getEncodedSource(interpreterData2));
    }

    private static void doAdd(Object[] objArr, double[] dArr, int i, Context context) {
        boolean z;
        double d;
        int i2 = i + 1;
        Object obj = objArr[i2];
        Object obj2 = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            d = dArr[i2];
            if (obj2 == uniqueTag) {
                dArr[i] = dArr[i] + d;
                return;
            }
            z = true;
        } else {
            if (obj2 != uniqueTag) {
                if ((obj2 instanceof Scriptable) || (obj instanceof Scriptable)) {
                    objArr[i] = ScriptRuntime.add(obj2, obj, context);
                    return;
                }
                if (obj2 instanceof CharSequence) {
                    if (obj instanceof CharSequence) {
                        objArr[i] = new ConsString((CharSequence) obj2, (CharSequence) obj);
                        return;
                    } else {
                        objArr[i] = new ConsString((CharSequence) obj2, ScriptRuntime.toCharSequence(obj));
                        return;
                    }
                }
                if (obj instanceof CharSequence) {
                    objArr[i] = new ConsString(ScriptRuntime.toCharSequence(obj2), (CharSequence) obj);
                    return;
                }
                double dDoubleValue = obj2 instanceof Number ? ((Number) obj2).doubleValue() : ScriptRuntime.toNumber(obj2);
                double dDoubleValue2 = obj instanceof Number ? ((Number) obj).doubleValue() : ScriptRuntime.toNumber(obj);
                objArr[i] = uniqueTag;
                dArr[i] = dDoubleValue + dDoubleValue2;
                return;
            }
            obj2 = obj;
            z = false;
            d = dArr[i];
        }
        if (obj2 instanceof Scriptable) {
            Object objWrapNumber = ScriptRuntime.wrapNumber(d);
            if (!z) {
                Object obj3 = obj2;
                obj2 = objWrapNumber;
                objWrapNumber = obj3;
            }
            objArr[i] = ScriptRuntime.add(obj2, objWrapNumber, context);
            return;
        }
        if (!(obj2 instanceof CharSequence)) {
            double dDoubleValue3 = obj2 instanceof Number ? ((Number) obj2).doubleValue() : ScriptRuntime.toNumber(obj2);
            objArr[i] = uniqueTag;
            dArr[i] = dDoubleValue3 + d;
        } else {
            String strNumberToString = ScriptRuntime.numberToString(d, 10);
            if (z) {
                objArr[i] = new ConsString((CharSequence) obj2, strNumberToString);
            } else {
                objArr[i] = new ConsString(strNumberToString, (CharSequence) obj2);
            }
        }
    }

    private static int doArithmetic(CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2) {
        double dStack_double = stack_double(callFrame, i2);
        int i3 = i2 - 1;
        double dStack_double2 = stack_double(callFrame, i3);
        objArr[i3] = UniqueTag.DOUBLE_MARK;
        switch (i) {
            case 22:
                dStack_double2 -= dStack_double;
                break;
            case 23:
                dStack_double2 *= dStack_double;
                break;
            case 24:
                dStack_double2 /= dStack_double;
                break;
            case 25:
                dStack_double2 %= dStack_double;
                break;
        }
        dArr[i3] = dStack_double2;
        return i3;
    }

    private static int doBitOp(CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2) {
        int iStack_int32 = stack_int32(callFrame, i2 - 1);
        int iStack_int33 = stack_int32(callFrame, i2);
        int i3 = i2 - 1;
        objArr[i3] = UniqueTag.DOUBLE_MARK;
        if (i == 18) {
            iStack_int32 <<= iStack_int33;
        } else if (i != 19) {
            switch (i) {
                case 9:
                    iStack_int32 |= iStack_int33;
                    break;
                case 10:
                    iStack_int32 ^= iStack_int33;
                    break;
                case 11:
                    iStack_int32 &= iStack_int33;
                    break;
            }
        } else {
            iStack_int32 >>= iStack_int33;
        }
        dArr[i3] = iStack_int32;
        return i3;
    }

    private static int doCallSpecial(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i, byte[] bArr, int i2) {
        int i3;
        int i4 = callFrame.pc;
        int i5 = bArr[i4] & 255;
        boolean z = bArr[i4 + 1] != 0;
        int index = getIndex(bArr, i4 + 2);
        if (z) {
            i3 = i - i2;
            Object objWrapNumber = objArr[i3];
            if (objWrapNumber == UniqueTag.DOUBLE_MARK) {
                objWrapNumber = ScriptRuntime.wrapNumber(dArr[i3]);
            }
            objArr[i3] = ScriptRuntime.newSpecial(context, objWrapNumber, getArgsArray(objArr, dArr, i3 + 1, i2), callFrame.scope, i5);
        } else {
            i3 = i - (i2 + 1);
            objArr[i3] = ScriptRuntime.callSpecial(context, (Callable) objArr[i3], (Scriptable) objArr[i3 + 1], getArgsArray(objArr, dArr, i3 + 2, i2), callFrame.scope, callFrame.thisObj, i5, callFrame.idata.itsSourceFile, index);
        }
        callFrame.pc += 4;
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002a  */
    private static int doCompare(CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2) {
        boolean zCmp_LT;
        double d;
        double dStack_double;
        int i3 = i2 - 1;
        Object obj = objArr[i2];
        Object obj2 = objArr[i3];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj != uniqueTag) {
            if (obj2 == uniqueTag) {
                double number = ScriptRuntime.toNumber(obj);
                double d2 = dArr[i3];
                d = number;
                dStack_double = d2;
            } else {
                switch (i) {
                    case 14:
                        zCmp_LT = ScriptRuntime.cmp_LT(obj2, obj);
                        break;
                    case 15:
                        zCmp_LT = ScriptRuntime.cmp_LE(obj2, obj);
                        break;
                    case 16:
                        zCmp_LT = ScriptRuntime.cmp_LT(obj, obj2);
                        break;
                    case 17:
                        zCmp_LT = ScriptRuntime.cmp_LE(obj, obj2);
                        break;
                    default:
                        throw Kit.codeBug();
                }
            }
            objArr[i3] = ScriptRuntime.wrapBoolean(zCmp_LT);
            return i3;
        }
        d = dArr[i2];
        dStack_double = stack_double(callFrame, i3);
        zCmp_LT = false;
        switch (i) {
            case 14:
                if (dStack_double < d) {
                    zCmp_LT = true;
                }
                objArr[i3] = ScriptRuntime.wrapBoolean(zCmp_LT);
                return i3;
            case 15:
                if (dStack_double <= d) {
                    zCmp_LT = true;
                }
                objArr[i3] = ScriptRuntime.wrapBoolean(zCmp_LT);
                return i3;
            case 16:
                if (dStack_double > d) {
                    zCmp_LT = true;
                }
                objArr[i3] = ScriptRuntime.wrapBoolean(zCmp_LT);
                return i3;
            case 17:
                if (dStack_double >= d) {
                    zCmp_LT = true;
                }
                objArr[i3] = ScriptRuntime.wrapBoolean(zCmp_LT);
                return i3;
            default:
                throw Kit.codeBug();
        }
    }

    private static int doDelName(Context context, CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2) {
        Object objWrapNumber = objArr[i2];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (objWrapNumber == uniqueTag) {
            objWrapNumber = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        int i3 = i2 - 1;
        Object objWrapNumber2 = objArr[i3];
        if (objWrapNumber2 == uniqueTag) {
            objWrapNumber2 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.delete(objWrapNumber2, objWrapNumber, context, callFrame.scope, i == 0);
        return i3;
    }

    private static int doElemIncDec(Context context, CallFrame callFrame, byte[] bArr, Object[] objArr, double[] dArr, int i) {
        Object objWrapNumber = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (objWrapNumber == uniqueTag) {
            objWrapNumber = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i2 = i - 1;
        Object objWrapNumber2 = objArr[i2];
        if (objWrapNumber2 == uniqueTag) {
            objWrapNumber2 = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        objArr[i2] = ScriptRuntime.elemIncrDecr(objWrapNumber2, objWrapNumber, context, callFrame.scope, bArr[callFrame.pc]);
        callFrame.pc++;
        return i2;
    }

    private static boolean doEquals(Object[] objArr, double[] dArr, int i) {
        int i2 = i + 1;
        Object obj = objArr[i2];
        Object obj2 = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj != uniqueTag) {
            return obj2 == uniqueTag ? ScriptRuntime.eqNumber(dArr[i], obj) : ScriptRuntime.eq(obj2, obj);
        }
        if (obj2 == uniqueTag) {
            return dArr[i] == dArr[i2];
        }
        return ScriptRuntime.eqNumber(dArr[i2], obj2);
    }

    private static int doGetElem(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i) {
        int i2 = i - 1;
        Object objWrapNumber = objArr[i2];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (objWrapNumber == uniqueTag) {
            objWrapNumber = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        Object obj = objArr[i];
        objArr[i2] = obj != uniqueTag ? ScriptRuntime.getObjectElem(objWrapNumber, obj, context, callFrame.scope) : ScriptRuntime.getObjectIndex(objWrapNumber, dArr[i], context, callFrame.scope);
        return i2;
    }

    private static int doGetVar(CallFrame callFrame, Object[] objArr, double[] dArr, int i, Object[] objArr2, double[] dArr2, int i2) {
        int i3 = i + 1;
        if (callFrame.useActivation) {
            String str = callFrame.idata.argNames[i2];
            Scriptable scriptable = callFrame.scope;
            objArr[i3] = scriptable.get(str, scriptable);
        } else {
            objArr[i3] = objArr2[i2];
            dArr[i3] = dArr2[i2];
        }
        return i3;
    }

    private static int doInOrInstanceof(Context context, int i, Object[] objArr, double[] dArr, int i2) {
        Object objWrapNumber = objArr[i2];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (objWrapNumber == uniqueTag) {
            objWrapNumber = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        int i3 = i2 - 1;
        Object objWrapNumber2 = objArr[i3];
        if (objWrapNumber2 == uniqueTag) {
            objWrapNumber2 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.wrapBoolean(i == 52 ? ScriptRuntime.in(objWrapNumber2, objWrapNumber, context) : ScriptRuntime.instanceOf(objWrapNumber2, objWrapNumber, context));
        return i3;
    }

    private static int doRefMember(Context context, Object[] objArr, double[] dArr, int i, int i2) {
        Object objWrapNumber = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (objWrapNumber == uniqueTag) {
            objWrapNumber = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i3 = i - 1;
        Object objWrapNumber2 = objArr[i3];
        if (objWrapNumber2 == uniqueTag) {
            objWrapNumber2 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.memberRef(objWrapNumber2, objWrapNumber, context, i2);
        return i3;
    }

    private static int doRefNsMember(Context context, Object[] objArr, double[] dArr, int i, int i2) {
        Object objWrapNumber = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (objWrapNumber == uniqueTag) {
            objWrapNumber = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i3 = i - 1;
        Object objWrapNumber2 = objArr[i3];
        if (objWrapNumber2 == uniqueTag) {
            objWrapNumber2 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        int i4 = i - 2;
        Object objWrapNumber3 = objArr[i4];
        if (objWrapNumber3 == uniqueTag) {
            objWrapNumber3 = ScriptRuntime.wrapNumber(dArr[i4]);
        }
        objArr[i4] = ScriptRuntime.memberRef(objWrapNumber3, objWrapNumber2, objWrapNumber, context, i2);
        return i4;
    }

    private static int doRefNsName(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i, int i2) {
        Object objWrapNumber = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (objWrapNumber == uniqueTag) {
            objWrapNumber = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i3 = i - 1;
        Object objWrapNumber2 = objArr[i3];
        if (objWrapNumber2 == uniqueTag) {
            objWrapNumber2 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.nameRef(objWrapNumber2, objWrapNumber, context, callFrame.scope, i2);
        return i3;
    }

    private static int doSetConstVar(CallFrame callFrame, Object[] objArr, double[] dArr, int i, Object[] objArr2, double[] dArr2, int[] iArr, int i2) {
        if (callFrame.useActivation) {
            Object objWrapNumber = objArr[i];
            if (objWrapNumber == UniqueTag.DOUBLE_MARK) {
                objWrapNumber = ScriptRuntime.wrapNumber(dArr[i]);
            }
            String str = callFrame.idata.argNames[i2];
            Scriptable scriptable = callFrame.scope;
            if (!(scriptable instanceof ConstProperties)) {
                throw Kit.codeBug();
            }
            ((ConstProperties) scriptable).putConst(str, scriptable, objWrapNumber);
        } else {
            int i3 = iArr[i2];
            if ((i3 & 1) == 0) {
                throw Context.reportRuntimeError1("msg.var.redecl", callFrame.idata.argNames[i2]);
            }
            if ((i3 & 8) != 0) {
                objArr2[i2] = objArr[i];
                iArr[i2] = i3 & (-9);
                dArr2[i2] = dArr[i];
            }
        }
        return i;
    }

    private static int doSetElem(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i) {
        int i2 = i - 2;
        Object objWrapNumber = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (objWrapNumber == uniqueTag) {
            objWrapNumber = ScriptRuntime.wrapNumber(dArr[i]);
        }
        Object obj = objWrapNumber;
        Object objWrapNumber2 = objArr[i2];
        if (objWrapNumber2 == uniqueTag) {
            objWrapNumber2 = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        Object obj2 = objWrapNumber2;
        int i3 = i - 1;
        Object obj3 = objArr[i3];
        objArr[i2] = obj3 != uniqueTag ? ScriptRuntime.setObjectElem(obj2, obj3, obj, context, callFrame.scope) : ScriptRuntime.setObjectIndex(obj2, dArr[i3], obj, context, callFrame.scope);
        return i2;
    }

    private static int doSetVar(CallFrame callFrame, Object[] objArr, double[] dArr, int i, Object[] objArr2, double[] dArr2, int[] iArr, int i2) {
        if (callFrame.useActivation) {
            Object objWrapNumber = objArr[i];
            if (objWrapNumber == UniqueTag.DOUBLE_MARK) {
                objWrapNumber = ScriptRuntime.wrapNumber(dArr[i]);
            }
            String str = callFrame.idata.argNames[i2];
            Scriptable scriptable = callFrame.scope;
            scriptable.put(str, scriptable, objWrapNumber);
        } else if ((iArr[i2] & 1) == 0) {
            objArr2[i2] = objArr[i];
            dArr2[i2] = dArr[i];
        }
        return i;
    }

    private static boolean doShallowEquals(Object[] objArr, double[] dArr, int i) {
        double dDoubleValue;
        double dDoubleValue2;
        int i2 = i + 1;
        Object obj = objArr[i2];
        Object obj2 = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            dDoubleValue2 = dArr[i2];
            if (obj2 == uniqueTag) {
                dDoubleValue = dArr[i];
            } else {
                if (!(obj2 instanceof Number)) {
                    return false;
                }
                dDoubleValue = ((Number) obj2).doubleValue();
            }
        } else {
            if (obj2 != uniqueTag) {
                return ScriptRuntime.shallowEq(obj2, obj);
            }
            dDoubleValue = dArr[i];
            if (!(obj instanceof Number)) {
                return false;
            }
            dDoubleValue2 = ((Number) obj).doubleValue();
        }
        return dDoubleValue == dDoubleValue2;
    }

    private static int doVarIncDec(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i, Object[] objArr2, double[] dArr2, int[] iArr, int i2) {
        int i3 = i + 1;
        InterpreterData interpreterData = callFrame.idata;
        byte b = interpreterData.itsICode[callFrame.pc];
        if (callFrame.useActivation) {
            objArr[i3] = ScriptRuntime.nameIncrDecr(callFrame.scope, interpreterData.argNames[i2], context, b);
        } else {
            Object obj = objArr2[i2];
            UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
            double number = obj == uniqueTag ? dArr2[i2] : ScriptRuntime.toNumber(obj);
            double d = (b & 1) == 0 ? 1.0d + number : number - 1.0d;
            boolean z = (b & 2) != 0;
            if ((iArr[i2] & 1) == 0) {
                if (obj != uniqueTag) {
                    objArr2[i2] = uniqueTag;
                }
                dArr2[i2] = d;
                objArr[i3] = uniqueTag;
                if (!z) {
                    number = d;
                }
                dArr[i3] = number;
            } else if (!z || obj == uniqueTag) {
                objArr[i3] = uniqueTag;
                if (!z) {
                    number = d;
                }
                dArr[i3] = number;
            } else {
                objArr[i3] = obj;
            }
        }
        callFrame.pc++;
        return i3;
    }

    public static void dumpICode(InterpreterData interpreterData) {
    }

    private static void enterFrame(Context context, CallFrame callFrame, Object[] objArr, boolean z) {
        CallFrame callFrame2;
        boolean z2 = callFrame.idata.itsNeedsActivation;
        boolean z3 = callFrame.debuggerFrame != null;
        if (z2 || z3) {
            Scriptable parentScope = callFrame.scope;
            if (parentScope == null) {
                Kit.codeBug();
            } else if (z) {
                while (parentScope instanceof NativeWith) {
                    parentScope = parentScope.getParentScope();
                    if (parentScope == null || ((callFrame2 = callFrame.parentFrame) != null && callFrame2.scope == parentScope)) {
                        Kit.codeBug();
                        break;
                    }
                }
            }
            if (z3) {
                callFrame.debuggerFrame.onEnter(context, parentScope, callFrame.thisObj, objArr);
            }
            if (z2) {
                ScriptRuntime.enterActivationFunction(context, parentScope);
            }
        }
    }

    private static void exitFrame(Context context, CallFrame callFrame, Object obj) {
        if (callFrame.idata.itsNeedsActivation) {
            ScriptRuntime.exitActivationFunction(context);
        }
        DebugFrame debugFrame = callFrame.debuggerFrame;
        if (debugFrame != null) {
            try {
                if (obj instanceof Throwable) {
                    debugFrame.onExit(context, true, obj);
                    return;
                }
                ContinuationJump continuationJump = (ContinuationJump) obj;
                Object objWrapNumber = continuationJump == null ? callFrame.result : continuationJump.result;
                if (objWrapNumber == UniqueTag.DOUBLE_MARK) {
                    objWrapNumber = ScriptRuntime.wrapNumber(continuationJump == null ? callFrame.resultDbl : continuationJump.resultDbl);
                }
                callFrame.debuggerFrame.onExit(context, false, objWrapNumber);
            } catch (Throwable th) {
                PrintStream printStream = System.err;
                printStream.println("RHINO USAGE WARNING: onExit terminated with exception");
                th.printStackTrace(printStream);
            }
        }
    }

    private static Object freezeGenerator(Context context, CallFrame callFrame, int i, a aVar, boolean z) {
        if (aVar.a == 2) {
            throw ScriptRuntime.typeError0("msg.yield.closing");
        }
        callFrame.frozen = true;
        callFrame.result = callFrame.stack[i];
        callFrame.resultDbl = callFrame.sDbl[i];
        callFrame.savedStackTop = i;
        callFrame.pc--;
        ScriptRuntime.exitActivationFunction(context);
        Object objWrapNumber = callFrame.result;
        if (objWrapNumber == UniqueTag.DOUBLE_MARK) {
            objWrapNumber = ScriptRuntime.wrapNumber(callFrame.resultDbl);
        }
        return z ? new ES6Generator.YieldStarResult(objWrapNumber) : objWrapNumber;
    }

    public static Object[] getArgsArray(Object[] objArr, double[] dArr, int i, int i2) {
        if (i2 == 0) {
            return ScriptRuntime.emptyArgs;
        }
        Object[] objArr2 = new Object[i2];
        int i3 = 0;
        while (i3 != i2) {
            Object objWrapNumber = objArr[i];
            if (objWrapNumber == UniqueTag.DOUBLE_MARK) {
                objWrapNumber = ScriptRuntime.wrapNumber(dArr[i]);
            }
            objArr2[i3] = objWrapNumber;
            i3++;
            i++;
        }
        return objArr2;
    }

    public static String getEncodedSource(InterpreterData interpreterData) {
        String str = interpreterData.encodedSource;
        if (str == null) {
            return null;
        }
        return str.substring(interpreterData.encodedSourceStart, interpreterData.encodedSourceEnd);
    }

    private static int getExceptionHandler(CallFrame callFrame, boolean z) {
        int[] iArr = callFrame.idata.itsExceptionTable;
        int i = -1;
        if (iArr == null) {
            return -1;
        }
        int i2 = callFrame.pc - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 != iArr.length; i5 += 6) {
            int i6 = iArr[i5];
            int i7 = iArr[i5 + 1];
            if (i6 <= i2 && i2 < i7 && (!z || iArr[i5 + 3] == 1)) {
                if (i < 0) {
                    i = i5;
                    i4 = i6;
                    i3 = i7;
                } else if (i3 >= i7) {
                    if (i4 > i6) {
                        Kit.codeBug();
                    }
                    if (i3 == i7) {
                        Kit.codeBug();
                    }
                    i = i5;
                    i4 = i6;
                    i3 = i7;
                }
            }
        }
        return i;
    }

    private static int getIndex(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    private static int getInt(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | (bArr[i] << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static int[] getLineNumbers(InterpreterData interpreterData) {
        UintMap uintMap = new UintMap();
        byte[] bArr = interpreterData.itsICode;
        int length = bArr.length;
        int i = 0;
        while (i != length) {
            byte b = bArr[i];
            int iBytecodeSpan = bytecodeSpan(b);
            if (b == -26) {
                if (iBytecodeSpan != 3) {
                    Kit.codeBug();
                }
                uintMap.put(getIndex(bArr, i + 1), 0);
            }
            i += iBytecodeSpan;
        }
        return uintMap.getKeys();
    }

    private static int getShort(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | (bArr[i] << 8);
    }

    private static CallFrame initFrame(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr, double[] dArr, int i, int i2, InterpretedFunction interpretedFunction, CallFrame callFrame) {
        CallFrame callFrame2 = new CallFrame(context, scriptable2, interpretedFunction, callFrame);
        callFrame2.initializeArgs(context, scriptable, objArr, dArr, i, i2);
        enterFrame(context, callFrame2, objArr, false);
        return callFrame2;
    }

    private static CallFrame initFrameForApplyOrCall(Context context, CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2, int i3, Scriptable scriptable, IdFunctionObject idFunctionObject, InterpretedFunction interpretedFunction) {
        Scriptable topCallScope;
        CallFrame callFrame2 = callFrame;
        if (i != 0) {
            int i4 = i2 + 2;
            Object objWrapNumber = objArr[i4];
            if (objWrapNumber == UniqueTag.DOUBLE_MARK) {
                objWrapNumber = ScriptRuntime.wrapNumber(dArr[i4]);
            }
            topCallScope = ScriptRuntime.toObjectOrNull(context, objWrapNumber, callFrame2.scope);
        } else {
            topCallScope = null;
        }
        if (topCallScope == null) {
            topCallScope = ScriptRuntime.getTopCallScope(context);
        }
        if (i3 == -55) {
            exitFrame(context, callFrame, null);
            callFrame2 = callFrame2.parentFrame;
        } else {
            callFrame2.savedStackTop = i2;
            callFrame2.savedCallOp = i3;
        }
        CallFrame callFrame3 = callFrame2;
        if (BaseFunction.isApply(idFunctionObject)) {
            Object[] applyArguments = i < 2 ? ScriptRuntime.emptyArgs : ScriptRuntime.getApplyArguments(context, objArr[i2 + 3]);
            return initFrame(context, scriptable, topCallScope, applyArguments, null, 0, applyArguments.length, interpretedFunction, callFrame3);
        }
        for (int i5 = 1; i5 < i; i5++) {
            int i6 = i2 + 1 + i5;
            int i7 = i2 + 2 + i5;
            objArr[i6] = objArr[i7];
            dArr[i6] = dArr[i7];
        }
        return initFrame(context, scriptable, topCallScope, objArr, dArr, i2 + 2, i < 2 ? 0 : i - 1, interpretedFunction, callFrame3);
    }

    private static CallFrame initFrameForNoSuchMethod(Context context, CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2, int i3, Scriptable scriptable, Scriptable scriptable2, ScriptRuntime.b bVar, InterpretedFunction interpretedFunction) {
        CallFrame callFrame2;
        int i4 = i2 + 2;
        Object[] objArr2 = new Object[i];
        int i5 = 0;
        while (i5 < i) {
            Object objWrapNumber = objArr[i4];
            if (objWrapNumber == UniqueTag.DOUBLE_MARK) {
                objWrapNumber = ScriptRuntime.wrapNumber(dArr[i4]);
            }
            objArr2[i5] = objWrapNumber;
            i5++;
            i4++;
        }
        Object[] objArr3 = {bVar.b, context.newArray(scriptable2, objArr2)};
        if (i3 == -55) {
            CallFrame callFrame3 = callFrame.parentFrame;
            exitFrame(context, callFrame, null);
            callFrame2 = callFrame3;
        } else {
            callFrame2 = callFrame;
        }
        CallFrame callFrameInitFrame = initFrame(context, scriptable2, scriptable, objArr3, null, 0, 2, interpretedFunction, callFrame2);
        if (i3 != -55) {
            callFrame.savedStackTop = i2;
            callFrame.savedCallOp = i3;
        }
        return callFrameInitFrame;
    }

    public static void initFunction(Context context, Scriptable scriptable, InterpretedFunction interpretedFunction, int i) {
        InterpretedFunction interpretedFunctionCreateFunction = InterpretedFunction.createFunction(context, scriptable, interpretedFunction, i);
        ScriptRuntime.initFunction(context, scriptable, interpretedFunctionCreateFunction, interpretedFunctionCreateFunction.idata.itsFunctionType, interpretedFunction.idata.evalScriptFlag);
    }

    public static Object interpret(InterpretedFunction interpretedFunction, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!ScriptRuntime.hasTopCall(context)) {
            Kit.codeBug();
        }
        Object obj = context.interpreterSecurityDomain;
        Object obj2 = interpretedFunction.securityDomain;
        if (obj != obj2) {
            context.interpreterSecurityDomain = obj2;
            try {
                return interpretedFunction.securityController.callWithDomain(obj2, context, interpretedFunction, scriptable, scriptable2, objArr);
            } finally {
                context.interpreterSecurityDomain = obj;
            }
        }
        CallFrame callFrameInitFrame = initFrame(context, scriptable, scriptable2, objArr, null, 0, objArr.length, interpretedFunction, null);
        callFrameInitFrame.isContinuationsTopFrame = context.isContinuationsTopCall;
        context.isContinuationsTopCall = false;
        return interpretLoop(context, callFrameInitFrame, null);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 73661. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    private static java.lang.Object interpretLoop(org.mozilla.javascript.Context r47, org.mozilla.javascript.Interpreter.CallFrame r48, java.lang.Object r49) {
        /*
            Method dump skipped, instruction units count: 7366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Interpreter.interpretLoop(org.mozilla.javascript.Context, org.mozilla.javascript.Interpreter$CallFrame, java.lang.Object):java.lang.Object");
    }

    private static CallFrame processThrowable(Context context, Object obj, CallFrame callFrame, int i, boolean z) {
        if (i >= 0) {
            if (callFrame.frozen) {
                callFrame = callFrame.cloneFrozen();
            }
            int[] iArr = callFrame.idata.itsExceptionTable;
            int i2 = iArr[i + 2];
            callFrame.pc = i2;
            if (z) {
                callFrame.pcPrevBranch = i2;
            }
            callFrame.savedStackTop = callFrame.emptyStackTop;
            int i3 = callFrame.localShift;
            int i4 = iArr[i + 5] + i3;
            int i5 = i3 + iArr[i + 4];
            Object[] objArr = callFrame.stack;
            callFrame.scope = (Scriptable) objArr[i4];
            objArr[i5] = obj;
        } else {
            ContinuationJump continuationJump = (ContinuationJump) obj;
            if (continuationJump.branchFrame != callFrame) {
                Kit.codeBug();
            }
            if (continuationJump.capturedFrame == null) {
                Kit.codeBug();
            }
            CallFrame callFrame2 = continuationJump.capturedFrame;
            int i6 = callFrame2.frameIndex + 1;
            CallFrame callFrame3 = continuationJump.branchFrame;
            if (callFrame3 != null) {
                i6 -= callFrame3.frameIndex;
            }
            CallFrame[] callFrameArr = null;
            int i7 = 0;
            for (int i8 = 0; i8 != i6; i8++) {
                if (!callFrame2.frozen) {
                    Kit.codeBug();
                }
                if (callFrame2.useActivation) {
                    if (callFrameArr == null) {
                        callFrameArr = new CallFrame[i6 - i8];
                    }
                    callFrameArr[i7] = callFrame2;
                    i7++;
                }
                callFrame2 = callFrame2.parentFrame;
            }
            while (i7 != 0) {
                i7--;
                enterFrame(context, callFrameArr[i7], ScriptRuntime.emptyArgs, true);
            }
            callFrame = continuationJump.capturedFrame.cloneFrozen();
            setCallResult(callFrame, continuationJump.result, continuationJump.resultDbl);
        }
        callFrame.throwable = null;
        return callFrame;
    }

    public static Object restartContinuation(NativeContinuation nativeContinuation, Context context, Scriptable scriptable, Object[] objArr) {
        if (!ScriptRuntime.hasTopCall(context)) {
            return ScriptRuntime.doTopCall(nativeContinuation, context, scriptable, null, objArr, context.isTopLevelStrict);
        }
        Object obj = objArr.length == 0 ? Undefined.instance : objArr[0];
        if (((CallFrame) nativeContinuation.getImplementation()) == null) {
            return obj;
        }
        ContinuationJump continuationJump = new ContinuationJump(nativeContinuation, null);
        continuationJump.result = obj;
        return interpretLoop(context, null, continuationJump);
    }

    public static Object resumeGenerator(Context context, Scriptable scriptable, int i, Object obj, Object obj2) {
        CallFrame callFrame = (CallFrame) obj;
        a aVar = new a(i, obj2);
        if (i == 2) {
            try {
                return interpretLoop(context, callFrame, aVar);
            } catch (RuntimeException e) {
                if (e == obj2) {
                    return Undefined.instance;
                }
                throw e;
            }
        }
        Object objInterpretLoop = interpretLoop(context, callFrame, aVar);
        RuntimeException runtimeException = aVar.c;
        if (runtimeException == null) {
            return objInterpretLoop;
        }
        throw runtimeException;
    }

    private static void setCallResult(CallFrame callFrame, Object obj, double d) {
        int i = callFrame.savedCallOp;
        if (i == 38) {
            Object[] objArr = callFrame.stack;
            int i2 = callFrame.savedStackTop;
            objArr[i2] = obj;
            callFrame.sDbl[i2] = d;
        } else if (i != 30) {
            Kit.codeBug();
        } else if (obj instanceof Scriptable) {
            callFrame.stack[callFrame.savedStackTop] = obj;
        }
        callFrame.savedCallOp = 0;
    }

    private static boolean stack_boolean(CallFrame callFrame, int i) {
        Object obj = callFrame.stack[i];
        if (Boolean.TRUE.equals(obj)) {
            return true;
        }
        if (Boolean.FALSE.equals(obj)) {
            return false;
        }
        if (obj == UniqueTag.DOUBLE_MARK) {
            double d = callFrame.sDbl[i];
            return (Double.isNaN(d) || d == 0.0d) ? false : true;
        }
        if (obj == null || obj == Undefined.instance) {
            return false;
        }
        if (!(obj instanceof Number)) {
            return ScriptRuntime.toBoolean(obj);
        }
        double dDoubleValue = ((Number) obj).doubleValue();
        return (Double.isNaN(dDoubleValue) || dDoubleValue == 0.0d) ? false : true;
    }

    private static double stack_double(CallFrame callFrame, int i) {
        Object obj = callFrame.stack[i];
        return obj != UniqueTag.DOUBLE_MARK ? ScriptRuntime.toNumber(obj) : callFrame.sDbl[i];
    }

    private static int stack_int32(CallFrame callFrame, int i) {
        Object obj = callFrame.stack[i];
        return obj == UniqueTag.DOUBLE_MARK ? ScriptRuntime.toInt32(callFrame.sDbl[i]) : ScriptRuntime.toInt32(obj);
    }

    private static Object thawGenerator(CallFrame callFrame, int i, a aVar, int i2) {
        callFrame.frozen = false;
        int index = getIndex(callFrame.idata.itsICode, callFrame.pc);
        callFrame.pc += 2;
        int i3 = aVar.a;
        if (i3 == 1) {
            return new JavaScriptException(aVar.b, callFrame.idata.itsSourceFile, index);
        }
        if (i3 == 2) {
            return aVar.b;
        }
        if (i3 != 0) {
            throw Kit.codeBug();
        }
        if (i2 == 73 || i2 == -66) {
            callFrame.stack[i] = aVar.b;
        }
        return Scriptable.NOT_FOUND;
    }

    @Override
    public void captureStackInfo(RhinoException rhinoException) {
        CallFrame[] callFrameArr;
        Context currentContext = Context.getCurrentContext();
        if (currentContext == null || currentContext.lastInterpreterFrame == null) {
            rhinoException.interpreterStackInfo = null;
            rhinoException.interpreterLineData = null;
            return;
        }
        ObjArray objArray = currentContext.previousInterpreterInvocations;
        if (objArray == null || objArray.size() == 0) {
            callFrameArr = new CallFrame[1];
        } else {
            int size = currentContext.previousInterpreterInvocations.size();
            if (currentContext.previousInterpreterInvocations.peek() == currentContext.lastInterpreterFrame) {
                size--;
            }
            callFrameArr = new CallFrame[size + 1];
            currentContext.previousInterpreterInvocations.toArray(callFrameArr);
        }
        callFrameArr[callFrameArr.length - 1] = (CallFrame) currentContext.lastInterpreterFrame;
        int i = 0;
        for (int i2 = 0; i2 != callFrameArr.length; i2++) {
            i += callFrameArr[i2].frameIndex + 1;
        }
        int[] iArr = new int[i];
        int length = callFrameArr.length;
        while (length != 0) {
            length--;
            for (CallFrame callFrame = callFrameArr[length]; callFrame != null; callFrame = callFrame.parentFrame) {
                i--;
                iArr[i] = callFrame.pcSourceLineStart;
            }
        }
        if (i != 0) {
            Kit.codeBug();
        }
        rhinoException.interpreterStackInfo = callFrameArr;
        rhinoException.interpreterLineData = iArr;
    }

    @Override
    public Object compile(CompilerEnvirons compilerEnvirons, ScriptNode scriptNode, String str, boolean z) {
        InterpreterData interpreterDataQ = new b().q(compilerEnvirons, scriptNode, str, z);
        this.itsData = interpreterDataQ;
        return interpreterDataQ;
    }

    @Override
    public Function createFunctionObject(Context context, Scriptable scriptable, Object obj, Object obj2) {
        if (obj != this.itsData) {
            Kit.codeBug();
        }
        return InterpretedFunction.createFunction(context, scriptable, this.itsData, obj2);
    }

    @Override
    public Script createScriptObject(Object obj, Object obj2) {
        if (obj != this.itsData) {
            Kit.codeBug();
        }
        return InterpretedFunction.createScript(this.itsData, obj2);
    }

    @Override
    public String getPatchedStack(RhinoException rhinoException, String str) {
        char cCharAt;
        StringBuilder sb = new StringBuilder(str.length() + 1000);
        String systemProperty = SecurityUtilities.getSystemProperty("line.separator");
        CallFrame[] callFrameArr = (CallFrame[]) rhinoException.interpreterStackInfo;
        int[] iArr = rhinoException.interpreterLineData;
        int length = callFrameArr.length;
        int length2 = iArr.length;
        int i = 0;
        while (length != 0) {
            length--;
            int iIndexOf = str.indexOf("org.mozilla.javascript.Interpreter.interpretLoop", i);
            if (iIndexOf < 0) {
                break;
            }
            int i2 = iIndexOf + 48;
            while (i2 != str.length() && (cCharAt = str.charAt(i2)) != '\n' && cCharAt != '\r') {
                i2++;
            }
            sb.append(str.substring(i, i2));
            for (CallFrame callFrame = callFrameArr[length]; callFrame != null; callFrame = callFrame.parentFrame) {
                if (length2 == 0) {
                    Kit.codeBug();
                }
                length2--;
                InterpreterData interpreterData = callFrame.idata;
                sb.append(systemProperty);
                sb.append("\tat script");
                String str2 = interpreterData.itsName;
                if (str2 != null && str2.length() != 0) {
                    sb.append('.');
                    sb.append(interpreterData.itsName);
                }
                sb.append('(');
                sb.append(interpreterData.itsSourceFile);
                int i3 = iArr[length2];
                if (i3 >= 0) {
                    sb.append(':');
                    sb.append(getIndex(interpreterData.itsICode, i3));
                }
                sb.append(')');
            }
            i = i2;
        }
        sb.append(str.substring(i));
        return sb.toString();
    }

    @Override
    public List<String> getScriptStack(RhinoException rhinoException) {
        ScriptStackElement[][] scriptStackElements = getScriptStackElements(rhinoException);
        ArrayList arrayList = new ArrayList(scriptStackElements.length);
        String systemProperty = SecurityUtilities.getSystemProperty("line.separator");
        for (ScriptStackElement[] scriptStackElementArr : scriptStackElements) {
            StringBuilder sb = new StringBuilder();
            for (ScriptStackElement scriptStackElement : scriptStackElementArr) {
                scriptStackElement.renderJavaStyle(sb);
                sb.append(systemProperty);
            }
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    public ScriptStackElement[][] getScriptStackElements(RhinoException rhinoException) {
        if (rhinoException.interpreterStackInfo == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        CallFrame[] callFrameArr = (CallFrame[]) rhinoException.interpreterStackInfo;
        int[] iArr = rhinoException.interpreterLineData;
        int length = callFrameArr.length;
        int length2 = iArr.length;
        while (length != 0) {
            length--;
            CallFrame callFrame = callFrameArr[length];
            ArrayList arrayList2 = new ArrayList();
            while (callFrame != null) {
                if (length2 == 0) {
                    Kit.codeBug();
                }
                length2--;
                InterpreterData interpreterData = callFrame.idata;
                String str = interpreterData.itsSourceFile;
                int i = iArr[length2];
                int index = i >= 0 ? getIndex(interpreterData.itsICode, i) : -1;
                String str2 = interpreterData.itsName;
                String str3 = (str2 == null || str2.length() == 0) ? null : interpreterData.itsName;
                callFrame = callFrame.parentFrame;
                arrayList2.add(new ScriptStackElement(str, str3, index));
            }
            arrayList.add(arrayList2.toArray(new ScriptStackElement[arrayList2.size()]));
        }
        return (ScriptStackElement[][]) arrayList.toArray(new ScriptStackElement[arrayList.size()][]);
    }

    @Override
    public String getSourcePositionFromStack(Context context, int[] iArr) {
        CallFrame callFrame = (CallFrame) context.lastInterpreterFrame;
        InterpreterData interpreterData = callFrame.idata;
        int i = callFrame.pcSourceLineStart;
        if (i >= 0) {
            iArr[0] = getIndex(interpreterData.itsICode, i);
        } else {
            iArr[0] = 0;
        }
        return interpreterData.itsSourceFile;
    }

    @Override
    public void setEvalScriptFlag(Script script) {
        ((InterpretedFunction) script).idata.evalScriptFlag = true;
    }

    private static NativeContinuation captureContinuation(Context context, CallFrame callFrame, boolean z) {
        Object[] objArr;
        NativeContinuation nativeContinuation = new NativeContinuation();
        ScriptRuntime.setObjectProtoAndParent(nativeContinuation, ScriptRuntime.getTopCallScope(context));
        CallFrame callFrame2 = callFrame;
        CallFrame callFrame3 = callFrame2;
        while (callFrame2 != null && !callFrame2.frozen) {
            callFrame2.frozen = true;
            int i = callFrame2.savedStackTop + 1;
            while (true) {
                objArr = callFrame2.stack;
                if (i == objArr.length) {
                    break;
                }
                objArr[i] = null;
                callFrame2.stackAttributes[i] = 0;
                i++;
            }
            int i2 = callFrame2.savedCallOp;
            if (i2 == 38) {
                objArr[callFrame2.savedStackTop] = null;
            } else if (i2 != 30) {
                Kit.codeBug();
            }
            callFrame3 = callFrame2;
            callFrame2 = callFrame2.parentFrame;
        }
        if (z) {
            while (true) {
                CallFrame callFrame4 = callFrame3.parentFrame;
                if (callFrame4 == null) {
                    break;
                }
                callFrame3 = callFrame4;
            }
            if (!callFrame3.isContinuationsTopFrame) {
                throw new IllegalStateException("Cannot capture continuation from JavaScript code not called directly by executeScriptWithContinuations or callFunctionWithContinuations");
            }
        }
        nativeContinuation.initImplementation(callFrame);
        return nativeContinuation;
    }
}
