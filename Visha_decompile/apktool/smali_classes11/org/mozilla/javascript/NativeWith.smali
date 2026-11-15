.class public Lorg/mozilla/javascript/NativeWith;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Scriptable;
.implements Lorg/mozilla/javascript/SymbolScriptable;
.implements Lorg/mozilla/javascript/IdFunctionCall;
.implements Ljava/io/Serializable;


# static fields
.field private static final FTAG:Ljava/lang/Object;

.field private static final Id_constructor:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected parent:Lorg/mozilla/javascript/Scriptable;

.field protected prototype:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "With"

    sput-object v0, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/mozilla/javascript/NativeWith;->parent:Lorg/mozilla/javascript/Scriptable;

    .line 4
    iput-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 9

    new-instance v7, Lorg/mozilla/javascript/NativeWith;

    invoke-direct {v7}, Lorg/mozilla/javascript/NativeWith;-><init>()V

    invoke-virtual {v7, p0}, Lorg/mozilla/javascript/NativeWith;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/NativeWith;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    new-instance v8, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    const-string v4, "With"

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/IdFunctionObject;->markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p1, :cond_0

    invoke-virtual {v8}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    invoke-virtual {v8}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    return-void
.end method

.method public static isWithFunction(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p0, Lorg/mozilla/javascript/IdFunctionObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v0, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static newWithSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "With"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->checkDeprecated(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    new-instance v0, Lorg/mozilla/javascript/NativeWith;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeWith;-><init>()V

    array-length v1, p2

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/NativeWith;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeWith;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-object v0
.end method


# virtual methods
.method public delete(I)V
    .locals 0

    .line 4
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Lorg/mozilla/javascript/Symbol;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    instance-of v0, p0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/SymbolScriptable;->delete(Lorg/mozilla/javascript/Symbol;)V

    :cond_0
    return-void
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    const-string p0, "msg.cant.call.indirect"

    const-string p1, "With"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    if-ne p2, p0, :cond_0

    .line 7
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 8
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    if-ne p2, p0, :cond_0

    .line 1
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 2
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    if-ne p2, p0, :cond_0

    .line 3
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    instance-of v0, p0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {p0, p1, p2}, Lorg/mozilla/javascript/SymbolScriptable;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "With"

    return-object p0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getParentScope()Lorg/mozilla/javascript/Scriptable;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->parent:Lorg/mozilla/javascript/Scriptable;

    return-object p0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-object p0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 4
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    return p0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    return p0
.end method

.method public has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    instance-of p2, p0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz p2, :cond_0

    .line 3
    move-object p2, p0

    check-cast p2, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {p2, p1, p0}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/Scriptable;->hasInstance(Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    return p0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0

    if-ne p2, p0, :cond_0

    .line 6
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 7
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0

    if-ne p2, p0, :cond_0

    .line 1
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 2
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    if-ne p2, p0, :cond_0

    .line 3
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    instance-of v0, p0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {p0, p1, p2, p3}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeWith;->parent:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public updateDotQuery(Z)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
