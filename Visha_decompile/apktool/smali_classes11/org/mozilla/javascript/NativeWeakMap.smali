.class public Lorg/mozilla/javascript/NativeWeakMap;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field private static final Id_constructor:I = 0x1

.field private static final Id_delete:I = 0x2

.field private static final Id_get:I = 0x3

.field private static final Id_has:I = 0x4

.field private static final Id_set:I = 0x5

.field private static final MAP_TAG:Ljava/lang/Object;

.field private static final MAX_PROTOTYPE_ID:I = 0x6

.field private static final NULL_VALUE:Ljava/lang/Object;

.field private static final SymbolId_toStringTag:I = 0x6

.field private static final serialVersionUID:J = 0x7853921e6674a155L


# instance fields
.field private instanceOfWeakMap:Z

.field private transient map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WeakMap"

    sput-object v0, Lorg/mozilla/javascript/NativeWeakMap;->MAP_TAG:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/NativeWeakMap;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->instanceOfWeakMap:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/NativeWeakMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeWeakMap;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private js_delete(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private js_get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_1
    sget-object p1, Lorg/mozilla/javascript/NativeWeakMap;->NULL_VALUE:Ljava/lang/Object;

    if-ne p0, p1, :cond_2

    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method private js_has(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private js_set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    sget-object p2, Lorg/mozilla/javascript/NativeWeakMap;->NULL_VALUE:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "msg.arg.not.object"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeWeakMap;
    .locals 1

    if-eqz p0, :cond_1

    :try_start_0
    check-cast p0, Lorg/mozilla/javascript/NativeWeakMap;

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->instanceOfWeakMap:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/NativeWeakMap;->MAP_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_a

    const/4 p2, 0x2

    if-eq p0, p2, :cond_8

    const/4 p2, 0x3

    if-eq p0, p2, :cond_6

    const/4 p2, 0x4

    if-eq p0, p2, :cond_4

    const/4 p2, 0x5

    if-ne p0, p2, :cond_3

    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeWeakMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeWeakMap;

    move-result-object p0

    array-length p1, p5

    if-lez p1, :cond_1

    aget-object p1, p5, v1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    array-length p2, p5

    if-le p2, v0, :cond_2

    aget-object p2, p5, v0

    goto :goto_1

    :cond_2
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/NativeWeakMap;->js_set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WeakMap.prototype has no method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeWeakMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeWeakMap;

    move-result-object p0

    array-length p1, p5

    if-lez p1, :cond_5

    aget-object p1, p5, v1

    goto :goto_2

    :cond_5
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_2
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeWeakMap;->js_has(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeWeakMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeWeakMap;

    move-result-object p0

    array-length p1, p5

    if-lez p1, :cond_7

    aget-object p1, p5, v1

    goto :goto_3

    :cond_7
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_3
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeWeakMap;->js_get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeWeakMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeWeakMap;

    move-result-object p0

    array-length p1, p5

    if-lez p1, :cond_9

    aget-object p1, p5, v1

    goto :goto_4

    :cond_9
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_4
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeWeakMap;->js_delete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_a
    if-nez p4, :cond_c

    new-instance p0, Lorg/mozilla/javascript/NativeWeakMap;

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeWeakMap;-><init>()V

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->instanceOfWeakMap:Z

    array-length p1, p5

    if-lez p1, :cond_b

    aget-object p1, p5, v1

    invoke-static {p2, p3, p0, p1}, Lorg/mozilla/javascript/NativeMap;->loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;)V

    :cond_b
    return-object p0

    :cond_c
    const-string p0, "msg.no.new"

    const-string p1, "WeakMap"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 7

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p0, v3, :cond_2

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v4, 0x67

    const/16 v5, 0x65

    const/16 v6, 0x74

    if-ne p0, v4, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v6, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v5, :cond_4

    move v2, v3

    goto :goto_1

    :cond_0
    const/16 v3, 0x68

    const/16 v4, 0x73

    if-ne p0, v3, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v4, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x61

    if-ne p0, v0, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    if-ne p0, v4, :cond_4

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v6, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v5, :cond_4

    const/4 v2, 0x5

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    if-ne p0, v3, :cond_3

    .line 7
    const-string p0, "delete"

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne p0, v1, :cond_4

    .line 8
    const-string p0, "constructor"

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    move v0, v2

    :goto_0
    if-eqz p0, :cond_5

    if-eq p0, p1, :cond_5

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    return v2
.end method

.method public findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .locals 0

    .line 1
    sget-object p0, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "WeakMap"

    return-object p0
.end method

.method public initPrototypeId(I)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeWeakMap;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const-string v0, "set"

    move-object v5, v0

    move v7, v2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v0, "has"

    :goto_0
    move-object v5, v0

    move v7, v1

    goto :goto_1

    :cond_3
    const-string v0, "get"

    goto :goto_0

    :cond_4
    const-string v0, "delete"

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    const-string v0, "constructor"

    goto :goto_0

    :goto_1
    sget-object v3, Lorg/mozilla/javascript/NativeWeakMap;->MAP_TAG:Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method
