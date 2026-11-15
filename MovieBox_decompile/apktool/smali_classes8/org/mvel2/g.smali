.class public Lorg/mvel2/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final o:[Ljava/lang/Object;

.field private static final p:Ljava/util/Map;

.field private static final q:Ljava/util/Map;

.field private static final r:Ljava/util/Map;

.field private static final s:Ljava/util/Map;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[C

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Class;

.field private k:Z

.field private l:Z

.field private m:Lorg/mvel2/integration/VariableResolverFactory;

.field private n:Lorg/mvel2/ParserContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v0, Lorg/mvel2/g;->o:[Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v0, Ljava/util/WeakHashMap;

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/mvel2/g;->p:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lorg/mvel2/g;->q:Ljava/util/Map;

    .line 29
    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/mvel2/g;->r:Ljava/util/Map;

    .line 40
    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lorg/mvel2/g;->s:Ljava/util/Map;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mvel2/g;->a:I

    .line 3
    iput v0, p0, Lorg/mvel2/g;->b:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lorg/mvel2/g;->k:Z

    .line 6
    iput-boolean v0, p0, Lorg/mvel2/g;->l:Z

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/g;->d:[C

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/g;->f:I

    iput p1, p0, Lorg/mvel2/g;->e:I

    .line 8
    iput-object p2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    .line 9
    new-instance p1, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;

    invoke-direct {p1}, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;-><init>()V

    iput-object p1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method public constructor <init>([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lorg/mvel2/g;->k:Z

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lorg/mvel2/g;->l:Z

    .line 25
    iput-object p1, p0, Lorg/mvel2/g;->d:[C

    .line 26
    iput p2, p0, Lorg/mvel2/g;->a:I

    iput p2, p0, Lorg/mvel2/g;->c:I

    iput p2, p0, Lorg/mvel2/g;->b:I

    .line 27
    iput p3, p0, Lorg/mvel2/g;->e:I

    add-int/2addr p2, p3

    .line 28
    iput p2, p0, Lorg/mvel2/g;->f:I

    .line 29
    iput-object p4, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    .line 30
    iput-object p5, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 31
    iput-object p6, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    .line 32
    iput-object p7, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lorg/mvel2/g;->a:I

    .line 12
    iput v0, p0, Lorg/mvel2/g;->b:I

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lorg/mvel2/g;->k:Z

    .line 15
    iput-boolean v0, p0, Lorg/mvel2/g;->l:Z

    .line 16
    iput-object p1, p0, Lorg/mvel2/g;->d:[C

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/g;->f:I

    iput p1, p0, Lorg/mvel2/g;->e:I

    .line 17
    iput-object p2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    .line 18
    iput-object p3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 19
    iput-object p4, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    .line 20
    iput-object p5, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public static A(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V
    .locals 7

    .line 1
    new-instance v6, Lorg/mvel2/g;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v4, 0x0

    .line 8
    move-object v0, v6

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p1

    .line 11
    move-object v5, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/mvel2/g;-><init>([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v6, p3}, Lorg/mvel2/g;->y(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/g;->f:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    :goto_0
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    .line 8
    .line 9
    iget v1, p0, Lorg/mvel2/g;->b:I

    .line 10
    .line 11
    aget-char v0, v0, v1

    .line 12
    .line 13
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 24
    .line 25
    iget v1, p0, Lorg/mvel2/g;->f:I

    .line 26
    .line 27
    if-ge v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V
    .locals 5

    .line 1
    sget-object v0, Lorg/mvel2/g;->r:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/WeakHashMap;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x2

    .line 30
    new-array v3, v3, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    aput-object p2, v3, v4

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    aput-object v2, v3, p2

    .line 37
    .line 38
    invoke-direct {p0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Member;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/mvel2/g;->p:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/WeakHashMap;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method private static c(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Member;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/mvel2/g;->q:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/WeakHashMap;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    .line 4
    .line 5
    iget v2, p0, Lorg/mvel2/g;->c:I

    .line 6
    .line 7
    iget v3, p0, Lorg/mvel2/g;->b:I

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Lorg/mvel2/g;->B(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget v4, p0, Lorg/mvel2/g;->c:I

    .line 14
    .line 15
    sub-int/2addr v3, v4

    .line 16
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private static e(Ljava/lang/Class;Ljava/lang/Integer;)[Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/g;->r:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/Map;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, [Ljava/lang/Object;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static f(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 3

    .line 1
    sget-object v0, Lorg/mvel2/g;->s:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, [Ljava/lang/Class;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-object v1, v2

    .line 32
    :cond_1
    return-object v1
.end method

.method private static g(Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/reflect/Member;
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/g;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/WeakHashMap;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/reflect/Member;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static h(Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/reflect/Member;
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/g;->q:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/Map;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/reflect/Member;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method private j()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 4
    .line 5
    :try_start_0
    sget-boolean v0, Lorg/mvel2/d;->h:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/mvel2/g;->u()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    move-object v5, v0

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception v0

    .line 18
    move-object v5, v0

    .line 19
    goto :goto_1

    .line 20
    :catch_2
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :catch_3
    move-exception v0

    .line 23
    move-object v5, v0

    .line 24
    goto :goto_3

    .line 25
    :catch_4
    move-exception v0

    .line 26
    move-object v5, v0

    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :catch_5
    move-exception v0

    .line 30
    move-object v5, v0

    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_0
    invoke-direct {p0}, Lorg/mvel2/g;->n()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object v0

    .line 38
    :goto_0
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "unknown exception in expression: "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    new-instance v2, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    .line 65
    .line 66
    iget v4, p0, Lorg/mvel2/g;->b:I

    .line 67
    .line 68
    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 69
    .line 70
    move-object v1, v0

    .line 71
    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :goto_1
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "null pointer exception in property: "

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    new-instance v2, Ljava/lang/String;

    .line 88
    .line 89
    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    .line 90
    .line 91
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    .line 102
    .line 103
    iget v4, p0, Lorg/mvel2/g;->b:I

    .line 104
    .line 105
    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 106
    .line 107
    move-object v1, v0

    .line 108
    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :goto_2
    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    .line 113
    .line 114
    iget v2, p0, Lorg/mvel2/g;->c:I

    .line 115
    .line 116
    invoke-static {v0, v1, v2}, Lorg/mvel2/util/f;->a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    throw v0

    .line 121
    :goto_3
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 122
    .line 123
    iget v1, p0, Lorg/mvel2/g;->e:I

    .line 124
    .line 125
    if-lt v0, v1, :cond_1

    .line 126
    .line 127
    add-int/lit8 v1, v1, -0x1

    .line 128
    .line 129
    iput v1, p0, Lorg/mvel2/g;->b:I

    .line 130
    .line 131
    :cond_1
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v2, "array or collections index out of bounds in property: "

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    new-instance v2, Ljava/lang/String;

    .line 144
    .line 145
    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    .line 146
    .line 147
    iget v4, p0, Lorg/mvel2/g;->b:I

    .line 148
    .line 149
    iget v6, p0, Lorg/mvel2/g;->e:I

    .line 150
    .line 151
    invoke-direct {v2, v3, v4, v6}, Ljava/lang/String;-><init>([CII)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    .line 162
    .line 163
    iget v4, p0, Lorg/mvel2/g;->b:I

    .line 164
    .line 165
    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 166
    .line 167
    move-object v1, v0

    .line 168
    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    .line 169
    .line 170
    .line 171
    throw v0

    .line 172
    :goto_4
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    .line 173
    .line 174
    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    .line 175
    .line 176
    iget v4, p0, Lorg/mvel2/g;->b:I

    .line 177
    .line 178
    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 179
    .line 180
    const-string v2, "could not access property"

    .line 181
    .line 182
    move-object v1, v0

    .line 183
    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :goto_5
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    .line 188
    .line 189
    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    .line 190
    .line 191
    iget v4, p0, Lorg/mvel2/g;->b:I

    .line 192
    .line 193
    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 194
    .line 195
    const-string v2, "could not access property"

    .line 196
    .line 197
    move-object v1, v0

    .line 198
    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    .line 199
    .line 200
    .line 201
    throw v0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/mvel2/g;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {v0}, Lorg/mvel2/g;->j()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v6, Lorg/mvel2/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v0, v6

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move-object v5, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/mvel2/g;-><init>([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v6}, Lorg/mvel2/g;->j()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static m([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Lorg/mvel2/g;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lorg/mvel2/g;-><init>([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v8}, Lorg/mvel2/g;->j()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private n()Ljava/lang/Object;
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/g;->f:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_b

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/mvel2/g;->w()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    if-eq v0, v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lorg/mvel2/g;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {p0, v0, v2}, Lorg/mvel2/g;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {p0, v0, v2}, Lorg/mvel2/g;->t(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 57
    .line 58
    if-nez v0, :cond_6

    .line 59
    .line 60
    invoke-static {}, Lyz/d;->d()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-static {}, Lyz/d;->a()Lyz/c;

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :cond_4
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 75
    .line 76
    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-direct {p0, v0, v2}, Lorg/mvel2/g;->p(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 85
    .line 86
    if-nez v0, :cond_6

    .line 87
    .line 88
    invoke-static {}, Lyz/d;->e()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-static {}, Lyz/d;->b()Lyz/c;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lorg/mvel2/g;->l:Z

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    if-eqz v0, :cond_8

    .line 106
    .line 107
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 108
    .line 109
    if-nez v0, :cond_7

    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_7
    iput-boolean v2, p0, Lorg/mvel2/g;->l:Z

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_8
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 116
    .line 117
    if-nez v0, :cond_a

    .line 118
    .line 119
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 120
    .line 121
    iget v3, p0, Lorg/mvel2/g;->f:I

    .line 122
    .line 123
    if-lt v0, v3, :cond_9

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_9
    throw v1

    .line 127
    :cond_a
    :goto_2
    iput-boolean v2, p0, Lorg/mvel2/g;->k:Z

    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_b
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 132
    .line 133
    return-object v0
.end method

.method private o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/g;->k:Z

    if-eqz v0, :cond_2

    .line 2
    const-string v0, "this"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p1, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 8
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_4

    .line 9
    sget-boolean v2, Lorg/mvel2/d;->j:Z

    if-eqz v2, :cond_3

    const-string v2, "class"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p1

    .line 10
    :cond_3
    move-object v2, p1

    check-cast v2, Ljava/lang/Class;

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 12
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mvel2/g;->g(Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/reflect/Member;

    move-result-object v3

    if-nez v3, :cond_5

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, p2}, Lorg/mvel2/util/n;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Member;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/mvel2/g;->b(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Member;)V

    move-object v3, v4

    .line 14
    :cond_5
    nop

    instance-of v4, v3, Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 15
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/Method;

    sget-object v1, Lorg/mvel2/g;->o:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 16
    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 18
    new-instance v1, Lorg/mvel2/CompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name collision between innerclass: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; and bean accessor: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->c:I

    invoke-direct {v1, p1, p2, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :catch_1
    :cond_6
    throw v0

    .line 20
    :catch_2
    monitor-enter v3

    .line 21
    :try_start_2
    move-object p2, v3

    check-cast p2, Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 22
    move-object p2, v3

    check-cast p2, Ljava/lang/reflect/Method;

    sget-object v0, Lorg/mvel2/g;->o:[Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    :try_start_3
    move-object p2, v3

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    monitor-exit v3

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v3

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    throw p1

    .line 24
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_7
    if-eqz v3, :cond_8

    .line 25
    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lorg/mvel2/util/p;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :cond_8
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_b

    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lorg/mvel2/g;->l:Z

    if-eqz v4, :cond_b

    .line 28
    :cond_9
    instance-of v1, p1, Lorg/mvel2/ast/Proto$b;

    if-eqz v1, :cond_a

    .line 29
    check-cast p1, Lorg/mvel2/ast/Proto$b;

    invoke-virtual {p1, p2}, Lorg/mvel2/ast/Proto$b;->c(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    sget-object v2, Lorg/mvel2/util/m;->a:[Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, v1, v2}, Lorg/mvel2/ast/Proto$c;->c(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 30
    :cond_a
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :cond_b
    const-string v3, "length"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 32
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_c
    if-eqz v1, :cond_11

    .line 33
    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_2
    if-ge v5, v3, :cond_10

    aget-object v4, v2, v5

    .line 35
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 36
    iget-object p2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-virtual {p2}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mvel2/ParserConfiguration;->isAllowNakedMethCall()Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_3

    :cond_d
    sget-boolean p2, Lorg/mvel2/d;->g:Z

    if-eqz p2, :cond_e

    .line 37
    :goto_3
    sget-object p2, Lorg/mvel2/util/m;->a:[Ljava/lang/Object;

    invoke-virtual {v4, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    return-object v4

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 38
    :cond_10
    :try_start_4
    iget-object v2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-static {v2, v1, v3}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    return-object p1

    .line 39
    :cond_11
    invoke-static {v2}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 40
    instance-of v1, p1, Lorg/mvel2/ast/b;

    if-eqz v1, :cond_13

    .line 41
    check-cast p1, Lorg/mvel2/ast/d;

    invoke-virtual {p1}, Lorg/mvel2/ast/d;->c()Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 42
    :cond_12
    invoke-static {v2}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;

    throw v0

    .line 43
    :catch_3
    :cond_13
    invoke-virtual {p0}, Lorg/mvel2/g;->C()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 44
    instance-of p1, v1, Ljava/lang/Class;

    if-nez p1, :cond_15

    instance-of p1, v1, Ljava/lang/reflect/Method;

    if-eqz p1, :cond_14

    goto :goto_4

    .line 45
    :cond_14
    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    :goto_4
    return-object v1

    .line 46
    :cond_16
    iget-object v0, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->isAllowNakedMethCall()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_5

    :cond_17
    sget-boolean v0, Lorg/mvel2/d;->g:Z

    if-eqz v0, :cond_18

    .line 47
    :goto_5
    invoke-direct {p0, p1, p2}, Lorg/mvel2/g;->t(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_18
    if-nez p1, :cond_19

    .line 48
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unresolvable property or identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->c:I

    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    .line 49
    :cond_19
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; in class: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->c:I

    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw v0
.end method

.method private p(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lyz/d;->f(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 24
    .line 25
    invoke-static {p1, p2, v0}, Lyz/a;->c(Ljava/lang/Object;Ljava/lang/String;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/mvel2/g;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private q()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    return-object v0
.end method

.method private r(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lorg/mvel2/g;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "null pointer on indexed access for: "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    .line 39
    .line 40
    iget p2, p0, Lorg/mvel2/g;->b:I

    .line 41
    .line 42
    add-int/lit8 p2, p2, 0x1

    .line 43
    .line 44
    iput p2, p0, Lorg/mvel2/g;->b:I

    .line 45
    .line 46
    invoke-direct {p0}, Lorg/mvel2/g;->D()V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 50
    .line 51
    iget v1, p0, Lorg/mvel2/g;->f:I

    .line 52
    .line 53
    if-eq v0, v1, :cond_9

    .line 54
    .line 55
    const/16 v0, 0x5d

    .line 56
    .line 57
    invoke-direct {p0, v0}, Lorg/mvel2/g;->x(C)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_9

    .line 62
    .line 63
    new-instance v0, Ljava/lang/String;

    .line 64
    .line 65
    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    .line 66
    .line 67
    iget v2, p0, Lorg/mvel2/g;->b:I

    .line 68
    .line 69
    add-int/lit8 v3, v2, 0x1

    .line 70
    .line 71
    iput v3, p0, Lorg/mvel2/g;->b:I

    .line 72
    .line 73
    sub-int/2addr v2, p2

    .line 74
    invoke-direct {v0, v1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    .line 75
    .line 76
    .line 77
    instance-of p2, p1, Ljava/util/Map;

    .line 78
    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    move-object p2, p1

    .line 82
    check-cast p2, Ljava/util/Map;

    .line 83
    .line 84
    iget-object v1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 85
    .line 86
    invoke-static {v0, p1, v1}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_2
    instance-of p2, p1, Ljava/util/List;

    .line 96
    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    move-object p2, p1

    .line 100
    check-cast p2, Ljava/util/List;

    .line 101
    .line 102
    iget-object v1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 103
    .line 104
    invoke-static {v0, p1, v1}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :cond_3
    instance-of p2, p1, Ljava/util/Collection;

    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    if-eqz p2, :cond_6

    .line 123
    .line 124
    iget-object p2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 125
    .line 126
    invoke-static {v0, p1, p2}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    check-cast p2, Ljava/lang/Integer;

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    check-cast p1, Ljava/util/Collection;

    .line 137
    .line 138
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-gt p2, v0, :cond_5

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    :goto_1
    if-ge v1, p2, :cond_4

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    return-object p1

    .line 161
    :cond_5
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    .line 162
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v1, "index ["

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p2, "] out of bounds on collections"

    .line 177
    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    .line 186
    .line 187
    iget v1, p0, Lorg/mvel2/g;->b:I

    .line 188
    .line 189
    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 190
    .line 191
    invoke-direct {p1, p2, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    .line 192
    .line 193
    .line 194
    throw p1

    .line 195
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    if-eqz p2, :cond_7

    .line 204
    .line 205
    iget-object p2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 206
    .line 207
    invoke-static {v0, p1, p2}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    check-cast p2, Ljava/lang/Integer;

    .line 212
    .line 213
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    return-object p1

    .line 222
    :cond_7
    instance-of p2, p1, Ljava/lang/CharSequence;

    .line 223
    .line 224
    if-eqz p2, :cond_8

    .line 225
    .line 226
    move-object p2, p1

    .line 227
    check-cast p2, Ljava/lang/CharSequence;

    .line 228
    .line 229
    iget-object v1, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 230
    .line 231
    invoke-static {v0, p1, v1}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Ljava/lang/Integer;

    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    return-object p1

    .line 250
    :cond_8
    :try_start_0
    iget-object p2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 251
    .line 252
    move-object v0, p1

    .line 253
    check-cast v0, Ljava/lang/Class;

    .line 254
    .line 255
    new-instance v2, Lorg/mvel2/ast/TypeDescriptor;

    .line 256
    .line 257
    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    .line 258
    .line 259
    iget v4, p0, Lorg/mvel2/g;->a:I

    .line 260
    .line 261
    iget v5, p0, Lorg/mvel2/g;->e:I

    .line 262
    .line 263
    invoke-direct {v2, v3, v4, v5, v1}, Lorg/mvel2/ast/TypeDescriptor;-><init>([CIII)V

    .line 264
    .line 265
    .line 266
    invoke-static {p2, v0, v2}, Lorg/mvel2/ast/TypeDescriptor;->getClassReference(Lorg/mvel2/ParserContext;Ljava/lang/Class;Lorg/mvel2/ast/TypeDescriptor;)Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    return-object p1

    .line 271
    :catch_0
    move-exception p2

    .line 272
    move-object v4, p2

    .line 273
    new-instance p2, Lorg/mvel2/PropertyAccessException;

    .line 274
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v1, "illegal use of []: unknown type: "

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    .line 301
    .line 302
    iget v3, p0, Lorg/mvel2/g;->c:I

    .line 303
    .line 304
    iget-object v5, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 305
    .line 306
    move-object v0, p2

    .line 307
    invoke-direct/range {v0 .. v5}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    .line 308
    .line 309
    .line 310
    throw p2

    .line 311
    :cond_9
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    .line 312
    .line 313
    iget-object p2, p0, Lorg/mvel2/g;->d:[C

    .line 314
    .line 315
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 316
    .line 317
    iget-object v1, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 318
    .line 319
    const-string v2, "unterminated \'[\'"

    .line 320
    .line 321
    invoke-direct {p1, v2, p2, v0, v1}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    .line 322
    .line 323
    .line 324
    throw p1
.end method

.method private s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lorg/mvel2/g;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return-object p2

    .line 17
    :cond_1
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 22
    .line 23
    invoke-direct {p0}, Lorg/mvel2/g;->D()V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lorg/mvel2/g;->b:I

    .line 27
    .line 28
    iget v2, p0, Lorg/mvel2/g;->f:I

    .line 29
    .line 30
    if-eq v1, v2, :cond_e

    .line 31
    .line 32
    const/16 v1, 0x5d

    .line 33
    .line 34
    invoke-direct {p0, v1}, Lorg/mvel2/g;->x(C)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_e

    .line 39
    .line 40
    new-instance v1, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    .line 43
    .line 44
    iget v3, p0, Lorg/mvel2/g;->b:I

    .line 45
    .line 46
    add-int/lit8 v4, v3, 0x1

    .line 47
    .line 48
    iput v4, p0, Lorg/mvel2/g;->b:I

    .line 49
    .line 50
    sub-int/2addr v3, v0

    .line 51
    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    .line 52
    .line 53
    .line 54
    instance-of v0, p1, Ljava/util/Map;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    const-class v0, Ljava/util/Map;

    .line 59
    .line 60
    invoke-static {v0}, Lyz/d;->f(Ljava/lang/Class;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    move-object p2, p1

    .line 67
    check-cast p2, Ljava/util/Map;

    .line 68
    .line 69
    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 70
    .line 71
    invoke-static {v1, p1, v0}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_2
    invoke-static {v0}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;

    .line 81
    .line 82
    .line 83
    throw p2

    .line 84
    :cond_3
    instance-of v0, p1, Ljava/util/List;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    const-class v0, Ljava/util/List;

    .line 89
    .line 90
    invoke-static {v0}, Lyz/d;->f(Ljava/lang/Class;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_4

    .line 95
    .line 96
    move-object p2, p1

    .line 97
    check-cast p2, Ljava/util/List;

    .line 98
    .line 99
    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 100
    .line 101
    invoke-static {v1, p1, v0}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    :cond_4
    invoke-static {v0}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;

    .line 117
    .line 118
    .line 119
    throw p2

    .line 120
    :cond_5
    instance-of v0, p1, Ljava/util/Collection;

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    if-eqz v0, :cond_9

    .line 124
    .line 125
    const-class v0, Ljava/util/Collection;

    .line 126
    .line 127
    invoke-static {v0}, Lyz/d;->f(Ljava/lang/Class;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_8

    .line 132
    .line 133
    iget-object p2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 134
    .line 135
    invoke-static {v1, p1, p2}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    check-cast p2, Ljava/lang/Integer;

    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    check-cast p1, Ljava/util/Collection;

    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-gt p2, v0, :cond_7

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    :goto_0
    if-ge v2, p2, :cond_6

    .line 158
    .line 159
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    return-object p1

    .line 170
    :cond_7
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    .line 171
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v1, "index ["

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string p2, "] out of bounds on collections"

    .line 186
    .line 187
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    .line 195
    .line 196
    iget v1, p0, Lorg/mvel2/g;->b:I

    .line 197
    .line 198
    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 199
    .line 200
    invoke-direct {p1, p2, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    :cond_8
    invoke-static {v0}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;

    .line 205
    .line 206
    .line 207
    throw p2

    .line 208
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_b

    .line 217
    .line 218
    const-class v0, Ljava/lang/reflect/Array;

    .line 219
    .line 220
    invoke-static {v0}, Lyz/d;->f(Ljava/lang/Class;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_a

    .line 225
    .line 226
    iget-object p2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 227
    .line 228
    invoke-static {v1, p1, p2}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    check-cast p2, Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    return-object p1

    .line 243
    :cond_a
    invoke-static {v0}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;

    .line 244
    .line 245
    .line 246
    throw p2

    .line 247
    :cond_b
    instance-of v0, p1, Ljava/lang/CharSequence;

    .line 248
    .line 249
    if-eqz v0, :cond_d

    .line 250
    .line 251
    const-class v0, Ljava/lang/CharSequence;

    .line 252
    .line 253
    invoke-static {v0}, Lyz/d;->f(Ljava/lang/Class;)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-nez v2, :cond_c

    .line 258
    .line 259
    move-object p2, p1

    .line 260
    check-cast p2, Ljava/lang/CharSequence;

    .line 261
    .line 262
    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 263
    .line 264
    invoke-static {v1, p1, v0}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Ljava/lang/Integer;

    .line 269
    .line 270
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    return-object p1

    .line 283
    :cond_c
    invoke-static {v0}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;

    .line 284
    .line 285
    .line 286
    throw p2

    .line 287
    :cond_d
    :try_start_0
    iget-object p2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 288
    .line 289
    move-object v0, p1

    .line 290
    check-cast v0, Ljava/lang/Class;

    .line 291
    .line 292
    new-instance v1, Lorg/mvel2/ast/TypeDescriptor;

    .line 293
    .line 294
    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    .line 295
    .line 296
    iget v4, p0, Lorg/mvel2/g;->a:I

    .line 297
    .line 298
    iget v5, p0, Lorg/mvel2/g;->f:I

    .line 299
    .line 300
    sub-int/2addr v5, v4

    .line 301
    invoke-direct {v1, v3, v4, v5, v2}, Lorg/mvel2/ast/TypeDescriptor;-><init>([CIII)V

    .line 302
    .line 303
    .line 304
    invoke-static {p2, v0, v1}, Lorg/mvel2/ast/TypeDescriptor;->getClassReference(Lorg/mvel2/ParserContext;Ljava/lang/Class;Lorg/mvel2/ast/TypeDescriptor;)Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    return-object p1

    .line 309
    :catch_0
    new-instance p2, Lorg/mvel2/PropertyAccessException;

    .line 310
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v1, "illegal use of []: unknown type: "

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    .line 337
    .line 338
    iget v1, p0, Lorg/mvel2/g;->c:I

    .line 339
    .line 340
    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 341
    .line 342
    invoke-direct {p2, p1, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    .line 343
    .line 344
    .line 345
    throw p2

    .line 346
    :cond_e
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    .line 347
    .line 348
    iget-object p2, p0, Lorg/mvel2/g;->d:[C

    .line 349
    .line 350
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 351
    .line 352
    iget-object v1, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 353
    .line 354
    const-string v2, "unterminated \'[\'"

    .line 355
    .line 356
    invoke-direct {p1, v2, p2, v0, v1}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    .line 357
    .line 358
    .line 359
    throw p1
.end method

.method private t(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v0, "unable to invoke method: "

    iget v1, p0, Lorg/mvel2/g;->b:I

    .line 2
    iget v2, p0, Lorg/mvel2/g;->f:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    aget-char v4, v2, v1

    const/16 v5, 0x28

    if-ne v4, v5, :cond_0

    invoke-static {v2, v1, v5}, Lorg/mvel2/util/m;->c([CIC)I

    move-result v2

    iput v2, p0, Lorg/mvel2/g;->b:I

    sub-int v4, v2, v1

    if-le v4, v3, :cond_0

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/mvel2/g;->d:[C

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v4, v5, v6, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_0
    const-string v4, ""

    .line 3
    :goto_0
    iget v1, p0, Lorg/mvel2/g;->b:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/mvel2/g;->b:I

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 5
    sget-object v1, Lorg/mvel2/util/m;->a:[Ljava/lang/Object;

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v5, -0x1

    invoke-static {v1, v2, v5}, Lorg/mvel2/util/m;->y0([CII)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    move v6, v2

    .line 8
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 9
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    iget-object v8, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    iget-object v9, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v7, v8, v9}, Lorg/mvel2/d;->q([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v5

    .line 10
    :goto_2
    iget-boolean v5, p0, Lorg/mvel2/g;->k:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    if-eqz v5, :cond_7

    invoke-interface {v5, p2}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 11
    iget-object v5, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v5, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v5

    invoke-interface {v5}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 12
    instance-of v7, v5, Ljava/lang/reflect/Method;

    if-eqz v7, :cond_3

    .line 13
    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    .line 14
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 15
    :cond_3
    instance-of v7, v5, Lorg/mvel2/util/MethodStub;

    if-eqz v7, :cond_4

    .line 16
    check-cast v5, Lorg/mvel2/util/MethodStub;

    invoke-virtual {v5}, Lorg/mvel2/util/MethodStub;->getClassReference()Ljava/lang/Class;

    move-result-object p1

    .line 17
    invoke-virtual {v5}, Lorg/mvel2/util/MethodStub;->getMethodName()Ljava/lang/String;

    move-result-object p2

    .line 18
    :goto_3
    iput-boolean v2, p0, Lorg/mvel2/g;->k:Z

    goto :goto_4

    .line 19
    :cond_4
    instance-of v0, v5, Lorg/mvel2/ast/b;

    if-eqz v0, :cond_5

    .line 20
    check-cast v5, Lorg/mvel2/ast/b;

    invoke-virtual {v5}, Lorg/mvel2/ast/b;->b()Lorg/mvel2/ast/Function;

    move-result-object p1

    array-length p2, v1

    invoke-virtual {p1, p2}, Lorg/mvel2/ast/Function;->checkArgumentCount(I)V

    .line 21
    iget-object p1, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    iget-object p2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-virtual {v5, v6, p1, p2, v1}, Lorg/mvel2/ast/b;->a(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :cond_5
    new-instance v0, Lorg/mvel2/OptimizationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to optimize a method call for a reference that does not point to a method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (reference is type: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    if-eqz p1, :cond_16

    .line 23
    iget-object v5, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    instance-of v5, p1, Ljava/lang/Class;

    if-eqz v5, :cond_9

    move-object v5, p1

    check-cast v5, Ljava/lang/Class;

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 24
    :goto_5
    iput-object v6, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    .line 25
    const-class v7, Lorg/mvel2/ast/Proto$b;

    if-ne v5, v7, :cond_a

    .line 26
    check-cast p1, Lorg/mvel2/ast/Proto$b;

    invoke-virtual {p1, p2}, Lorg/mvel2/ast/Proto$b;->c(Ljava/lang/Object;)Lorg/mvel2/ast/Proto$c;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-virtual {p1, v6, p2, v0, v1}, Lorg/mvel2/ast/Proto$c;->c(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :cond_a
    invoke-static {p2, v4}, Lorg/mvel2/g;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/mvel2/g;->e(Ljava/lang/Class;Ljava/lang/Integer;)[Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 28
    aget-object v8, v7, v2

    check-cast v8, Ljava/lang/reflect/Method;

    .line 29
    aget-object v7, v7, v3

    check-cast v7, [Ljava/lang/Class;

    goto :goto_6

    :cond_b
    move-object v7, v6

    move-object v8, v7

    :goto_6
    if-nez v8, :cond_d

    .line 30
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static {v1, p2, v5, v8, v2}, Lorg/mvel2/util/m;->L([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 31
    invoke-static {p2, v4}, Lorg/mvel2/g;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lorg/mvel2/g;->a(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V

    .line 32
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    :cond_c
    if-nez v8, :cond_d

    .line 33
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static {v1, p2, v5, v8, v2}, Lorg/mvel2/util/m;->L([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 34
    invoke-static {p2, v4}, Lorg/mvel2/g;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lorg/mvel2/g;->a(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V

    .line 35
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    :cond_d
    if-nez v8, :cond_e

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v5, v9, :cond_e

    instance-of v9, p1, Ljava/lang/Class;

    if-nez v9, :cond_e

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 38
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static {v1, p2, v5, v8, v2}, Lorg/mvel2/util/m;->L([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 39
    invoke-static {p2, v4}, Lorg/mvel2/g;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lorg/mvel2/g;->a(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V

    .line 40
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 41
    :cond_e
    instance-of v9, p1, Lorg/mvel2/ast/d;

    if-eqz v9, :cond_f

    .line 42
    move-object v9, p1

    check-cast v9, Lorg/mvel2/ast/d;

    invoke-virtual {v9}, Lorg/mvel2/ast/d;->c()Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object v9

    .line 43
    invoke-interface {v9, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v10

    invoke-interface {v10}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 44
    instance-of v11, v10, Lorg/mvel2/ast/d;

    if-eqz v11, :cond_f

    .line 45
    check-cast v10, Lorg/mvel2/ast/d;

    iget-object p2, p0, Lorg/mvel2/g;->g:Ljava/lang/Object;

    new-instance v0, Lorg/mvel2/ast/InvokationContextFactory;

    iget-object v2, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-direct {v0, v2, v9}, Lorg/mvel2/ast/InvokationContextFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-virtual {v10, p1, p2, v0, v1}, Lorg/mvel2/ast/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    if-nez v8, :cond_14

    .line 46
    new-instance v0, Lorg/mvel2/util/s;

    invoke-direct {v0}, Lorg/mvel2/util/s;-><init>()V

    .line 47
    :goto_7
    array-length v4, v1

    if-ge v2, v4, :cond_12

    .line 48
    aget-object v4, v1, v2

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_10
    move-object v4, v6

    :goto_8
    invoke-virtual {v0, v4}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 49
    array-length v4, v1

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_11

    const-string v4, ", "

    invoke-virtual {v0, v4}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 50
    :cond_12
    const-string v2, "size"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    array-length v2, v1

    if-nez v2, :cond_13

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 51
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 52
    :cond_13
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to resolve method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") [arglength="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->c:I

    iget-object v2, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    .line 53
    :cond_14
    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_15

    .line 54
    aget-object v3, v1, v2

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v6

    invoke-static {v7, v2, v6}, Lorg/mvel2/util/t;->b([Ljava/lang/Class;IZ)Ljava/lang/Class;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 55
    :cond_15
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/mvel2/util/p;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/mvel2/g;->j:Ljava/lang/Class;

    .line 56
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v2

    invoke-static {v7, v1, v2}, Lorg/mvel2/util/t;->a([Ljava/lang/Class;[Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_a

    :catch_1
    move-exception p1

    goto :goto_b

    .line 57
    :goto_a
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->b:I

    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p1

    .line 58
    :goto_b
    throw p1

    .line 59
    :catch_2
    :try_start_1
    invoke-static {p2, v4}, Lorg/mvel2/g;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Lorg/mvel2/util/m;->V(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lorg/mvel2/g;->a(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Method;)V

    .line 60
    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    move-object v5, p1

    .line 61
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    iget v4, p0, Lorg/mvel2/g;->b:I

    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p1

    .line 62
    :cond_16
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such method or function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v1, p0, Lorg/mvel2/g;->b:I

    invoke-direct {p1, p2, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
.end method

.method private u()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/g;->f:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_6

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/mvel2/g;->w()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lorg/mvel2/g;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {p0, v0, v1}, Lorg/mvel2/g;->r(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {p0, v0, v1}, Lorg/mvel2/g;->t(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {p0, v0, v1}, Lorg/mvel2/g;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 69
    .line 70
    :goto_1
    iget-boolean v0, p0, Lorg/mvel2/g;->l:Z

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 76
    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    return-object v0

    .line 81
    :cond_4
    iput-boolean v1, p0, Lorg/mvel2/g;->l:Z

    .line 82
    .line 83
    :cond_5
    iput-boolean v1, p0, Lorg/mvel2/g;->k:Z

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_6
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 87
    .line 88
    return-object v0
.end method

.method private v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lorg/mvel2/g;->a:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/g;->b:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    move-object v1, v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Lorg/mvel2/g;->d:[C

    .line 13
    .line 14
    sub-int/2addr v1, v0

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    .line 26
    .line 27
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 28
    .line 29
    add-int/lit8 v3, v0, 0x1

    .line 30
    .line 31
    iget v4, p0, Lorg/mvel2/g;->f:I

    .line 32
    .line 33
    const/16 v5, 0x7b

    .line 34
    .line 35
    iget-object v6, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    .line 36
    .line 37
    invoke-static {v2, v0, v4, v5, v6}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 42
    .line 43
    sub-int v4, v0, v3

    .line 44
    .line 45
    iget-object v6, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    .line 46
    .line 47
    move-object v5, p1

    .line 48
    invoke-static/range {v1 .. v6}, Lorg/mvel2/util/m;->z0(Ljava/lang/String;[CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 56
    .line 57
    return-object p1
.end method

.method private w()I
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/g;->b:I

    .line 4
    .line 5
    iput v1, p0, Lorg/mvel2/g;->c:I

    .line 6
    .line 7
    aget-char v2, v0, v1

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    const/16 v4, 0x7b

    .line 11
    .line 12
    const/16 v5, 0x5b

    .line 13
    .line 14
    const/16 v6, 0x3f

    .line 15
    .line 16
    const/4 v7, 0x2

    .line 17
    const/16 v8, 0x2e

    .line 18
    .line 19
    const/4 v9, 0x1

    .line 20
    if-eq v2, v8, :cond_2

    .line 21
    .line 22
    if-eq v2, v6, :cond_6

    .line 23
    .line 24
    if-eq v2, v5, :cond_1

    .line 25
    .line 26
    if-eq v2, v4, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    sub-int/2addr v1, v9

    .line 30
    aget-char v0, v0, v1

    .line 31
    .line 32
    if-ne v0, v8, :cond_7

    .line 33
    .line 34
    return v3

    .line 35
    :cond_1
    return v7

    .line 36
    :cond_2
    :goto_0
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 37
    .line 38
    iget v1, p0, Lorg/mvel2/g;->f:I

    .line 39
    .line 40
    if-ge v0, v1, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    .line 43
    .line 44
    aget-char v0, v1, v0

    .line 45
    .line 46
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 53
    .line 54
    add-int/2addr v0, v9

    .line 55
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget v0, p0, Lorg/mvel2/g;->c:I

    .line 59
    .line 60
    add-int/lit8 v1, v0, 0x1

    .line 61
    .line 62
    iget v2, p0, Lorg/mvel2/g;->f:I

    .line 63
    .line 64
    if-eq v1, v2, :cond_6

    .line 65
    .line 66
    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    .line 67
    .line 68
    add-int/lit8 v2, v0, 0x1

    .line 69
    .line 70
    iput v2, p0, Lorg/mvel2/g;->c:I

    .line 71
    .line 72
    iput v2, p0, Lorg/mvel2/g;->b:I

    .line 73
    .line 74
    aget-char v1, v1, v2

    .line 75
    .line 76
    if-eq v1, v6, :cond_5

    .line 77
    .line 78
    if-eq v1, v4, :cond_4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    return v3

    .line 82
    :cond_5
    add-int/2addr v0, v7

    .line 83
    iput v0, p0, Lorg/mvel2/g;->c:I

    .line 84
    .line 85
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 86
    .line 87
    iput-boolean v9, p0, Lorg/mvel2/g;->l:Z

    .line 88
    .line 89
    :cond_6
    :goto_1
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 90
    .line 91
    iget v1, p0, Lorg/mvel2/g;->a:I

    .line 92
    .line 93
    if-ne v0, v1, :cond_7

    .line 94
    .line 95
    iget v0, p0, Lorg/mvel2/g;->c:I

    .line 96
    .line 97
    add-int/2addr v0, v9

    .line 98
    iput v0, p0, Lorg/mvel2/g;->c:I

    .line 99
    .line 100
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 101
    .line 102
    iput-boolean v9, p0, Lorg/mvel2/g;->l:Z

    .line 103
    .line 104
    :cond_7
    :goto_2
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 105
    .line 106
    iget v1, p0, Lorg/mvel2/g;->f:I

    .line 107
    .line 108
    if-ge v0, v1, :cond_8

    .line 109
    .line 110
    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    .line 111
    .line 112
    aget-char v0, v1, v0

    .line 113
    .line 114
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 121
    .line 122
    add-int/2addr v0, v9

    .line 123
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_8
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 127
    .line 128
    iget v1, p0, Lorg/mvel2/g;->f:I

    .line 129
    .line 130
    if-ge v0, v1, :cond_9

    .line 131
    .line 132
    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    .line 133
    .line 134
    aget-char v1, v1, v0

    .line 135
    .line 136
    if-ne v1, v8, :cond_9

    .line 137
    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 139
    .line 140
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_9
    iput v0, p0, Lorg/mvel2/g;->c:I

    .line 144
    .line 145
    :goto_3
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 146
    .line 147
    add-int/2addr v0, v9

    .line 148
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 149
    .line 150
    iget v1, p0, Lorg/mvel2/g;->f:I

    .line 151
    .line 152
    if-ge v0, v1, :cond_a

    .line 153
    .line 154
    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    .line 155
    .line 156
    aget-char v0, v1, v0

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_a

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_a
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 166
    .line 167
    iget v1, p0, Lorg/mvel2/g;->f:I

    .line 168
    .line 169
    const/4 v2, 0x0

    .line 170
    if-ge v0, v1, :cond_e

    .line 171
    .line 172
    :goto_4
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    .line 173
    .line 174
    iget v1, p0, Lorg/mvel2/g;->b:I

    .line 175
    .line 176
    aget-char v0, v0, v1

    .line 177
    .line 178
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_b

    .line 183
    .line 184
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 185
    .line 186
    add-int/2addr v0, v9

    .line 187
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_b
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    .line 191
    .line 192
    iget v1, p0, Lorg/mvel2/g;->b:I

    .line 193
    .line 194
    aget-char v0, v0, v1

    .line 195
    .line 196
    const/16 v1, 0x28

    .line 197
    .line 198
    if-eq v0, v1, :cond_d

    .line 199
    .line 200
    if-eq v0, v5, :cond_c

    .line 201
    .line 202
    return v2

    .line 203
    :cond_c
    return v7

    .line 204
    :cond_d
    return v9

    .line 205
    :cond_e
    return v2
.end method

.method private x(C)Z
    .locals 5

    .line 1
    :goto_0
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/g;->f:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    .line 8
    .line 9
    aget-char v3, v2, v0

    .line 10
    .line 11
    const/16 v4, 0x22

    .line 12
    .line 13
    if-eq v3, v4, :cond_0

    .line 14
    .line 15
    const/16 v4, 0x27

    .line 16
    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {v3, v2, v0, v1}, Lorg/mvel2/util/m;->h(C[CII)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 25
    .line 26
    :goto_1
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    .line 27
    .line 28
    iget v1, p0, Lorg/mvel2/g;->b:I

    .line 29
    .line 30
    aget-char v0, v0, v1

    .line 31
    .line 32
    if-ne v0, p1, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    iput v1, p0, Lorg/mvel2/g;->b:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p1, 0x1

    .line 42
    return p1
.end method

.method private y(Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    const-class v2, Ljava/lang/reflect/Array;

    const-class v3, Ljava/util/List;

    const-class v4, Ljava/util/Map;

    iget-object v5, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iput-object v5, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    .line 2
    :try_start_0
    iget v5, p0, Lorg/mvel2/g;->f:I

    .line 3
    iget-object v6, p0, Lorg/mvel2/g;->d:[C

    invoke-static {v6}, Lorg/mvel2/util/m;->C([C)I

    move-result v6

    iput v6, p0, Lorg/mvel2/g;->f:I

    .line 4
    invoke-direct {p0}, Lorg/mvel2/g;->j()Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    if-eqz v6, :cond_1d

    .line 5
    iput v5, p0, Lorg/mvel2/g;->f:I

    .line 6
    invoke-direct {p0}, Lorg/mvel2/g;->w()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_d

    .line 7
    iget v0, p0, Lorg/mvel2/g;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 8
    invoke-direct {p0}, Lorg/mvel2/g;->D()V

    .line 9
    iget v1, p0, Lorg/mvel2/g;->b:I

    iget v5, p0, Lorg/mvel2/g;->e:I

    if-eq v1, v5, :cond_c

    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lorg/mvel2/g;->x(C)Z

    move-result v1

    if-nez v1, :cond_c

    .line 10
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/mvel2/g;->d:[C

    iget v6, p0, Lorg/mvel2/g;->b:I

    sub-int/2addr v6, v0

    invoke-direct {v1, v5, v0, v6}, Ljava/lang/String;-><init>([CII)V

    .line 11
    sget-boolean v0, Lorg/mvel2/d;->h:Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ": not a recognized collection type: "

    const-string v6, "cannot bind to collection property: "

    const-class v8, Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 12
    :try_start_1
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 13
    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v4, p1

    goto/16 :goto_8

    :catch_1
    move-exception p1

    move-object v4, p1

    goto/16 :goto_9

    .line 14
    :cond_0
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 15
    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3, v8}, Lorg/mvel2/d;->m(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3, v8}, Lorg/mvel2/d;->m(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_0
    return-void

    .line 19
    :cond_2
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    .line 20
    :cond_3
    iget-object p1, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    throw v7

    .line 21
    :cond_4
    :try_start_2
    iget-object v0, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v9, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v0, v1, v9, p1}, Lyz/a;->d(Ljava/lang/Object;Ljava/lang/String;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    instance-of v9, v0, Ljava/util/Map;

    if-eqz v9, :cond_6

    .line 23
    invoke-static {v4}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 24
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 25
    :cond_5
    invoke-static {v4}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    throw v7

    .line 26
    :cond_6
    :try_start_3
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_8

    .line 27
    invoke-static {v3}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 28
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3, v8}, Lorg/mvel2/d;->m(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 29
    :cond_7
    invoke-static {v3}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0

    throw v7

    .line 30
    :cond_8
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    invoke-static {v2}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 32
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v1, v2, v3, v8}, Lorg/mvel2/d;->m(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_1
    return-void

    .line 33
    :cond_9
    invoke-static {v2}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0

    throw v7

    .line 34
    :cond_a
    :try_start_5
    iget-object p1, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 35
    iget-object p1, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0

    throw v7

    .line 36
    :cond_b
    :try_start_6
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    .line 37
    :cond_c
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    const-string v0, "unterminated \'[\'"

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    .line 38
    :cond_d
    sget-boolean v2, Lorg/mvel2/d;->h:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_2

    .line 39
    :cond_e
    iget-object p1, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;

    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_0

    throw v7

    .line 40
    :cond_f
    :goto_2
    :try_start_7
    invoke-direct {p0}, Lorg/mvel2/g;->d()Ljava/lang/String;

    move-result-object v2

    .line 41
    iget-object v3, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v2, :cond_10

    move v4, v0

    goto :goto_3

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/mvel2/g;->h(Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/reflect/Member;

    move-result-object v3

    if-nez v3, :cond_13

    .line 42
    iget-object v3, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_4

    :cond_11
    const/4 v4, -0x1

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz p1, :cond_12

    iget-object v5, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lorg/mvel2/util/n;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    goto :goto_5

    :cond_12
    iget-object v5, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/mvel2/util/n;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Member;

    move-result-object v5

    :goto_5
    invoke-static {v3, v4, v5}, Lorg/mvel2/g;->c(Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/reflect/Member;)V

    move-object v3, v5

    .line 43
    :cond_13
    instance-of v4, v3, Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v5, ": to "

    const-string v6, "cannot convert type: "

    if-eqz v4, :cond_16

    .line 44
    :try_start_8
    check-cast v3, Ljava/lang/reflect/Method;

    .line 45
    invoke-static {v3}, Lorg/mvel2/g;->f(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v2

    if-eqz p1, :cond_15

    .line 46
    aget-object v4, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 47
    aget-object v4, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 48
    iget-object v4, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 49
    :cond_14
    new-instance v1, Lorg/mvel2/CompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    invoke-direct {v1, p1, v0, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v1

    .line 50
    :cond_15
    iget-object v2, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_16
    if-eqz v3, :cond_19

    .line 51
    check-cast v3, Ljava/lang/reflect/Field;

    if-eqz p1, :cond_18

    .line 52
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 53
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 54
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 55
    :cond_17
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    invoke-direct {v0, p1, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    .line 56
    :cond_18
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    invoke-virtual {v3, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 57
    :cond_19
    iget-object v0, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1a

    .line 58
    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/mvel2/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/g;->m:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v2, v1, v3}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 59
    :cond_1a
    instance-of v1, v0, Lorg/mvel2/ast/b;

    if-eqz v1, :cond_1b

    .line 60
    check-cast v0, Lorg/mvel2/ast/d;

    invoke-virtual {v0}, Lorg/mvel2/ast/d;->c()Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    :goto_6
    return-void

    .line 61
    :cond_1b
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not access/write property ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/g;->i:Ljava/lang/Object;

    if-nez v1, :cond_1c

    const-string v1, "Unknown"

    goto :goto_7

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    .line 62
    :cond_1d
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot bind to null context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    iget v3, p0, Lorg/mvel2/g;->b:I

    iget v4, p0, Lorg/mvel2/g;->e:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/g;->d:[C

    iget v2, p0, Lorg/mvel2/g;->b:I

    iget-object v3, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1
    :try_end_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_0

    .line 63
    :goto_8
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    iget v3, p0, Lorg/mvel2/g;->c:I

    iget-object v5, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    const-string v1, "could not access property"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p1

    .line 64
    :goto_9
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    iget-object v2, p0, Lorg/mvel2/g;->d:[C

    iget v3, p0, Lorg/mvel2/g;->c:I

    iget-object v5, p0, Lorg/mvel2/g;->n:Lorg/mvel2/ParserContext;

    const-string v1, "could not access property"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p1
.end method

.method public static z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/g;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lorg/mvel2/g;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p2}, Lorg/mvel2/g;->y(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected B(I)I
    .locals 2

    .line 1
    :goto_0
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lorg/mvel2/g;->d:[C

    .line 4
    .line 5
    add-int/lit8 v1, p1, -0x1

    .line 6
    .line 7
    aget-char v0, v0, v1

    .line 8
    .line 9
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return p1
.end method

.method protected C()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lorg/mvel2/g;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget v2, p0, Lorg/mvel2/g;->f:I

    .line 5
    .line 6
    add-int/lit8 v3, v2, -0x1

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    move v5, v4

    .line 10
    :goto_0
    iget v6, p0, Lorg/mvel2/g;->a:I

    .line 11
    .line 12
    if-le v3, v6, :cond_13

    .line 13
    .line 14
    iget-object v7, p0, Lorg/mvel2/g;->d:[C

    .line 15
    .line 16
    aget-char v8, v7, v3

    .line 17
    .line 18
    const/16 v9, 0x5c

    .line 19
    .line 20
    const/16 v10, 0x22

    .line 21
    .line 22
    if-eq v8, v10, :cond_10

    .line 23
    .line 24
    const/16 v11, 0x27

    .line 25
    .line 26
    if-eq v8, v11, :cond_d

    .line 27
    .line 28
    const/16 v12, 0x29

    .line 29
    .line 30
    const/4 v13, 0x1

    .line 31
    if-eq v8, v12, :cond_9

    .line 32
    .line 33
    const/16 v12, 0x2e

    .line 34
    .line 35
    if-eq v8, v12, :cond_4

    .line 36
    .line 37
    const/16 v6, 0x7d

    .line 38
    .line 39
    if-eq v8, v6, :cond_0

    .line 40
    .line 41
    goto/16 :goto_a

    .line 42
    .line 43
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 44
    .line 45
    if-lez v3, :cond_12

    .line 46
    .line 47
    if-eqz v13, :cond_12

    .line 48
    .line 49
    iget-object v7, p0, Lorg/mvel2/g;->d:[C

    .line 50
    .line 51
    aget-char v7, v7, v3

    .line 52
    .line 53
    if-eq v7, v10, :cond_3

    .line 54
    .line 55
    if-eq v7, v11, :cond_3

    .line 56
    .line 57
    const/16 v8, 0x7b

    .line 58
    .line 59
    if-eq v7, v8, :cond_2

    .line 60
    .line 61
    if-eq v7, v6, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    add-int/lit8 v13, v13, -0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_2
    if-lez v3, :cond_0

    .line 71
    .line 72
    iget-object v8, p0, Lorg/mvel2/g;->d:[C

    .line 73
    .line 74
    aget-char v12, v8, v3

    .line 75
    .line 76
    if-eq v12, v7, :cond_0

    .line 77
    .line 78
    add-int/lit8 v12, v3, -0x1

    .line 79
    .line 80
    aget-char v8, v8, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    .line 82
    if-eq v8, v9, :cond_0

    .line 83
    .line 84
    add-int/lit8 v3, v3, -0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    if-nez v5, :cond_8

    .line 88
    .line 89
    :try_start_1
    new-instance v5, Ljava/lang/String;

    .line 90
    .line 91
    iput v2, p0, Lorg/mvel2/g;->b:I

    .line 92
    .line 93
    sub-int/2addr v2, v6

    .line 94
    invoke-direct {v5, v7, v6, v2}, Ljava/lang/String;-><init>([CII)V

    .line 95
    .line 96
    .line 97
    sget-boolean v2, Lorg/mvel2/d;->j:Z

    .line 98
    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    const-string v2, ".class"

    .line 102
    .line 103
    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    add-int/lit8 v2, v2, -0x6

    .line 114
    .line 115
    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    :cond_5
    invoke-direct {p0}, Lorg/mvel2/g;->q()Ljava/lang/ClassLoader;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 127
    return-object v0

    .line 128
    :catch_0
    :try_start_2
    invoke-direct {p0}, Lorg/mvel2/g;->q()Ljava/lang/ClassLoader;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    new-instance v5, Ljava/lang/String;

    .line 133
    .line 134
    iget-object v6, p0, Lorg/mvel2/g;->d:[C

    .line 135
    .line 136
    iget v7, p0, Lorg/mvel2/g;->a:I

    .line 137
    .line 138
    sub-int v8, v3, v7

    .line 139
    .line 140
    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    new-instance v5, Ljava/lang/String;

    .line 148
    .line 149
    iget-object v6, p0, Lorg/mvel2/g;->d:[C

    .line 150
    .line 151
    add-int/lit8 v7, v3, 0x1

    .line 152
    .line 153
    iget v8, p0, Lorg/mvel2/g;->f:I

    .line 154
    .line 155
    sub-int/2addr v8, v3

    .line 156
    sub-int/2addr v8, v13

    .line 157
    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 158
    .line 159
    .line 160
    :try_start_3
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 161
    .line 162
    .line 163
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 164
    return-object v0

    .line 165
    :catch_1
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    array-length v3, v2

    .line 170
    :goto_3
    if-ge v4, v3, :cond_7

    .line 171
    .line 172
    aget-object v6, v2, v4

    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_6

    .line 183
    .line 184
    return-object v6

    .line 185
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_7
    return-object v1

    .line 189
    :cond_8
    move v2, v3

    .line 190
    move v5, v4

    .line 191
    goto/16 :goto_a

    .line 192
    .line 193
    :cond_9
    add-int/lit8 v3, v3, -0x1

    .line 194
    .line 195
    move v2, v13

    .line 196
    :goto_4
    if-lez v3, :cond_c

    .line 197
    .line 198
    if-eqz v2, :cond_c

    .line 199
    .line 200
    iget-object v5, p0, Lorg/mvel2/g;->d:[C

    .line 201
    .line 202
    aget-char v5, v5, v3

    .line 203
    .line 204
    if-eq v5, v10, :cond_a

    .line 205
    .line 206
    packed-switch v5, :pswitch_data_0

    .line 207
    .line 208
    .line 209
    goto :goto_6

    .line 210
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :pswitch_1
    add-int/lit8 v2, v2, -0x1

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_a
    :goto_5
    :pswitch_2
    if-lez v3, :cond_b

    .line 217
    .line 218
    iget-object v6, p0, Lorg/mvel2/g;->d:[C

    .line 219
    .line 220
    aget-char v7, v6, v3

    .line 221
    .line 222
    if-eq v7, v5, :cond_b

    .line 223
    .line 224
    add-int/lit8 v7, v3, -0x1

    .line 225
    .line 226
    aget-char v6, v6, v7

    .line 227
    .line 228
    if-eq v6, v9, :cond_b

    .line 229
    .line 230
    add-int/lit8 v3, v3, -0x1

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_b
    :goto_6
    add-int/lit8 v3, v3, -0x1

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_c
    add-int/lit8 v2, v3, 0x1

    .line 237
    .line 238
    move v5, v13

    .line 239
    move v14, v3

    .line 240
    move v3, v2

    .line 241
    move v2, v14

    .line 242
    goto :goto_a

    .line 243
    :cond_d
    :goto_7
    add-int/lit8 v6, v3, -0x1

    .line 244
    .line 245
    if-lez v6, :cond_f

    .line 246
    .line 247
    iget-object v7, p0, Lorg/mvel2/g;->d:[C

    .line 248
    .line 249
    aget-char v8, v7, v6

    .line 250
    .line 251
    if-ne v8, v11, :cond_e

    .line 252
    .line 253
    add-int/lit8 v3, v3, -0x2

    .line 254
    .line 255
    aget-char v3, v7, v3

    .line 256
    .line 257
    if-eq v3, v9, :cond_e

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_e
    move v3, v6

    .line 261
    goto :goto_7

    .line 262
    :cond_f
    :goto_8
    move v3, v6

    .line 263
    goto :goto_a

    .line 264
    :cond_10
    :goto_9
    add-int/lit8 v6, v3, -0x1

    .line 265
    .line 266
    if-lez v6, :cond_f

    .line 267
    .line 268
    iget-object v7, p0, Lorg/mvel2/g;->d:[C

    .line 269
    .line 270
    aget-char v8, v7, v6

    .line 271
    .line 272
    if-ne v8, v10, :cond_11

    .line 273
    .line 274
    add-int/lit8 v3, v3, -0x2

    .line 275
    .line 276
    aget-char v3, v7, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 277
    .line 278
    if-eq v3, v9, :cond_11

    .line 279
    .line 280
    goto :goto_8

    .line 281
    :cond_11
    move v3, v6

    .line 282
    goto :goto_9

    .line 283
    :cond_12
    :goto_a
    add-int/lit8 v3, v3, -0x1

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :catch_2
    iput v0, p0, Lorg/mvel2/g;->b:I

    .line 288
    .line 289
    :cond_13
    return-object v1

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
