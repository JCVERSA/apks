.class public abstract Lhu7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[I

.field public static final h:[[I

.field public static synthetic i:Ljava/lang/Class;

.field public static synthetic j:Ljava/lang/Class;

.field public static synthetic k:Ljava/lang/Class;

.field public static synthetic l:Ljava/lang/Class;

.field public static synthetic m:Ljava/lang/Class;

.field public static synthetic n:Ljava/lang/Class;

.field public static synthetic o:Ljava/lang/Class;

.field public static synthetic p:Ljava/lang/Class;

.field public static synthetic q:Ljava/lang/Class;

.field public static synthetic r:Ljava/lang/Class;

.field public static synthetic s:Ljava/lang/Class;

.field public static synthetic t:Ljava/lang/Class;


# instance fields
.field public a:[[Ljava/lang/Class;

.field public b:[[I

.field public final c:Ljava/util/Map;

.field public final d:Z

.field public final e:Ljava/util/List;

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lhu7;->g:[I

    const/4 v2, 0x1

    new-array v2, v2, [[I

    sput-object v2, Lhu7;->h:[[I

    aput-object v1, v2, v0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lc0d;->d(IFI)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lhu7;->c:Ljava/util/Map;

    invoke-static {v0}, Lc0d;->b(Ljava/util/Map;)Z

    move-result v0

    iput-boolean v0, p0, Lhu7;->d:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lhu7;->e:Ljava/util/List;

    iput-boolean p1, p0, Lhu7;->f:Z

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a(Lar8;)V
    .locals 6

    iget-object v0, p0, Lhu7;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lhu7;->l(Lqq0;)[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    iget-object v1, p0, Lhu7;->a:[[Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [[Ljava/lang/Class;

    iput-object v1, p0, Lhu7;->a:[[Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    aput-object v3, v1, v0

    goto :goto_1

    :cond_0
    array-length v3, v1

    if-gt v3, v0, :cond_1

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [[Ljava/lang/Class;

    array-length v4, v1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lhu7;->a:[[Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    aput-object v1, v3, v0

    goto :goto_1

    :cond_1
    aget-object v3, v1, v0

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    aput-object v3, v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_3

    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {p0, v4, v5}, Lhu7;->e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v1, Lhu7;->g:[I

    iget-boolean v3, p0, Lhu7;->f:Z

    if-eqz v3, :cond_7

    :goto_2
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    invoke-static {v3}, Lybb;->b(Ljava/lang/Class;)I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v4, Lhu7;->g:[I

    if-ne v1, v4, :cond_4

    new-array v1, v0, [I

    :cond_4
    aput v3, v1, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0, v1}, Lhu7;->k(I[I)V

    :cond_7
    iget-boolean v2, p0, Lhu7;->f:Z

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lhu7;->a:[[Ljava/lang/Class;

    aget-object p1, p1, v0

    :goto_3
    invoke-virtual {p0, p1, v1}, Lhu7;->b([Ljava/lang/Class;[I)V

    return-void
.end method

.method public abstract b([Ljava/lang/Class;[I)V
.end method

.method public d([Ljava/lang/Object;[Ljava/lang/Class;[I)V
    .locals 6

    array-length v0, p2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-ge v2, v0, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    :goto_1
    aget v4, p3, v3

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    aget-object v4, p1, v2

    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_1

    aget-object v3, p2, v3

    check-cast v4, Ljava/lang/Number;

    iget-boolean v5, p0, Lhu7;->f:Z

    invoke-static {v4, v3, v5}, Lfreemarker/ext/beans/b;->p(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v3

    if-eqz v3, :cond_1

    aput-object v3, p1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 7

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lhu7;->f:Z

    const-string v1, "java.lang.Object"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lhx0;->m(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p2}, Lhx0;->m(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-ne p1, p2, :cond_3

    return-object p1

    :cond_3
    sget-object v5, Lhu7;->i:Ljava/lang/Class;

    const-string v6, "java.lang.Number"

    if-nez v5, :cond_4

    invoke-static {v6}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lhu7;->i:Ljava/lang/Class;

    :cond_4
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lhu7;->i:Ljava/lang/Class;

    if-nez v5, :cond_5

    invoke-static {v6}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lhu7;->i:Ljava/lang/Class;

    :cond_5
    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object p0, Lhu7;->i:Ljava/lang/Class;

    if-nez p0, :cond_6

    invoke-static {v6}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhu7;->i:Ljava/lang/Class;

    :cond_6
    return-object p0

    :cond_7
    if-nez v0, :cond_8

    if-eqz v4, :cond_11

    :cond_8
    sget-object p0, Lhu7;->j:Ljava/lang/Class;

    if-nez p0, :cond_9

    invoke-static {v1}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhu7;->j:Ljava/lang/Class;

    :cond_9
    return-object p0

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_b

    sget-object p2, Lhu7;->k:Ljava/lang/Class;

    if-nez p2, :cond_11

    const-string p2, "java.lang.Byte"

    invoke-static {p2}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lhu7;->k:Ljava/lang/Class;

    goto :goto_2

    :cond_b
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_c

    sget-object p2, Lhu7;->l:Ljava/lang/Class;

    if-nez p2, :cond_11

    const-string p2, "java.lang.Short"

    invoke-static {p2}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lhu7;->l:Ljava/lang/Class;

    goto :goto_2

    :cond_c
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_d

    sget-object p2, Lhu7;->m:Ljava/lang/Class;

    if-nez p2, :cond_11

    const-string p2, "java.lang.Character"

    invoke-static {p2}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lhu7;->m:Ljava/lang/Class;

    goto :goto_2

    :cond_d
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_e

    sget-object p2, Lhu7;->n:Ljava/lang/Class;

    if-nez p2, :cond_11

    const-string p2, "java.lang.Integer"

    invoke-static {p2}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lhu7;->n:Ljava/lang/Class;

    goto :goto_2

    :cond_e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_f

    sget-object p2, Lhu7;->o:Ljava/lang/Class;

    if-nez p2, :cond_11

    const-string p2, "java.lang.Float"

    invoke-static {p2}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lhu7;->o:Ljava/lang/Class;

    goto :goto_2

    :cond_f
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_10

    sget-object p2, Lhu7;->p:Ljava/lang/Class;

    if-nez p2, :cond_11

    const-string p2, "java.lang.Long"

    invoke-static {p2}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lhu7;->p:Ljava/lang/Class;

    goto :goto_2

    :cond_10
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_11

    sget-object p2, Lhu7;->q:Ljava/lang/Class;

    if-nez p2, :cond_11

    const-string p2, "java.lang.Double"

    invoke-static {p2}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lhu7;->q:Ljava/lang/Class;

    :cond_11
    :goto_2
    invoke-static {p1, p2}, Lu0d;->c(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, p1}, Lu0d;->c(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p0, Lhu7;->j:Ljava/lang/Class;

    if-nez p0, :cond_12

    invoke-static {v1}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhu7;->j:Ljava/lang/Class;

    :cond_12
    return-object p0

    :cond_13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-static {v5, v0, v3, v3}, Lu0d;->h(Ljava/lang/Class;Ljava/lang/Class;ZI)I

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_3

    :cond_15
    invoke-static {v0, v5, v3, v3}, Lu0d;->h(Ljava/lang/Class;Ljava/lang/Class;ZI)I

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_16
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_22

    iget-boolean p0, p0, Lhu7;->f:Z

    if-eqz p0, :cond_20

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lhu7;->j:Ljava/lang/Class;

    if-nez v0, :cond_19

    invoke-static {v1}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhu7;->j:Ljava/lang/Class;

    :cond_19
    if-eq p2, v0, :cond_1a

    return-object p2

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_1b
    sget-object p0, Lhu7;->r:Ljava/lang/Class;

    if-nez p0, :cond_1c

    const-string p0, "java.lang.Cloneable"

    invoke-static {p0}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhu7;->r:Ljava/lang/Class;

    :cond_1c
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_22

    sget-object p0, Lhu7;->s:Ljava/lang/Class;

    if-nez p0, :cond_1d

    const-string p0, "java.io.Serializable"

    invoke-static {p0}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhu7;->s:Ljava/lang/Class;

    :cond_1d
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_22

    sget-object p0, Lhu7;->t:Ljava/lang/Class;

    if-nez p0, :cond_1e

    const-string p0, "java.lang.Comparable"

    invoke-static {p0}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhu7;->t:Ljava/lang/Class;

    :cond_1e
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_22

    sget-object p0, Lhu7;->j:Ljava/lang/Class;

    if-nez p0, :cond_1f

    invoke-static {v1}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhu7;->j:Ljava/lang/Class;

    :cond_1f
    return-object p0

    :cond_20
    sget-object p0, Lhu7;->j:Ljava/lang/Class;

    if-nez p0, :cond_21

    invoke-static {v1}, Lhu7;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lhu7;->j:Ljava/lang/Class;

    :cond_21
    return-object p0

    :cond_22
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public abstract f(Ljava/util/List;Lfreemarker/ext/beans/b;)Lf96;
.end method

.method public final g([Ljava/lang/Object;Z)Le96;
    .locals 2

    new-instance v0, Lag;

    iget-boolean v1, p0, Lhu7;->f:Z

    invoke-direct {v0, p1, v1}, Lag;-><init>([Ljava/lang/Object;Z)V

    iget-boolean p1, p0, Lhu7;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhu7;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le96;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lhu7;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object p1, p0, Lhu7;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le96;

    if-nez p1, :cond_1

    iget-object p1, p0, Lhu7;->e:Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lag;->e(Ljava/util/List;Z)Le96;

    move-result-object p1

    iget-object p0, p0, Lhu7;->c:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-object p1
.end method

.method public h()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lhu7;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final i(I)[I
    .locals 1

    iget-object p0, p0, Lhu7;->b:[[I

    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public j()[[Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lhu7;->a:[[Ljava/lang/Class;

    return-object p0
.end method

.method public final k(I[I)V
    .locals 4

    const-string v0, "srcTypesFlagsByParamIdx"

    invoke-static {v0, p2}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lhu7;->b:[[I

    if-nez p1, :cond_0

    sget-object p1, Lhu7;->h:[[I

    iput-object p1, p0, Lhu7;->b:[[I

    goto :goto_0

    :cond_0
    sget-object p0, Lhu7;->h:[[I

    if-eq p1, p0, :cond_1

    sget-object p0, Lhu7;->g:[I

    aput-object p0, p1, v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lhu7;->b:[[I

    if-nez v1, :cond_3

    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [[I

    iput-object v1, p0, Lhu7;->b:[[I

    goto :goto_1

    :cond_3
    array-length v2, v1

    if-gt v2, p1, :cond_4

    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [[I

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lhu7;->b:[[I

    :cond_4
    :goto_1
    iget-object v1, p0, Lhu7;->b:[[I

    aget-object v2, v1, p1

    if-nez v2, :cond_8

    sget-object v1, Lhu7;->g:[I

    if-eq p2, v1, :cond_7

    array-length v1, p2

    new-array v2, p1, [I

    :goto_2
    if-ge v0, p1, :cond_6

    if-ge v0, v1, :cond_5

    move v3, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v1, -0x1

    :goto_3
    aget v3, p2, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move-object v1, v2

    :cond_7
    iget-object p0, p0, Lhu7;->b:[[I

    aput-object v1, p0, p1

    goto :goto_7

    :cond_8
    if-ne p2, v2, :cond_9

    return-void

    :cond_9
    sget-object p0, Lhu7;->g:[I

    if-ne v2, p0, :cond_a

    if-lez p1, :cond_a

    new-array v2, p1, [I

    aput-object v2, v1, p1

    :cond_a
    move p0, v0

    :goto_4
    if-ge p0, p1, :cond_f

    sget-object v1, Lhu7;->g:[I

    if-eq p2, v1, :cond_c

    array-length v1, p2

    if-ge p0, v1, :cond_b

    move v1, p0

    goto :goto_5

    :cond_b
    add-int/lit8 v1, v1, -0x1

    :goto_5
    aget v1, p2, v1

    goto :goto_6

    :cond_c
    move v1, v0

    :goto_6
    aget v3, v2, p0

    if-eq v3, v1, :cond_e

    or-int/2addr v1, v3

    and-int/lit16 v3, v1, 0x7fc

    if-eqz v3, :cond_d

    or-int/lit8 v1, v1, 0x1

    :cond_d
    aput v1, v2, p0

    :cond_e
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_f
    :goto_7
    return-void
.end method

.method public abstract l(Lqq0;)[Ljava/lang/Class;
.end method
