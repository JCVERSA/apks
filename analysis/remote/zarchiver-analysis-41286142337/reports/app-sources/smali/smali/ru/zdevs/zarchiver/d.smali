.class public final Lru/zdevs/zarchiver/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:C

.field public b:Z

.field public final c:Lru/zdevs/zarchiver/a;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lg0/i;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public final f:[Lru/zdevs/zarchiver/b;

.field public g:Lq0/g;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-char v0, p0, Lru/zdevs/zarchiver/d;->a:C

    .line 6
    .line 7
    new-instance v1, Lru/zdevs/zarchiver/a;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lru/zdevs/zarchiver/a;-><init>(Lru/zdevs/zarchiver/d;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lru/zdevs/zarchiver/d;->d:Ljava/util/ArrayList;

    .line 21
    .line 22
    iput v0, p0, Lru/zdevs/zarchiver/d;->e:I

    .line 23
    .line 24
    new-array v1, v2, [Lru/zdevs/zarchiver/b;

    .line 25
    .line 26
    iput-object v1, p0, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 27
    .line 28
    new-instance v2, Lru/zdevs/zarchiver/b;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lru/zdevs/zarchiver/b;-><init>(I)V

    .line 31
    .line 32
    .line 33
    aput-object v2, v1, v0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/d;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/d;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lru/zdevs/zarchiver/d;->d:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v3, v2, [Lg0/i;

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, [Lg0/i;

    .line 23
    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    array-length v0, v1

    .line 26
    :goto_0
    if-ge v2, v0, :cond_5

    .line 27
    .line 28
    aget-object v3, v1, v2

    .line 29
    .line 30
    const/4 v4, -0x1

    .line 31
    if-eq p1, v4, :cond_1

    .line 32
    .line 33
    iget v5, v3, Lg0/i;->c:I

    .line 34
    .line 35
    if-ne v5, p1, :cond_4

    .line 36
    .line 37
    :cond_1
    if-eq p2, v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v3}, Lg0/i;->l()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ne v4, p2, :cond_4

    .line 44
    .line 45
    :cond_2
    if-eqz p3, :cond_3

    .line 46
    .line 47
    iget v4, v3, Lg0/i;->d:I

    .line 48
    .line 49
    const/high16 v5, 0x10000

    .line 50
    .line 51
    invoke-static {v4, v5}, La0/c;->K(II)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lg0/i;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    goto :goto_2

    .line 67
    :goto_1
    throw p1

    .line 68
    :goto_2
    goto :goto_1
.end method

.method public final b(III)Lg0/i;
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/d;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lru/zdevs/zarchiver/d;->d:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lg0/i;

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    if-eq p1, v3, :cond_1

    .line 24
    .line 25
    iget v4, v2, Lg0/i;->c:I

    .line 26
    .line 27
    if-ne v4, p1, :cond_0

    .line 28
    .line 29
    :cond_1
    if-eq p2, v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Lg0/i;->l()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ne v4, p2, :cond_0

    .line 36
    .line 37
    :cond_2
    if-eq p3, v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2}, Lg0/i;->k()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ne v3, p3, :cond_0

    .line 44
    .line 45
    :cond_3
    monitor-exit v0

    .line 46
    return-object v2

    .line 47
    :cond_4
    monitor-exit v0

    .line 48
    const/4 p1, 0x0

    .line 49
    return-object p1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_1

    .line 53
    :goto_0
    throw p1

    .line 54
    :goto_1
    goto :goto_0
.end method

.method public final c()Lru/zdevs/zarchiver/b;
    .locals 2

    iget-object v0, p0, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    iget v1, p0, Lru/zdevs/zarchiver/d;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final d()Lh0/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 2
    .line 3
    iget v1, p0, Lru/zdevs/zarchiver/d;->e:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget-object v0, v0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e()B
    .locals 2

    iget-object v0, p0, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    iget v1, p0, Lru/zdevs/zarchiver/d;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lru/zdevs/zarchiver/b;->f()B

    move-result v0

    return v0
.end method

.method public final f(I)Z
    .locals 2

    iget-object v0, p0, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    iget v1, p0, Lru/zdevs/zarchiver/d;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/b;->g(I)Z

    move-result p1

    return p1
.end method

.method public final g(C)V
    .locals 0

    .line 1
    iput-char p1, p0, Lru/zdevs/zarchiver/d;->a:C

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lru/zdevs/zarchiver/d;->b:Z

    .line 5
    .line 6
    return-void
.end method
