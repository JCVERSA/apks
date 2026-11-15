package org.mozilla.javascript.optimizer;

import androidx.core.app.NotificationCompat;
import defpackage.ls7;
import java.util.HashMap;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.mozilla.classfile.ByteCode;
import org.mozilla.classfile.ClassFileWriter;
import org.mozilla.javascript.CompilerEnvirons;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Evaluator;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.GeneratedClassLoader;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.NativeFunction;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.ObjToIntMap;
import org.mozilla.javascript.RhinoException;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.SecurityController;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.Name;
import org.mozilla.javascript.ast.ScriptNode;

public class Codegen implements Evaluator {
    static final String DEFAULT_MAIN_METHOD_CLASS = "org.mozilla.javascript.optimizer.OptRuntime";
    static final String FUNCTION_CONSTRUCTOR_SIGNATURE = "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V";
    static final String FUNCTION_INIT_SIGNATURE = "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V";
    static final String ID_FIELD_NAME = "_id";
    static final String REGEXP_INIT_METHOD_NAME = "_reInit";
    static final String REGEXP_INIT_METHOD_SIGNATURE = "(Lorg/mozilla/javascript/Context;)V";
    private static final String SUPER_CLASS_NAME = "org.mozilla.javascript.NativeFunction";
    private static final Object globalLock = new Object();
    private static int globalSerialClassCounter;
    private CompilerEnvirons compilerEnv;
    private ObjArray directCallTargets;
    private double[] itsConstantList;
    private int itsConstantListSize;
    String mainClassName;
    String mainClassSignature;
    private String mainMethodClass = DEFAULT_MAIN_METHOD_CLASS;
    private ObjToIntMap scriptOrFnIndexes;
    ScriptNode[] scriptOrFnNodes;

    private static void addDoubleWrap(ClassFileWriter classFileWriter) {
        classFileWriter.addInvoke(184, "org/mozilla/javascript/optimizer/OptRuntime", "wrapDouble", "(D)Ljava/lang/Double;");
    }

    public static RuntimeException badTree() {
        throw new RuntimeException("Bad tree in codegen");
    }

    private static void collectScriptNodes_r(ScriptNode scriptNode, ObjArray objArray) {
        objArray.add(scriptNode);
        int functionCount = scriptNode.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            collectScriptNodes_r(scriptNode.getFunctionNode(i), objArray);
        }
    }

    private Class<?> defineClass(Object obj, Object obj2) {
        Object[] objArr = (Object[]) obj;
        String str = (String) objArr[0];
        byte[] bArr = (byte[]) objArr[1];
        GeneratedClassLoader generatedClassLoaderCreateLoader = SecurityController.createLoader(getClass().getClassLoader(), obj2);
        try {
            Class<?> clsDefineClass = generatedClassLoaderCreateLoader.defineClass(str, bArr);
            generatedClassLoaderCreateLoader.linkClass(clsDefineClass);
            return clsDefineClass;
        } catch (IllegalArgumentException | SecurityException e) {
            throw new RuntimeException("Malformed optimizer package " + e);
        }
    }

    private void emitConstantDudeInitializers(ClassFileWriter classFileWriter) {
        int i = this.itsConstantListSize;
        if (i == 0) {
            return;
        }
        classFileWriter.startMethod("<clinit>", "()V", (short) 24);
        double[] dArr = this.itsConstantList;
        for (int i2 = 0; i2 != i; i2++) {
            double d = dArr[i2];
            String str = "_k" + i2;
            String staticConstantWrapperType = getStaticConstantWrapperType(d);
            classFileWriter.addField(str, staticConstantWrapperType, (short) 10);
            int i3 = (int) d;
            if (i3 == d) {
                classFileWriter.addPush(i3);
                classFileWriter.addInvoke(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            } else {
                classFileWriter.addPush(d);
                addDoubleWrap(classFileWriter);
            }
            classFileWriter.add(ByteCode.PUTSTATIC, this.mainClassName, str, staticConstantWrapperType);
        }
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 0);
    }

    private void emitDirectConstructor(ClassFileWriter classFileWriter, OptFunctionNode optFunctionNode) {
        classFileWriter.startMethod(getDirectCtorName(optFunctionNode.fnode), getBodyMethodSignature(optFunctionNode.fnode), (short) 10);
        int paramCount = optFunctionNode.fnode.getParamCount();
        int i = paramCount * 3;
        int i2 = i + 4;
        int i3 = i + 5;
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addInvoke(182, "org/mozilla/javascript/BaseFunction", "createObject", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.addAStore(i3);
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(i3);
        for (int i4 = 0; i4 < paramCount; i4++) {
            int i5 = i4 * 3;
            classFileWriter.addALoad(i5 + 4);
            classFileWriter.addDLoad(i5 + 5);
        }
        classFileWriter.addALoad(i2);
        classFileWriter.addInvoke(184, this.mainClassName, getBodyMethodName(optFunctionNode.fnode), getBodyMethodSignature(optFunctionNode.fnode));
        int iAcquireLabel = classFileWriter.acquireLabel();
        classFileWriter.add(89);
        classFileWriter.add(193, "org/mozilla/javascript/Scriptable");
        classFileWriter.add(153, iAcquireLabel);
        classFileWriter.add(192, "org/mozilla/javascript/Scriptable");
        classFileWriter.add(176);
        classFileWriter.markLabel(iAcquireLabel);
        classFileWriter.addALoad(i3);
        classFileWriter.add(176);
        classFileWriter.stopMethod((short) (i + 6));
    }

    private void emitRegExpInit(ClassFileWriter classFileWriter) {
        int i = 0;
        int i2 = 0;
        int regexpCount = 0;
        while (true) {
            ScriptNode[] scriptNodeArr = this.scriptOrFnNodes;
            if (i2 == scriptNodeArr.length) {
                break;
            }
            regexpCount += scriptNodeArr[i2].getRegexpCount();
            i2++;
        }
        if (regexpCount == 0) {
            return;
        }
        short s = 10;
        classFileWriter.startMethod(REGEXP_INIT_METHOD_NAME, REGEXP_INIT_METHOD_SIGNATURE, (short) 10);
        classFileWriter.addField("_reInitDone", "Z", (short) 74);
        classFileWriter.add(178, this.mainClassName, "_reInitDone", "Z");
        int iAcquireLabel = classFileWriter.acquireLabel();
        classFileWriter.add(153, iAcquireLabel);
        classFileWriter.add(177);
        classFileWriter.markLabel(iAcquireLabel);
        classFileWriter.addALoad(0);
        classFileWriter.addInvoke(184, "org/mozilla/javascript/ScriptRuntime", "checkRegExpProxy", "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;");
        classFileWriter.addAStore(1);
        int i3 = 0;
        while (true) {
            ScriptNode[] scriptNodeArr2 = this.scriptOrFnNodes;
            if (i3 == scriptNodeArr2.length) {
                classFileWriter.addPush(1);
                classFileWriter.add(ByteCode.PUTSTATIC, this.mainClassName, "_reInitDone", "Z");
                classFileWriter.add(177);
                classFileWriter.stopMethod((short) 2);
                return;
            }
            ScriptNode scriptNode = scriptNodeArr2[i3];
            int regexpCount2 = scriptNode.getRegexpCount();
            int i4 = i;
            while (i4 != regexpCount2) {
                String compiledRegexpName = getCompiledRegexpName(scriptNode, i4);
                String regexpString = scriptNode.getRegexpString(i4);
                String regexpFlags = scriptNode.getRegexpFlags(i4);
                classFileWriter.addField(compiledRegexpName, "Ljava/lang/Object;", s);
                classFileWriter.addALoad(1);
                classFileWriter.addALoad(i);
                classFileWriter.addPush(regexpString);
                if (regexpFlags == null) {
                    classFileWriter.add(1);
                } else {
                    classFileWriter.addPush(regexpFlags);
                }
                classFileWriter.addInvoke(185, "org/mozilla/javascript/RegExpProxy", "compileRegExp", "(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;");
                classFileWriter.add(ByteCode.PUTSTATIC, this.mainClassName, compiledRegexpName, "Ljava/lang/Object;");
                i4++;
                i = 0;
                s = 10;
            }
            i3++;
            i = 0;
            s = 10;
        }
    }

    private void generateCallMethod(ClassFileWriter classFileWriter, boolean z) {
        int iAddTableSwitch;
        int paramCount;
        classFileWriter.startMethod(NotificationCompat.CATEGORY_CALL, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;", (short) 17);
        int iAcquireLabel = classFileWriter.acquireLabel();
        classFileWriter.addALoad(1);
        classFileWriter.addInvoke(184, "org/mozilla/javascript/ScriptRuntime", "hasTopCall", "(Lorg/mozilla/javascript/Context;)Z");
        classFileWriter.add(154, iAcquireLabel);
        int i = 0;
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(3);
        classFileWriter.addALoad(4);
        classFileWriter.addPush(z);
        classFileWriter.addInvoke(184, "org/mozilla/javascript/ScriptRuntime", "doTopCall", "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;");
        classFileWriter.add(176);
        classFileWriter.markLabel(iAcquireLabel);
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(3);
        classFileWriter.addALoad(4);
        int length = this.scriptOrFnNodes.length;
        boolean z2 = 2 <= length;
        if (z2) {
            classFileWriter.addLoadThis();
            classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
            iAddTableSwitch = classFileWriter.addTableSwitch(1, length - 1);
        } else {
            iAddTableSwitch = 0;
        }
        int i2 = 0;
        short stackTop = 0;
        while (i2 != length) {
            ScriptNode scriptNode = this.scriptOrFnNodes[i2];
            if (z2) {
                if (i2 == 0) {
                    classFileWriter.markTableSwitchDefault(iAddTableSwitch);
                    stackTop = classFileWriter.getStackTop();
                } else {
                    classFileWriter.markTableSwitchCase(iAddTableSwitch, i2 - 1, stackTop);
                }
            }
            if (scriptNode.getType() == 110) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
                if (optFunctionNode.isTargetOfDirectCall() && (paramCount = optFunctionNode.fnode.getParamCount()) != 0) {
                    for (int i3 = i; i3 != paramCount; i3++) {
                        classFileWriter.add(ByteCode.ARRAYLENGTH);
                        classFileWriter.addPush(i3);
                        int iAcquireLabel2 = classFileWriter.acquireLabel();
                        int iAcquireLabel3 = classFileWriter.acquireLabel();
                        classFileWriter.add(164, iAcquireLabel2);
                        classFileWriter.addALoad(4);
                        classFileWriter.addPush(i3);
                        classFileWriter.add(50);
                        classFileWriter.add(167, iAcquireLabel3);
                        classFileWriter.markLabel(iAcquireLabel2);
                        pushUndefined(classFileWriter);
                        classFileWriter.markLabel(iAcquireLabel3);
                        classFileWriter.adjustStackTop(-1);
                        classFileWriter.addPush(0.0d);
                        classFileWriter.addALoad(4);
                    }
                }
            }
            classFileWriter.addInvoke(184, this.mainClassName, getBodyMethodName(scriptNode), getBodyMethodSignature(scriptNode));
            classFileWriter.add(176);
            i2++;
            i = 0;
        }
        classFileWriter.stopMethod((short) 5);
    }

    private byte[] generateCode(String str) {
        boolean z = true;
        boolean z2 = this.scriptOrFnNodes[0].getType() == 137;
        ScriptNode[] scriptNodeArr = this.scriptOrFnNodes;
        if (scriptNodeArr.length <= 1 && z2) {
            z = false;
        }
        boolean zIsInStrictMode = scriptNodeArr[0].isInStrictMode();
        ClassFileWriter classFileWriter = new ClassFileWriter(this.mainClassName, SUPER_CLASS_NAME, this.compilerEnv.isGenerateDebugInfo() ? this.scriptOrFnNodes[0].getSourceName() : null);
        classFileWriter.addField(ID_FIELD_NAME, "I", (short) 2);
        if (z) {
            generateFunctionConstructor(classFileWriter);
        }
        if (z2) {
            classFileWriter.addInterface("org/mozilla/javascript/Script");
            generateScriptCtor(classFileWriter);
            generateMain(classFileWriter);
            generateExecute(classFileWriter);
        }
        generateCallMethod(classFileWriter, zIsInStrictMode);
        generateResumeGenerator(classFileWriter);
        generateNativeFunctionOverrides(classFileWriter, str);
        int length = this.scriptOrFnNodes.length;
        for (int i = 0; i != length; i++) {
            ScriptNode scriptNode = this.scriptOrFnNodes[i];
            a aVar = new a();
            aVar.b = classFileWriter;
            aVar.c = this;
            aVar.d = this.compilerEnv;
            aVar.e = scriptNode;
            aVar.f = i;
            aVar.w();
            if (scriptNode.getType() == 110) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
                generateFunctionInit(classFileWriter, optFunctionNode);
                if (optFunctionNode.isTargetOfDirectCall()) {
                    emitDirectConstructor(classFileWriter, optFunctionNode);
                }
            }
        }
        emitRegExpInit(classFileWriter);
        emitConstantDudeInitializers(classFileWriter);
        return classFileWriter.toByteArray();
    }

    private static void generateExecute(ClassFileWriter classFileWriter) {
        classFileWriter.startMethod("exec", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;", (short) 17);
        classFileWriter.addLoadThis();
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.add(89);
        classFileWriter.add(1);
        classFileWriter.addInvoke(182, classFileWriter.getClassName(), NotificationCompat.CATEGORY_CALL, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;");
        classFileWriter.add(176);
        classFileWriter.stopMethod((short) 3);
    }

    private void generateFunctionConstructor(ClassFileWriter classFileWriter) {
        int iAddTableSwitch;
        classFileWriter.startMethod(MethodDecl.initName, FUNCTION_CONSTRUCTOR_SIGNATURE, (short) 1);
        short stackTop = 0;
        classFileWriter.addALoad(0);
        classFileWriter.addInvoke(183, SUPER_CLASS_NAME, MethodDecl.initName, "()V");
        classFileWriter.addLoadThis();
        classFileWriter.addILoad(3);
        classFileWriter.add(181, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
        classFileWriter.addLoadThis();
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(1);
        int i = this.scriptOrFnNodes[0].getType() == 137 ? 1 : 0;
        int length = this.scriptOrFnNodes.length;
        if (i == length) {
            throw badTree();
        }
        boolean z = 2 <= length - i;
        if (z) {
            classFileWriter.addILoad(3);
            iAddTableSwitch = classFileWriter.addTableSwitch(i + 1, length - 1);
        } else {
            iAddTableSwitch = 0;
        }
        for (int i2 = i; i2 != length; i2++) {
            if (z) {
                if (i2 == i) {
                    classFileWriter.markTableSwitchDefault(iAddTableSwitch);
                    stackTop = classFileWriter.getStackTop();
                } else {
                    classFileWriter.markTableSwitchCase(iAddTableSwitch, (i2 - 1) - i, stackTop);
                }
            }
            classFileWriter.addInvoke(183, this.mainClassName, getFunctionInitMethodName(OptFunctionNode.get(this.scriptOrFnNodes[i2])), FUNCTION_INIT_SIGNATURE);
            classFileWriter.add(177);
        }
        classFileWriter.stopMethod((short) 4);
    }

    private void generateFunctionInit(ClassFileWriter classFileWriter, OptFunctionNode optFunctionNode) {
        classFileWriter.startMethod(getFunctionInitMethodName(optFunctionNode), FUNCTION_INIT_SIGNATURE, (short) 18);
        classFileWriter.addLoadThis();
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addInvoke(182, "org/mozilla/javascript/NativeFunction", "initScriptFunction", FUNCTION_INIT_SIGNATURE);
        if (optFunctionNode.fnode.getRegexpCount() != 0) {
            classFileWriter.addALoad(1);
            classFileWriter.addInvoke(184, this.mainClassName, REGEXP_INIT_METHOD_NAME, REGEXP_INIT_METHOD_SIGNATURE);
        }
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 3);
    }

    private void generateMain(ClassFileWriter classFileWriter) {
        classFileWriter.startMethod("main", "([Ljava/lang/String;)V", (short) 9);
        classFileWriter.add(187, classFileWriter.getClassName());
        classFileWriter.add(89);
        classFileWriter.addInvoke(183, classFileWriter.getClassName(), MethodDecl.initName, "()V");
        classFileWriter.add(42);
        classFileWriter.addInvoke(184, this.mainMethodClass, "main", "(Lorg/mozilla/javascript/Script;[Ljava/lang/String;)V");
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 1);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0086  */
    /* JADX WARN: Code duplicated, block: B:27:0x008b  */
    /* JADX WARN: Code duplicated, block: B:29:0x0091 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0093  */
    /* JADX WARN: Code duplicated, block: B:31:0x009b  */
    /* JADX WARN: Code duplicated, block: B:36:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:46:0x00de  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:55:0x010a  */
    /* JADX WARN: Code duplicated, block: B:56:0x0128  */
    /* JADX WARN: Code duplicated, block: B:58:0x012e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0137  */
    /* JADX WARN: Code duplicated, block: B:61:0x013a  */
    /* JADX WARN: Code duplicated, block: B:62:0x0145  */
    /* JADX WARN: Code duplicated, block: B:64:0x0151  */
    /* JADX WARN: Code duplicated, block: B:66:0x0157  */
    /* JADX WARN: Code duplicated, block: B:69:0x0160  */
    /* JADX WARN: Code duplicated, block: B:70:0x0164  */
    /* JADX WARN: Code duplicated, block: B:72:0x0178  */
    /* JADX WARN: Code duplicated, block: B:73:0x0185  */
    /* JADX WARN: Code duplicated, block: B:74:0x0190  */
    /* JADX WARN: Code duplicated, block: B:76:0x0198  */
    /* JADX WARN: Code duplicated, block: B:78:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:86:0x00a5 A[SYNTHETIC] */
    private void generateNativeFunctionOverrides(ClassFileWriter classFileWriter, String str) {
        short s;
        int length;
        int iAddTableSwitch;
        int i;
        short stackTop;
        ScriptNode scriptNode;
        int paramAndVarCount;
        int iAddTableSwitch2;
        int i2;
        int paramAndVarCount2;
        boolean[] paramAndVarConst;
        int iAddTableSwitch3;
        int i3;
        short s2 = 1;
        classFileWriter.startMethod("getLanguageVersion", "()I", (short) 1);
        classFileWriter.addPush(this.compilerEnv.getLanguageVersion());
        int i4 = 172;
        classFileWriter.add(172);
        classFileWriter.stopMethod((short) 1);
        int i5 = 0;
        while (i5 != 7) {
            if (i5 != 4 || str != null) {
                int i6 = 3;
                switch (i5) {
                    case 0:
                        classFileWriter.startMethod("getFunctionName", "()Ljava/lang/String;", s2);
                        s = s2;
                        length = this.scriptOrFnNodes.length;
                        if (length > s2) {
                            classFileWriter.addLoadThis();
                            classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
                            iAddTableSwitch = classFileWriter.addTableSwitch(s2, length - 1);
                        } else {
                            iAddTableSwitch = 0;
                        }
                        i = 0;
                        stackTop = 0;
                        while (i != length) {
                            scriptNode = this.scriptOrFnNodes[i];
                            if (i != 0) {
                                classFileWriter.markTableSwitchCase(iAddTableSwitch, i - 1, stackTop);
                            } else if (length > s2) {
                                classFileWriter.markTableSwitchDefault(iAddTableSwitch);
                                stackTop = classFileWriter.getStackTop();
                            }
                            switch (i5) {
                                case 0:
                                    if (scriptNode.getType() == 137) {
                                        classFileWriter.addPush("");
                                    } else {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).getName());
                                    }
                                    classFileWriter.add(176);
                                    break;
                                case 1:
                                    classFileWriter.addPush(scriptNode.getParamCount());
                                    classFileWriter.add(i4);
                                    break;
                                case 2:
                                    classFileWriter.addPush(scriptNode.getParamAndVarCount());
                                    i4 = 172;
                                    classFileWriter.add(172);
                                    break;
                                case 3:
                                    paramAndVarCount = scriptNode.getParamAndVarCount();
                                    if (paramAndVarCount == 0) {
                                        classFileWriter.add(1);
                                        classFileWriter.add(176);
                                    } else if (paramAndVarCount == 1) {
                                        classFileWriter.addPush(scriptNode.getParamOrVarName(0));
                                        classFileWriter.add(176);
                                    } else {
                                        classFileWriter.addILoad(1);
                                        iAddTableSwitch2 = classFileWriter.addTableSwitch(1, paramAndVarCount - 1);
                                        i2 = 0;
                                        while (i2 != paramAndVarCount) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            String paramOrVarName = scriptNode.getParamOrVarName(i2);
                                            if (i2 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch2);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch2, i2 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramOrVarName);
                                            classFileWriter.add(176);
                                            i2++;
                                            i4 = 172;
                                        }
                                    }
                                    break;
                                case 4:
                                    classFileWriter.addPush(scriptNode.getEncodedSourceStart());
                                    classFileWriter.addPush(scriptNode.getEncodedSourceEnd());
                                    classFileWriter.addInvoke(182, "java/lang/String", "substring", "(II)Ljava/lang/String;");
                                    classFileWriter.add(176);
                                    break;
                                case 5:
                                    paramAndVarCount2 = scriptNode.getParamAndVarCount();
                                    paramAndVarConst = scriptNode.getParamAndVarConst();
                                    if (paramAndVarCount2 == 0) {
                                        classFileWriter.add(i6);
                                        classFileWriter.add(i4);
                                    } else if (paramAndVarCount2 == s2) {
                                        classFileWriter.addPush(paramAndVarConst[0]);
                                        classFileWriter.add(i4);
                                    } else {
                                        classFileWriter.addILoad(s2);
                                        iAddTableSwitch3 = classFileWriter.addTableSwitch(s2, paramAndVarCount2 - 1);
                                        for (i3 = 0; i3 != paramAndVarCount2; i3++) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            if (i3 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch3);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch3, i3 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramAndVarConst[i3]);
                                            classFileWriter.add(i4);
                                        }
                                    }
                                    break;
                                case 6:
                                    if (scriptNode instanceof FunctionNode) {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).isES6Generator());
                                    } else {
                                        classFileWriter.addPush(false);
                                    }
                                    classFileWriter.add(i4);
                                    break;
                                default:
                                    throw Kit.codeBug();
                            }
                            i++;
                            s2 = 1;
                            i6 = 3;
                        }
                        classFileWriter.stopMethod(s);
                        break;
                    case 1:
                        classFileWriter.startMethod("getParamCount", "()I", s2);
                        s = s2;
                        length = this.scriptOrFnNodes.length;
                        if (length > s2) {
                            classFileWriter.addLoadThis();
                            classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
                            iAddTableSwitch = classFileWriter.addTableSwitch(s2, length - 1);
                        } else {
                            iAddTableSwitch = 0;
                        }
                        i = 0;
                        stackTop = 0;
                        while (i != length) {
                            scriptNode = this.scriptOrFnNodes[i];
                            if (i != 0) {
                                classFileWriter.markTableSwitchCase(iAddTableSwitch, i - 1, stackTop);
                            } else if (length > s2) {
                                classFileWriter.markTableSwitchDefault(iAddTableSwitch);
                                stackTop = classFileWriter.getStackTop();
                            }
                            switch (i5) {
                                case 0:
                                    if (scriptNode.getType() == 137) {
                                        classFileWriter.addPush("");
                                    } else {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).getName());
                                    }
                                    classFileWriter.add(176);
                                    break;
                                case 1:
                                    classFileWriter.addPush(scriptNode.getParamCount());
                                    classFileWriter.add(i4);
                                    break;
                                case 2:
                                    classFileWriter.addPush(scriptNode.getParamAndVarCount());
                                    i4 = 172;
                                    classFileWriter.add(172);
                                    break;
                                case 3:
                                    paramAndVarCount = scriptNode.getParamAndVarCount();
                                    if (paramAndVarCount == 0) {
                                        classFileWriter.add(1);
                                        classFileWriter.add(176);
                                    } else if (paramAndVarCount == 1) {
                                        classFileWriter.addPush(scriptNode.getParamOrVarName(0));
                                        classFileWriter.add(176);
                                    } else {
                                        classFileWriter.addILoad(1);
                                        iAddTableSwitch2 = classFileWriter.addTableSwitch(1, paramAndVarCount - 1);
                                        i2 = 0;
                                        while (i2 != paramAndVarCount) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            String paramOrVarName2 = scriptNode.getParamOrVarName(i2);
                                            if (i2 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch2);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch2, i2 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramOrVarName2);
                                            classFileWriter.add(176);
                                            i2++;
                                            i4 = 172;
                                        }
                                    }
                                    break;
                                case 4:
                                    classFileWriter.addPush(scriptNode.getEncodedSourceStart());
                                    classFileWriter.addPush(scriptNode.getEncodedSourceEnd());
                                    classFileWriter.addInvoke(182, "java/lang/String", "substring", "(II)Ljava/lang/String;");
                                    classFileWriter.add(176);
                                    break;
                                case 5:
                                    paramAndVarCount2 = scriptNode.getParamAndVarCount();
                                    paramAndVarConst = scriptNode.getParamAndVarConst();
                                    if (paramAndVarCount2 == 0) {
                                        classFileWriter.add(i6);
                                        classFileWriter.add(i4);
                                    } else if (paramAndVarCount2 == s2) {
                                        classFileWriter.addPush(paramAndVarConst[0]);
                                        classFileWriter.add(i4);
                                    } else {
                                        classFileWriter.addILoad(s2);
                                        iAddTableSwitch3 = classFileWriter.addTableSwitch(s2, paramAndVarCount2 - 1);
                                        while (i3 != paramAndVarCount2) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            if (i3 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch3);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch3, i3 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramAndVarConst[i3]);
                                            classFileWriter.add(i4);
                                        }
                                    }
                                    break;
                                case 6:
                                    if (scriptNode instanceof FunctionNode) {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).isES6Generator());
                                    } else {
                                        classFileWriter.addPush(false);
                                    }
                                    classFileWriter.add(i4);
                                    break;
                                default:
                                    throw Kit.codeBug();
                            }
                            i++;
                            s2 = 1;
                            i6 = 3;
                        }
                        classFileWriter.stopMethod(s);
                        break;
                    case 2:
                        classFileWriter.startMethod("getParamAndVarCount", "()I", s2);
                        s = s2;
                        length = this.scriptOrFnNodes.length;
                        if (length > s2) {
                            classFileWriter.addLoadThis();
                            classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
                            iAddTableSwitch = classFileWriter.addTableSwitch(s2, length - 1);
                        } else {
                            iAddTableSwitch = 0;
                        }
                        i = 0;
                        stackTop = 0;
                        while (i != length) {
                            scriptNode = this.scriptOrFnNodes[i];
                            if (i != 0) {
                                classFileWriter.markTableSwitchCase(iAddTableSwitch, i - 1, stackTop);
                            } else if (length > s2) {
                                classFileWriter.markTableSwitchDefault(iAddTableSwitch);
                                stackTop = classFileWriter.getStackTop();
                            }
                            switch (i5) {
                                case 0:
                                    if (scriptNode.getType() == 137) {
                                        classFileWriter.addPush("");
                                    } else {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).getName());
                                    }
                                    classFileWriter.add(176);
                                    break;
                                case 1:
                                    classFileWriter.addPush(scriptNode.getParamCount());
                                    classFileWriter.add(i4);
                                    break;
                                case 2:
                                    classFileWriter.addPush(scriptNode.getParamAndVarCount());
                                    i4 = 172;
                                    classFileWriter.add(172);
                                    break;
                                case 3:
                                    paramAndVarCount = scriptNode.getParamAndVarCount();
                                    if (paramAndVarCount == 0) {
                                        classFileWriter.add(1);
                                        classFileWriter.add(176);
                                    } else if (paramAndVarCount == 1) {
                                        classFileWriter.addPush(scriptNode.getParamOrVarName(0));
                                        classFileWriter.add(176);
                                    } else {
                                        classFileWriter.addILoad(1);
                                        iAddTableSwitch2 = classFileWriter.addTableSwitch(1, paramAndVarCount - 1);
                                        i2 = 0;
                                        while (i2 != paramAndVarCount) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            String paramOrVarName3 = scriptNode.getParamOrVarName(i2);
                                            if (i2 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch2);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch2, i2 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramOrVarName3);
                                            classFileWriter.add(176);
                                            i2++;
                                            i4 = 172;
                                        }
                                    }
                                    break;
                                case 4:
                                    classFileWriter.addPush(scriptNode.getEncodedSourceStart());
                                    classFileWriter.addPush(scriptNode.getEncodedSourceEnd());
                                    classFileWriter.addInvoke(182, "java/lang/String", "substring", "(II)Ljava/lang/String;");
                                    classFileWriter.add(176);
                                    break;
                                case 5:
                                    paramAndVarCount2 = scriptNode.getParamAndVarCount();
                                    paramAndVarConst = scriptNode.getParamAndVarConst();
                                    if (paramAndVarCount2 == 0) {
                                        classFileWriter.add(i6);
                                        classFileWriter.add(i4);
                                    } else if (paramAndVarCount2 == s2) {
                                        classFileWriter.addPush(paramAndVarConst[0]);
                                        classFileWriter.add(i4);
                                    } else {
                                        classFileWriter.addILoad(s2);
                                        iAddTableSwitch3 = classFileWriter.addTableSwitch(s2, paramAndVarCount2 - 1);
                                        while (i3 != paramAndVarCount2) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            if (i3 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch3);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch3, i3 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramAndVarConst[i3]);
                                            classFileWriter.add(i4);
                                        }
                                    }
                                    break;
                                case 6:
                                    if (scriptNode instanceof FunctionNode) {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).isES6Generator());
                                    } else {
                                        classFileWriter.addPush(false);
                                    }
                                    classFileWriter.add(i4);
                                    break;
                                default:
                                    throw Kit.codeBug();
                            }
                            i++;
                            s2 = 1;
                            i6 = 3;
                        }
                        classFileWriter.stopMethod(s);
                        break;
                    case 3:
                        classFileWriter.startMethod("getParamOrVarName", "(I)Ljava/lang/String;", s2);
                        s = 2;
                        length = this.scriptOrFnNodes.length;
                        if (length > s2) {
                            classFileWriter.addLoadThis();
                            classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
                            iAddTableSwitch = classFileWriter.addTableSwitch(s2, length - 1);
                        } else {
                            iAddTableSwitch = 0;
                        }
                        i = 0;
                        stackTop = 0;
                        while (i != length) {
                            scriptNode = this.scriptOrFnNodes[i];
                            if (i != 0) {
                                classFileWriter.markTableSwitchCase(iAddTableSwitch, i - 1, stackTop);
                            } else if (length > s2) {
                                classFileWriter.markTableSwitchDefault(iAddTableSwitch);
                                stackTop = classFileWriter.getStackTop();
                            }
                            switch (i5) {
                                case 0:
                                    if (scriptNode.getType() == 137) {
                                        classFileWriter.addPush("");
                                    } else {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).getName());
                                    }
                                    classFileWriter.add(176);
                                    break;
                                case 1:
                                    classFileWriter.addPush(scriptNode.getParamCount());
                                    classFileWriter.add(i4);
                                    break;
                                case 2:
                                    classFileWriter.addPush(scriptNode.getParamAndVarCount());
                                    i4 = 172;
                                    classFileWriter.add(172);
                                    break;
                                case 3:
                                    paramAndVarCount = scriptNode.getParamAndVarCount();
                                    if (paramAndVarCount == 0) {
                                        classFileWriter.add(1);
                                        classFileWriter.add(176);
                                    } else if (paramAndVarCount == 1) {
                                        classFileWriter.addPush(scriptNode.getParamOrVarName(0));
                                        classFileWriter.add(176);
                                    } else {
                                        classFileWriter.addILoad(1);
                                        iAddTableSwitch2 = classFileWriter.addTableSwitch(1, paramAndVarCount - 1);
                                        i2 = 0;
                                        while (i2 != paramAndVarCount) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            String paramOrVarName4 = scriptNode.getParamOrVarName(i2);
                                            if (i2 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch2);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch2, i2 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramOrVarName4);
                                            classFileWriter.add(176);
                                            i2++;
                                            i4 = 172;
                                        }
                                    }
                                    break;
                                case 4:
                                    classFileWriter.addPush(scriptNode.getEncodedSourceStart());
                                    classFileWriter.addPush(scriptNode.getEncodedSourceEnd());
                                    classFileWriter.addInvoke(182, "java/lang/String", "substring", "(II)Ljava/lang/String;");
                                    classFileWriter.add(176);
                                    break;
                                case 5:
                                    paramAndVarCount2 = scriptNode.getParamAndVarCount();
                                    paramAndVarConst = scriptNode.getParamAndVarConst();
                                    if (paramAndVarCount2 == 0) {
                                        classFileWriter.add(i6);
                                        classFileWriter.add(i4);
                                    } else if (paramAndVarCount2 == s2) {
                                        classFileWriter.addPush(paramAndVarConst[0]);
                                        classFileWriter.add(i4);
                                    } else {
                                        classFileWriter.addILoad(s2);
                                        iAddTableSwitch3 = classFileWriter.addTableSwitch(s2, paramAndVarCount2 - 1);
                                        while (i3 != paramAndVarCount2) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            if (i3 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch3);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch3, i3 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramAndVarConst[i3]);
                                            classFileWriter.add(i4);
                                        }
                                    }
                                    break;
                                case 6:
                                    if (scriptNode instanceof FunctionNode) {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).isES6Generator());
                                    } else {
                                        classFileWriter.addPush(false);
                                    }
                                    classFileWriter.add(i4);
                                    break;
                                default:
                                    throw Kit.codeBug();
                            }
                            i++;
                            s2 = 1;
                            i6 = 3;
                        }
                        classFileWriter.stopMethod(s);
                        break;
                    case 4:
                        classFileWriter.startMethod("getEncodedSource", "()Ljava/lang/String;", s2);
                        classFileWriter.addPush(str);
                        s = s2;
                        length = this.scriptOrFnNodes.length;
                        if (length > s2) {
                            classFileWriter.addLoadThis();
                            classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
                            iAddTableSwitch = classFileWriter.addTableSwitch(s2, length - 1);
                        } else {
                            iAddTableSwitch = 0;
                        }
                        i = 0;
                        stackTop = 0;
                        while (i != length) {
                            scriptNode = this.scriptOrFnNodes[i];
                            if (i != 0) {
                                classFileWriter.markTableSwitchCase(iAddTableSwitch, i - 1, stackTop);
                            } else if (length > s2) {
                                classFileWriter.markTableSwitchDefault(iAddTableSwitch);
                                stackTop = classFileWriter.getStackTop();
                            }
                            switch (i5) {
                                case 0:
                                    if (scriptNode.getType() == 137) {
                                        classFileWriter.addPush("");
                                    } else {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).getName());
                                    }
                                    classFileWriter.add(176);
                                    break;
                                case 1:
                                    classFileWriter.addPush(scriptNode.getParamCount());
                                    classFileWriter.add(i4);
                                    break;
                                case 2:
                                    classFileWriter.addPush(scriptNode.getParamAndVarCount());
                                    i4 = 172;
                                    classFileWriter.add(172);
                                    break;
                                case 3:
                                    paramAndVarCount = scriptNode.getParamAndVarCount();
                                    if (paramAndVarCount == 0) {
                                        classFileWriter.add(1);
                                        classFileWriter.add(176);
                                    } else if (paramAndVarCount == 1) {
                                        classFileWriter.addPush(scriptNode.getParamOrVarName(0));
                                        classFileWriter.add(176);
                                    } else {
                                        classFileWriter.addILoad(1);
                                        iAddTableSwitch2 = classFileWriter.addTableSwitch(1, paramAndVarCount - 1);
                                        i2 = 0;
                                        while (i2 != paramAndVarCount) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            String paramOrVarName5 = scriptNode.getParamOrVarName(i2);
                                            if (i2 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch2);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch2, i2 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramOrVarName5);
                                            classFileWriter.add(176);
                                            i2++;
                                            i4 = 172;
                                        }
                                    }
                                    break;
                                case 4:
                                    classFileWriter.addPush(scriptNode.getEncodedSourceStart());
                                    classFileWriter.addPush(scriptNode.getEncodedSourceEnd());
                                    classFileWriter.addInvoke(182, "java/lang/String", "substring", "(II)Ljava/lang/String;");
                                    classFileWriter.add(176);
                                    break;
                                case 5:
                                    paramAndVarCount2 = scriptNode.getParamAndVarCount();
                                    paramAndVarConst = scriptNode.getParamAndVarConst();
                                    if (paramAndVarCount2 == 0) {
                                        classFileWriter.add(i6);
                                        classFileWriter.add(i4);
                                    } else if (paramAndVarCount2 == s2) {
                                        classFileWriter.addPush(paramAndVarConst[0]);
                                        classFileWriter.add(i4);
                                    } else {
                                        classFileWriter.addILoad(s2);
                                        iAddTableSwitch3 = classFileWriter.addTableSwitch(s2, paramAndVarCount2 - 1);
                                        while (i3 != paramAndVarCount2) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            if (i3 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch3);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch3, i3 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramAndVarConst[i3]);
                                            classFileWriter.add(i4);
                                        }
                                    }
                                    break;
                                case 6:
                                    if (scriptNode instanceof FunctionNode) {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).isES6Generator());
                                    } else {
                                        classFileWriter.addPush(false);
                                    }
                                    classFileWriter.add(i4);
                                    break;
                                default:
                                    throw Kit.codeBug();
                            }
                            i++;
                            s2 = 1;
                            i6 = 3;
                        }
                        classFileWriter.stopMethod(s);
                        break;
                    case 5:
                        classFileWriter.startMethod("getParamOrVarConst", "(I)Z", s2);
                        s = 3;
                        length = this.scriptOrFnNodes.length;
                        if (length > s2) {
                            classFileWriter.addLoadThis();
                            classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
                            iAddTableSwitch = classFileWriter.addTableSwitch(s2, length - 1);
                        } else {
                            iAddTableSwitch = 0;
                        }
                        i = 0;
                        stackTop = 0;
                        while (i != length) {
                            scriptNode = this.scriptOrFnNodes[i];
                            if (i != 0) {
                                classFileWriter.markTableSwitchCase(iAddTableSwitch, i - 1, stackTop);
                            } else if (length > s2) {
                                classFileWriter.markTableSwitchDefault(iAddTableSwitch);
                                stackTop = classFileWriter.getStackTop();
                            }
                            switch (i5) {
                                case 0:
                                    if (scriptNode.getType() == 137) {
                                        classFileWriter.addPush("");
                                    } else {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).getName());
                                    }
                                    classFileWriter.add(176);
                                    break;
                                case 1:
                                    classFileWriter.addPush(scriptNode.getParamCount());
                                    classFileWriter.add(i4);
                                    break;
                                case 2:
                                    classFileWriter.addPush(scriptNode.getParamAndVarCount());
                                    i4 = 172;
                                    classFileWriter.add(172);
                                    break;
                                case 3:
                                    paramAndVarCount = scriptNode.getParamAndVarCount();
                                    if (paramAndVarCount == 0) {
                                        classFileWriter.add(1);
                                        classFileWriter.add(176);
                                    } else if (paramAndVarCount == 1) {
                                        classFileWriter.addPush(scriptNode.getParamOrVarName(0));
                                        classFileWriter.add(176);
                                    } else {
                                        classFileWriter.addILoad(1);
                                        iAddTableSwitch2 = classFileWriter.addTableSwitch(1, paramAndVarCount - 1);
                                        i2 = 0;
                                        while (i2 != paramAndVarCount) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            String paramOrVarName6 = scriptNode.getParamOrVarName(i2);
                                            if (i2 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch2);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch2, i2 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramOrVarName6);
                                            classFileWriter.add(176);
                                            i2++;
                                            i4 = 172;
                                        }
                                    }
                                    break;
                                case 4:
                                    classFileWriter.addPush(scriptNode.getEncodedSourceStart());
                                    classFileWriter.addPush(scriptNode.getEncodedSourceEnd());
                                    classFileWriter.addInvoke(182, "java/lang/String", "substring", "(II)Ljava/lang/String;");
                                    classFileWriter.add(176);
                                    break;
                                case 5:
                                    paramAndVarCount2 = scriptNode.getParamAndVarCount();
                                    paramAndVarConst = scriptNode.getParamAndVarConst();
                                    if (paramAndVarCount2 == 0) {
                                        classFileWriter.add(i6);
                                        classFileWriter.add(i4);
                                    } else if (paramAndVarCount2 == s2) {
                                        classFileWriter.addPush(paramAndVarConst[0]);
                                        classFileWriter.add(i4);
                                    } else {
                                        classFileWriter.addILoad(s2);
                                        iAddTableSwitch3 = classFileWriter.addTableSwitch(s2, paramAndVarCount2 - 1);
                                        while (i3 != paramAndVarCount2) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            if (i3 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch3);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch3, i3 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramAndVarConst[i3]);
                                            classFileWriter.add(i4);
                                        }
                                    }
                                    break;
                                case 6:
                                    if (scriptNode instanceof FunctionNode) {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).isES6Generator());
                                    } else {
                                        classFileWriter.addPush(false);
                                    }
                                    classFileWriter.add(i4);
                                    break;
                                default:
                                    throw Kit.codeBug();
                            }
                            i++;
                            s2 = 1;
                            i6 = 3;
                        }
                        classFileWriter.stopMethod(s);
                        break;
                    case 6:
                        classFileWriter.startMethod("isGeneratorFunction", "()Z", (short) 4);
                        s = s2;
                        length = this.scriptOrFnNodes.length;
                        if (length > s2) {
                            classFileWriter.addLoadThis();
                            classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
                            iAddTableSwitch = classFileWriter.addTableSwitch(s2, length - 1);
                        } else {
                            iAddTableSwitch = 0;
                        }
                        i = 0;
                        stackTop = 0;
                        while (i != length) {
                            scriptNode = this.scriptOrFnNodes[i];
                            if (i != 0) {
                                classFileWriter.markTableSwitchCase(iAddTableSwitch, i - 1, stackTop);
                            } else if (length > s2) {
                                classFileWriter.markTableSwitchDefault(iAddTableSwitch);
                                stackTop = classFileWriter.getStackTop();
                            }
                            switch (i5) {
                                case 0:
                                    if (scriptNode.getType() == 137) {
                                        classFileWriter.addPush("");
                                    } else {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).getName());
                                    }
                                    classFileWriter.add(176);
                                    break;
                                case 1:
                                    classFileWriter.addPush(scriptNode.getParamCount());
                                    classFileWriter.add(i4);
                                    break;
                                case 2:
                                    classFileWriter.addPush(scriptNode.getParamAndVarCount());
                                    i4 = 172;
                                    classFileWriter.add(172);
                                    break;
                                case 3:
                                    paramAndVarCount = scriptNode.getParamAndVarCount();
                                    if (paramAndVarCount == 0) {
                                        classFileWriter.add(1);
                                        classFileWriter.add(176);
                                    } else if (paramAndVarCount == 1) {
                                        classFileWriter.addPush(scriptNode.getParamOrVarName(0));
                                        classFileWriter.add(176);
                                    } else {
                                        classFileWriter.addILoad(1);
                                        iAddTableSwitch2 = classFileWriter.addTableSwitch(1, paramAndVarCount - 1);
                                        i2 = 0;
                                        while (i2 != paramAndVarCount) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            String paramOrVarName7 = scriptNode.getParamOrVarName(i2);
                                            if (i2 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch2);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch2, i2 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramOrVarName7);
                                            classFileWriter.add(176);
                                            i2++;
                                            i4 = 172;
                                        }
                                    }
                                    break;
                                case 4:
                                    classFileWriter.addPush(scriptNode.getEncodedSourceStart());
                                    classFileWriter.addPush(scriptNode.getEncodedSourceEnd());
                                    classFileWriter.addInvoke(182, "java/lang/String", "substring", "(II)Ljava/lang/String;");
                                    classFileWriter.add(176);
                                    break;
                                case 5:
                                    paramAndVarCount2 = scriptNode.getParamAndVarCount();
                                    paramAndVarConst = scriptNode.getParamAndVarConst();
                                    if (paramAndVarCount2 == 0) {
                                        classFileWriter.add(i6);
                                        classFileWriter.add(i4);
                                    } else if (paramAndVarCount2 == s2) {
                                        classFileWriter.addPush(paramAndVarConst[0]);
                                        classFileWriter.add(i4);
                                    } else {
                                        classFileWriter.addILoad(s2);
                                        iAddTableSwitch3 = classFileWriter.addTableSwitch(s2, paramAndVarCount2 - 1);
                                        while (i3 != paramAndVarCount2) {
                                            if (classFileWriter.getStackTop() != 0) {
                                                Kit.codeBug();
                                            }
                                            if (i3 == 0) {
                                                classFileWriter.markTableSwitchDefault(iAddTableSwitch3);
                                            } else {
                                                classFileWriter.markTableSwitchCase(iAddTableSwitch3, i3 - 1, 0);
                                            }
                                            classFileWriter.addPush(paramAndVarConst[i3]);
                                            classFileWriter.add(i4);
                                        }
                                    }
                                    break;
                                case 6:
                                    if (scriptNode instanceof FunctionNode) {
                                        classFileWriter.addPush(((FunctionNode) scriptNode).isES6Generator());
                                    } else {
                                        classFileWriter.addPush(false);
                                    }
                                    classFileWriter.add(i4);
                                    break;
                                default:
                                    throw Kit.codeBug();
                            }
                            i++;
                            s2 = 1;
                            i6 = 3;
                        }
                        classFileWriter.stopMethod(s);
                        break;
                    default:
                        throw Kit.codeBug();
                }
            }
            i5++;
            s2 = 1;
        }
    }

    private void generateResumeGenerator(ClassFileWriter classFileWriter) {
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (true) {
            ScriptNode[] scriptNodeArr = this.scriptOrFnNodes;
            if (i2 >= scriptNodeArr.length) {
                break;
            }
            if (isGenerator(scriptNodeArr[i2])) {
                z = true;
            }
            i2++;
        }
        if (!z) {
            return;
        }
        classFileWriter.startMethod("resumeGenerator", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", (short) 17);
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(4);
        classFileWriter.addALoad(5);
        classFileWriter.addILoad(3);
        classFileWriter.addLoadThis();
        classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
        int iAddTableSwitch = classFileWriter.addTableSwitch(0, this.scriptOrFnNodes.length - 1);
        classFileWriter.markTableSwitchDefault(iAddTableSwitch);
        int iAcquireLabel = classFileWriter.acquireLabel();
        while (true) {
            ScriptNode[] scriptNodeArr2 = this.scriptOrFnNodes;
            if (i >= scriptNodeArr2.length) {
                classFileWriter.markLabel(iAcquireLabel);
                pushUndefined(classFileWriter);
                classFileWriter.add(176);
                classFileWriter.stopMethod((short) 6);
                return;
            }
            ScriptNode scriptNode = scriptNodeArr2[i];
            classFileWriter.markTableSwitchCase(iAddTableSwitch, i, 6);
            if (isGenerator(scriptNode)) {
                String str = "(" + this.mainClassSignature + "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;";
                classFileWriter.addInvoke(184, this.mainClassName, getBodyMethodName(scriptNode) + "_gen", str);
                classFileWriter.add(176);
            } else {
                classFileWriter.add(167, iAcquireLabel);
            }
            i++;
        }
    }

    private static void generateScriptCtor(ClassFileWriter classFileWriter) {
        classFileWriter.startMethod(MethodDecl.initName, "()V", (short) 1);
        classFileWriter.addLoadThis();
        classFileWriter.addInvoke(183, SUPER_CLASS_NAME, MethodDecl.initName, "()V");
        classFileWriter.addLoadThis();
        classFileWriter.addPush(0);
        classFileWriter.add(181, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 1);
    }

    private static String getStaticConstantWrapperType(double d) {
        return ((double) ((int) d)) == d ? "Ljava/lang/Integer;" : "Ljava/lang/Double;";
    }

    private static void initOptFunctions_r(ScriptNode scriptNode) {
        int functionCount = scriptNode.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            FunctionNode functionNode = scriptNode.getFunctionNode(i);
            new OptFunctionNode(functionNode);
            initOptFunctions_r(functionNode);
        }
    }

    private void initScriptNodesData(ScriptNode scriptNode) {
        ObjArray objArray = new ObjArray();
        collectScriptNodes_r(scriptNode, objArray);
        int size = objArray.size();
        ScriptNode[] scriptNodeArr = new ScriptNode[size];
        this.scriptOrFnNodes = scriptNodeArr;
        objArray.toArray(scriptNodeArr);
        this.scriptOrFnIndexes = new ObjToIntMap(size);
        for (int i = 0; i != size; i++) {
            this.scriptOrFnIndexes.put(this.scriptOrFnNodes[i], i);
        }
    }

    public static boolean isGenerator(ScriptNode scriptNode) {
        return scriptNode.getType() == 110 && ((FunctionNode) scriptNode).isGenerator();
    }

    public static void pushUndefined(ClassFileWriter classFileWriter) {
        classFileWriter.add(178, "org/mozilla/javascript/Undefined", "instance", "Ljava/lang/Object;");
    }

    private void transform(ScriptNode scriptNode) {
        initOptFunctions_r(scriptNode);
        int optimizationLevel = this.compilerEnv.getOptimizationLevel();
        HashMap map = null;
        if (optimizationLevel > 0 && scriptNode.getType() == 137) {
            int functionCount = scriptNode.getFunctionCount();
            for (int i = 0; i != functionCount; i++) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode, i);
                if (optFunctionNode.fnode.getFunctionType() == 1) {
                    String name = optFunctionNode.fnode.getName();
                    if (name.length() != 0) {
                        if (map == null) {
                            map = new HashMap();
                        }
                        map.put(name, optFunctionNode);
                    }
                }
            }
        }
        if (map != null) {
            this.directCallTargets = new ObjArray();
        }
        new b(map, this.directCallTargets).transform(scriptNode, this.compilerEnv);
        if (optimizationLevel > 0) {
            new ls7().d(scriptNode);
        }
    }

    @Override
    public void captureStackInfo(RhinoException rhinoException) {
        throw new UnsupportedOperationException();
    }

    public String cleanName(ScriptNode scriptNode) {
        if (!(scriptNode instanceof FunctionNode)) {
            return StringLookupFactory.KEY_SCRIPT;
        }
        Name functionName = ((FunctionNode) scriptNode).getFunctionName();
        return functionName == null ? "anonymous" : functionName.getIdentifier();
    }

    @Override
    public Object compile(CompilerEnvirons compilerEnvirons, ScriptNode scriptNode, String str, boolean z) {
        int i;
        synchronized (globalLock) {
            i = globalSerialClassCounter + 1;
            globalSerialClassCounter = i;
        }
        String strReplaceAll = "c";
        if (scriptNode.getSourceName().length() > 0) {
            strReplaceAll = scriptNode.getSourceName().replaceAll("\\W", "_");
            if (!Character.isJavaIdentifierStart(strReplaceAll.charAt(0))) {
                strReplaceAll = "_" + strReplaceAll;
            }
        }
        String str2 = "org.mozilla.javascript.gen." + strReplaceAll + "_" + i;
        return new Object[]{str2, compileToClassFile(compilerEnvirons, str2, scriptNode, str, z)};
    }

    public byte[] compileToClassFile(CompilerEnvirons compilerEnvirons, String str, ScriptNode scriptNode, String str2, boolean z) {
        this.compilerEnv = compilerEnvirons;
        transform(scriptNode);
        if (z) {
            scriptNode = scriptNode.getFunctionNode(0);
        }
        initScriptNodesData(scriptNode);
        this.mainClassName = str;
        this.mainClassSignature = ClassFileWriter.classNameToSignature(str);
        return generateCode(str2);
    }

    @Override
    public Function createFunctionObject(Context context, Scriptable scriptable, Object obj, Object obj2) {
        try {
            return (NativeFunction) defineClass(obj, obj2).getConstructors()[0].newInstance(scriptable, context, 0);
        } catch (Exception e) {
            throw new RuntimeException("Unable to instantiate compiled class:" + e.toString());
        }
    }

    @Override
    public Script createScriptObject(Object obj, Object obj2) {
        try {
            return (Script) defineClass(obj, obj2).newInstance();
        } catch (Exception e) {
            throw new RuntimeException("Unable to instantiate compiled class:" + e.toString());
        }
    }

    public String getBodyMethodName(ScriptNode scriptNode) {
        return "_c_" + cleanName(scriptNode) + "_" + getIndex(scriptNode);
    }

    public String getBodyMethodSignature(ScriptNode scriptNode) {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(this.mainClassSignature);
        sb.append("Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;");
        if (scriptNode.getType() == 110) {
            OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
            if (optFunctionNode.isTargetOfDirectCall()) {
                int paramCount = optFunctionNode.fnode.getParamCount();
                for (int i = 0; i != paramCount; i++) {
                    sb.append("Ljava/lang/Object;D");
                }
            }
        }
        sb.append("[Ljava/lang/Object;)Ljava/lang/Object;");
        return sb.toString();
    }

    public String getCompiledRegexpName(ScriptNode scriptNode, int i) {
        return "_re" + getIndex(scriptNode) + "_" + i;
    }

    public String getDirectCtorName(ScriptNode scriptNode) {
        return "_n" + getIndex(scriptNode);
    }

    public String getFunctionInitMethodName(OptFunctionNode optFunctionNode) {
        return "_i" + getIndex(optFunctionNode.fnode);
    }

    public int getIndex(ScriptNode scriptNode) {
        return this.scriptOrFnIndexes.getExisting(scriptNode);
    }

    @Override
    public String getPatchedStack(RhinoException rhinoException, String str) {
        throw new UnsupportedOperationException();
    }

    @Override
    public List<String> getScriptStack(RhinoException rhinoException) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String getSourcePositionFromStack(Context context, int[] iArr) {
        throw new UnsupportedOperationException();
    }

    public void pushNumberAsObject(ClassFileWriter classFileWriter, double d) {
        if (d == 0.0d) {
            if (1.0d / d > 0.0d) {
                classFileWriter.add(178, "org/mozilla/javascript/ScriptRuntime", "zeroObj", "Ljava/lang/Double;");
                return;
            } else {
                classFileWriter.addPush(d);
                addDoubleWrap(classFileWriter);
                return;
            }
        }
        if (d == 1.0d) {
            classFileWriter.add(178, "org/mozilla/javascript/optimizer/OptRuntime", "oneObj", "Ljava/lang/Double;");
            return;
        }
        if (d == -1.0d) {
            classFileWriter.add(178, "org/mozilla/javascript/optimizer/OptRuntime", "minusOneObj", "Ljava/lang/Double;");
            return;
        }
        if (Double.isNaN(d)) {
            classFileWriter.add(178, "org/mozilla/javascript/ScriptRuntime", "NaNobj", "Ljava/lang/Double;");
            return;
        }
        int i = this.itsConstantListSize;
        if (i >= 2000) {
            classFileWriter.addPush(d);
            addDoubleWrap(classFileWriter);
            return;
        }
        int i2 = 0;
        if (i == 0) {
            this.itsConstantList = new double[64];
        } else {
            double[] dArr = this.itsConstantList;
            int i3 = 0;
            while (i3 != i && dArr[i3] != d) {
                i3++;
            }
            if (i == dArr.length) {
                double[] dArr2 = new double[i * 2];
                System.arraycopy(this.itsConstantList, 0, dArr2, 0, i);
                this.itsConstantList = dArr2;
            }
            i2 = i3;
        }
        if (i2 == i) {
            this.itsConstantList[i] = d;
            this.itsConstantListSize = i + 1;
        }
        classFileWriter.add(178, this.mainClassName, "_k" + i2, getStaticConstantWrapperType(d));
    }

    @Override
    public void setEvalScriptFlag(Script script) {
        throw new UnsupportedOperationException();
    }

    public void setMainMethodClass(String str) {
        this.mainMethodClass = str;
    }
}
