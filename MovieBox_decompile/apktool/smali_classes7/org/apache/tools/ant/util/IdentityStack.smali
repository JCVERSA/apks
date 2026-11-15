.class public Lorg/apache/tools/ant/util/IdentityStack;
.super Ljava/util/Stack;
.source "source.java"


# static fields
.field private static final serialVersionUID:J = -0x4d192e6376540bf6L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/util/Stack;)Lorg/apache/tools/ant/util/IdentityStack;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/apache/tools/ant/util/IdentityStack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/apache/tools/ant/util/IdentityStack;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/util/IdentityStack;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityStack;-><init>()V

    .line 11
    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    .line 3
    .line 4
    .line 5
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    monitor-exit p0

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public declared-synchronized indexOf(Ljava/lang/Object;I)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p2, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return p2

    .line 16
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    monitor-exit p0

    .line 22
    const/4 p1, -0x1

    .line 23
    return p1

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;I)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    if-ltz p2, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return p2

    .line 12
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1

    .line 18
    :cond_1
    monitor-exit p0

    .line 19
    const/4 p1, -0x1

    .line 20
    return p1
.end method
