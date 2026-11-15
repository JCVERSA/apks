.class public final Lorg/mozilla/javascript/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/c;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/c;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/c;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/c;->n(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static d(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/InterpretedFunction;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/javascript/InterpretedFunction;->getEncodedSource()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/mozilla/javascript/InterpretedFunction;->getEncodedSource()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static j(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/debug/DebuggableObject;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/mozilla/javascript/debug/DebuggableObject;

    invoke-interface {p0}, Lorg/mozilla/javascript/debug/DebuggableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/c;->j(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lnc3;

    invoke-direct {v0}, Lnc3;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public static l(Lorg/mozilla/javascript/Symbol;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/SymbolKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/mozilla/javascript/NativeSymbol;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->getKey()Lorg/mozilla/javascript/SymbolKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static m(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static synthetic n(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0

    :cond_0
    instance-of p0, p1, Ljava/lang/String;

    if-nez p0, :cond_1

    instance-of p0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz p0, :cond_8

    :cond_1
    return v1

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    return v2

    :cond_4
    instance-of p0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz p0, :cond_8

    return v1

    :cond_5
    instance-of v0, p0, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_8

    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_6

    check-cast p0, Lorg/mozilla/javascript/Symbol;

    invoke-static {p0}, Lorg/mozilla/javascript/c;->l(Lorg/mozilla/javascript/Symbol;)Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-static {p1}, Lorg/mozilla/javascript/c;->l(Lorg/mozilla/javascript/Symbol;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_6
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_7

    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_8

    :cond_7
    return v2

    :cond_8
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static o(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1

    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/util/Set;)[Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p0
.end method

.method public static q(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lorg/mozilla/javascript/c;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/c;

    if-nez v1, :cond_0

    new-instance v1, Lorg/mozilla/javascript/c;

    invoke-direct {v1}, Lorg/mozilla/javascript/c;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lorg/mozilla/javascript/c;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/c;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_2

    return v0

    :cond_2
    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/mozilla/javascript/c;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_4

    return v0

    :cond_4
    if-eqz v2, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lorg/mozilla/javascript/c;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/mozilla/javascript/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/c;->a:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p0, p0, Lorg/mozilla/javascript/c;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    instance-of v0, p2, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p2, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/c;->h(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    instance-of v0, p1, Lorg/mozilla/javascript/ConsString;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/mozilla/javascript/ConsString;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ConsString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    instance-of v0, p2, Lorg/mozilla/javascript/ConsString;

    if-eqz v0, :cond_5

    check-cast p2, Lorg/mozilla/javascript/ConsString;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ConsString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    instance-of v0, p1, Lorg/mozilla/javascript/SymbolKey;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lorg/mozilla/javascript/SymbolKey;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p1}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p2}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v1, v2

    :cond_6
    return v1

    :cond_7
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/c;->g([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v1, v2

    :cond_8
    return v1

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, p2}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_c

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/c;->e(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_b

    move v1, v2

    :cond_b
    return v1

    :cond_c
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_e

    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/c;->f(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_d

    move v1, v2

    :cond_d
    return v1

    :cond_e
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_10

    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/c;->i(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_f

    move v1, v2

    :cond_f
    return v1

    :cond_10
    instance-of p0, p1, Lorg/mozilla/javascript/NativeGlobal;

    if-eqz p0, :cond_11

    instance-of p0, p2, Lorg/mozilla/javascript/NativeGlobal;

    return p0

    :cond_11
    instance-of p0, p1, Lorg/mozilla/javascript/JavaAdapter;

    if-eqz p0, :cond_12

    instance-of p0, p2, Lorg/mozilla/javascript/JavaAdapter;

    return p0

    :cond_12
    instance-of p0, p1, Lorg/mozilla/javascript/NativeJavaTopPackage;

    if-eqz p0, :cond_13

    instance-of p0, p2, Lorg/mozilla/javascript/NativeJavaTopPackage;

    return p0

    :cond_13
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/c;->o(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p2}, Lorg/mozilla/javascript/c;->o(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final g([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {p0, v1, v3}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final h(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 7

    invoke-static {p1}, Lorg/mozilla/javascript/c;->k(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lorg/mozilla/javascript/c;->k(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/c;->g([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    array-length v2, v0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-static {p1, v5}, Lorg/mozilla/javascript/c;->m(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-static {p2, v6}, Lorg/mozilla/javascript/c;->m(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    :cond_4
    instance-of v0, p1, Lorg/mozilla/javascript/NativeContinuation;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    instance-of p0, p2, Lorg/mozilla/javascript/NativeContinuation;

    if-eqz p0, :cond_5

    check-cast p1, Lorg/mozilla/javascript/NativeContinuation;

    check-cast p2, Lorg/mozilla/javascript/NativeContinuation;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeContinuation;->equalImplementations(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/NativeContinuation;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v3, v1

    :cond_5
    return v3

    :cond_6
    instance-of v0, p1, Lorg/mozilla/javascript/NativeJavaPackage;

    if-eqz v0, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    instance-of v0, p1, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v0, :cond_9

    instance-of v0, p2, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/mozilla/javascript/IdFunctionObject;

    check-cast p2, Lorg/mozilla/javascript/IdFunctionObject;

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/IdFunctionObject;->equalObjectGraphs(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/c;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v3, v1

    :cond_8
    return v3

    :cond_9
    instance-of v0, p1, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v0, :cond_b

    instance-of p0, p2, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz p0, :cond_a

    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    check-cast p2, Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/c;->d(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/InterpretedFunction;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v3, v1

    :cond_a
    return v3

    :cond_b
    instance-of v0, p1, Lorg/mozilla/javascript/ArrowFunction;

    if-eqz v0, :cond_d

    instance-of v0, p2, Lorg/mozilla/javascript/ArrowFunction;

    if-eqz v0, :cond_c

    check-cast p1, Lorg/mozilla/javascript/ArrowFunction;

    check-cast p2, Lorg/mozilla/javascript/ArrowFunction;

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/ArrowFunction;->equalObjectGraphs(Lorg/mozilla/javascript/ArrowFunction;Lorg/mozilla/javascript/ArrowFunction;Lorg/mozilla/javascript/c;)Z

    move-result p0

    if-eqz p0, :cond_c

    move v3, v1

    :cond_c
    return v3

    :cond_d
    instance-of v0, p1, Lorg/mozilla/javascript/BoundFunction;

    if-eqz v0, :cond_f

    instance-of v0, p2, Lorg/mozilla/javascript/BoundFunction;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/mozilla/javascript/BoundFunction;

    check-cast p2, Lorg/mozilla/javascript/BoundFunction;

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/BoundFunction;->equalObjectGraphs(Lorg/mozilla/javascript/BoundFunction;Lorg/mozilla/javascript/BoundFunction;Lorg/mozilla/javascript/c;)Z

    move-result p0

    if-eqz p0, :cond_e

    move v3, v1

    :cond_e
    return v3

    :cond_f
    instance-of v0, p1, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz v0, :cond_11

    instance-of v0, p2, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz v0, :cond_10

    check-cast p1, Lorg/mozilla/javascript/NativeSymbol;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeSymbol;->getKey()Lorg/mozilla/javascript/SymbolKey;

    move-result-object p1

    check-cast p2, Lorg/mozilla/javascript/NativeSymbol;

    invoke-virtual {p2}, Lorg/mozilla/javascript/NativeSymbol;->getKey()Lorg/mozilla/javascript/SymbolKey;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move v3, v1

    :cond_10
    return v3

    :cond_11
    return v1
.end method

.method public final i(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 0

    invoke-static {p1}, Lorg/mozilla/javascript/c;->p(Ljava/util/Set;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lorg/mozilla/javascript/c;->p(Ljava/util/Set;)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/c;->g([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
