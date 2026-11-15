.class final Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/IdScriptableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrototypeValues"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2a2b6fc82e6217a3L


# instance fields
.field private attributeArray:[S

.field private constructor:Lorg/mozilla/javascript/IdFunctionObject;

.field private constructorAttrs:S

.field constructorId:I

.field private maxId:I

.field private obj:Lorg/mozilla/javascript/IdScriptableObject;

.field private valueArray:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/IdScriptableObject;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    iput-object p1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    iput p2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    if-nez v2, :cond_4

    iget v2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    if-ne p1, v2, :cond_2

    const-string v3, "constructor"

    iget-object v4, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    iget-short v5, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorAttrs:S

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->b(ILjava/lang/Object;Ljava/lang/Object;I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeId(I)V

    :goto_3
    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".initPrototypeId(int id) did not initialize id="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_4
    return-object v2
.end method

.method public final b(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    sget-object p3, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_0
    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 v1, p1, 0x2

    monitor-enter p0

    :try_start_0
    aget-object v2, v0, v1

    if-nez v2, :cond_1

    aput-object p3, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    iget-object p2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    int-to-short p3, p4

    aput-short p3, p2, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    aget-object p1, v0, v1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final createPrecachedConstructor()Lorg/mozilla/javascript/IdFunctionObject;
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->findPrototypeId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeId(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/IdFunctionObject;->initFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V

    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdFunctionObject;->markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V

    iget-object p0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".initPrototypeId() did not initialize id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No id for constructor property"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final delete(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->a(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    add-int/lit8 p1, p1, -0x1

    aget-short v0, v0, p1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/String;

    const-string p1, "msg.delete.property.with.configurable.false"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1
    mul-int/lit8 v0, p1, 0x2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    aput-object v2, v1, v0

    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    const/4 v1, 0x0

    aput-short v1, v0, p1

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final findId(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findPrototypeId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final findId(Lorg/mozilla/javascript/Symbol;)I
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findPrototypeId(Lorg/mozilla/javascript/Symbol;)I

    move-result p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->a(I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getAttributes(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->a(I)Ljava/lang/Object;

    iget-object p0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    add-int/lit8 p1, p1, -0x1

    aget-short p0, p0, p1

    return p0
.end method

.method public final getMaxId()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    return p0
.end method

.method public final getNames(ZZ[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    :goto_0
    iget v5, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    if-gt v3, v5, :cond_5

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->a(I)Ljava/lang/Object;

    move-result-object v5

    if-nez p1, :cond_0

    iget-object v6, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    add-int/lit8 v7, v3, -0x1

    aget-short v6, v6, v7

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_4

    :cond_0
    sget-object v6, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v5, v6, :cond_4

    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    aget-object v5, v6, v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    if-nez v0, :cond_1

    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    new-array v0, v0, [Ljava/lang/Object;

    :cond_1
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v0, v4

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    instance-of v6, v5, Lorg/mozilla/javascript/Symbol;

    if-eqz v6, :cond_4

    if-nez v0, :cond_3

    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    new-array v0, v0, [Ljava/lang/Object;

    :cond_3
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    return-object p3

    :cond_6
    if-eqz p3, :cond_8

    array-length p0, p3

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    array-length p0, p3

    add-int p1, p0, v4

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p3, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v1, p1, p0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_8
    :goto_3
    array-length p0, v0

    if-eq v4, p0, :cond_9

    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    :cond_9
    return-object v0
.end method

.method public final has(I)Z
    .locals 1

    iget-object p0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    aget-object p0, p0, p1

    if-nez p0, :cond_1

    return v0

    :cond_1
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final initValue(ILjava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_5

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    if-gt p1, v0, :cond_5

    if-eqz p2, :cond_4

    .line 2
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p3, v0, :cond_3

    .line 3
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptableObject;->checkValidAttributes(I)V

    .line 4
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/IdScriptableObject;->findPrototypeId(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 5
    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    if-ne p1, v0, :cond_1

    .line 6
    instance-of p1, p3, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz p1, :cond_0

    .line 7
    check-cast p3, Lorg/mozilla/javascript/IdFunctionObject;

    iput-object p3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    int-to-short p1, p4

    .line 8
    iput-short p1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorAttrs:S

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "consructor should be initialized with IdFunctionObject"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->b(ILjava/lang/Object;Ljava/lang/Object;I)V

    return-void

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 14
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final initValue(ILorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_5

    .line 15
    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    if-gt p1, v0, :cond_5

    if-eqz p2, :cond_4

    .line 16
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p3, v0, :cond_3

    .line 17
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptableObject;->checkValidAttributes(I)V

    .line 18
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/IdScriptableObject;->findPrototypeId(Lorg/mozilla/javascript/Symbol;)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 19
    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    if-ne p1, v0, :cond_1

    .line 20
    instance-of p1, p3, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz p1, :cond_0

    .line 21
    check-cast p3, Lorg/mozilla/javascript/IdFunctionObject;

    iput-object p3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    int-to-short p1, p4

    .line 22
    iput-short p1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorAttrs:S

    return-void

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "consructor should be initialized with IdFunctionObject"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->b(ILjava/lang/Object;Ljava/lang/Object;I)V

    return-void

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 27
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 28
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final set(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p3, v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->a(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    add-int/lit8 p1, p1, -0x1

    aget-short v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    if-ne p2, v0, :cond_1

    if-nez p3, :cond_0

    sget-object p3, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    aput-object p3, p2, p1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    aget-object p0, p0, p1

    instance-of p1, p0, Lorg/mozilla/javascript/Symbol;

    if-eqz p1, :cond_2

    instance-of p1, p2, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Lorg/mozilla/javascript/SymbolScriptable;

    check-cast p0, Lorg/mozilla/javascript/Symbol;

    invoke-interface {p1, p0, p2, p3}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    check-cast p0, Ljava/lang/String;

    invoke-interface {p2, p0, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final setAttributes(II)V
    .locals 1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->checkValidAttributes(I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->a(I)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    add-int/lit8 p1, p1, -0x1

    int-to-short p2, p2

    aput-short p2, v0, p1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
