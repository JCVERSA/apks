.class public abstract Lorg/mozilla/javascript/NativeFunction;
.super Lorg/mozilla/javascript/BaseFunction;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x78edfb41ce2c09d1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final decompile(II)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getEncodedSource()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/mozilla/javascript/UintMap;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/UintMap;-><init>(I)V

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    invoke-static {v0, p2, p0}, Lorg/mozilla/javascript/Decompiler;->decompile(Ljava/lang/String;ILorg/mozilla/javascript/UintMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getArity()I
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getParamCount()I

    move-result p0

    return p0
.end method

.method public getDebuggableView()Lorg/mozilla/javascript/debug/DebuggableScript;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEncodedSource()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getLanguageVersion()I
.end method

.method public getLength()I
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getParamCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getLanguageVersion()I

    move-result v1

    const/16 v2, 0x78

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->findFunctionActivation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/NativeCall;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lorg/mozilla/javascript/NativeCall;->originalArgs:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method

.method public abstract getParamAndVarCount()I
.end method

.method public abstract getParamCount()I
.end method

.method public getParamOrVarConst(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getParamOrVarName(I)Ljava/lang/String;
.end method

.method public final initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->isGeneratorFunction()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    return-void
.end method

.method public final initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 0

    .line 2
    invoke-static {p0, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;Z)V

    return-void
.end method

.method public jsGet_name()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/mozilla/javascript/EvaluatorException;

    const-string p1, "resumeGenerator() not implemented"

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/EvaluatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
