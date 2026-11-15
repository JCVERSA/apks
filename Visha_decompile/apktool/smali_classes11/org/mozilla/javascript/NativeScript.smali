.class Lorg/mozilla/javascript/NativeScript;
.super Lorg/mozilla/javascript/BaseFunction;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x5e4d0c813cab5264L


# instance fields
.field private script:Lorg/mozilla/javascript/Script;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Script"

    sput-object v0, Lorg/mozilla/javascript/NativeScript;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Script;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    return-void
.end method

.method public static b(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/Script;
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    aput v0, v1, v2

    const-string v3, "<Script object>"

    :cond_0
    move-object v8, v3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-static {v0}, Lf12;->a(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v7

    aget v9, v1, v2

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeScript;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/NativeScript;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/NativeScript;

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/NativeScript;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeScript;-><init>(Lorg/mozilla/javascript/Script;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    const-string p0, "msg.script.is.not.constructor"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method public decompile(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    instance-of v1, v0, Lorg/mozilla/javascript/NativeFunction;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->decompile(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lorg/mozilla/javascript/NativeScript;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/BaseFunction;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p0

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    if-eq p0, v0, :cond_5

    const/4 p3, 0x2

    if-eq p0, p3, :cond_3

    const/4 p3, 0x3

    if-eq p0, p3, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "msg.cant.call.indirect"

    const-string p1, "exec"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeScript;->c(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeScript;

    move-result-object p0

    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/NativeScript;->b(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/Script;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    return-object p0

    :cond_3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeScript;->c(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeScript;

    move-result-object p0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p2, p0, v2}, Lorg/mozilla/javascript/Context;->decompileScript(Lorg/mozilla/javascript/Script;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    array-length p0, p5

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    aget-object p0, p5, v2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p2, v1}, Lorg/mozilla/javascript/NativeScript;->b(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/Script;

    move-result-object p0

    new-instance p1, Lorg/mozilla/javascript/NativeScript;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/NativeScript;-><init>(Lorg/mozilla/javascript/Script;)V

    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    return-object p1
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    move v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "toString"

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string p0, "compile"

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string p0, "constructor"

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "exec"

    :goto_0
    if-eqz p0, :cond_4

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    return v1
.end method

.method public getArity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "Script"

    return-object p0
.end method

.method public getLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "exec"

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v1, "compile"

    :goto_0
    move v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    const-string v0, "toString"

    goto :goto_1

    :cond_3
    const-string v1, "constructor"

    goto :goto_0

    :goto_1
    sget-object v1, Lorg/mozilla/javascript/NativeScript;->b:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method
