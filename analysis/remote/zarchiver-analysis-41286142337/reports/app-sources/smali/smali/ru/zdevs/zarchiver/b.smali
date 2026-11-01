.class public final Lru/zdevs/zarchiver/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public c:Lh0/h;

.field public d:B

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:J

.field public k:J

.field public l:J

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:[Ljava/lang/String;

.field public q:Ld0/b;

.field public r:Ld0/i;

.field public s:Ld0/a;

.field public final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/zdevs/zarchiver/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 10
    .line 11
    iput p1, p0, Lru/zdevs/zarchiver/b;->b:I

    .line 12
    .line 13
    sget-object v0, Lt0/b;->b:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object p1, v0, p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lh0/h;

    .line 20
    .line 21
    const-string v0, "/sdcard"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lh0/h;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 35
    .line 36
    :goto_0
    const/4 p1, 0x0

    .line 37
    iput-byte p1, p0, Lru/zdevs/zarchiver/b;->d:B

    .line 38
    .line 39
    iput p1, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 40
    .line 41
    invoke-virtual {p0}, Lru/zdevs/zarchiver/b;->n()V

    .line 42
    .line 43
    .line 44
    const-wide/16 v0, -0x2

    .line 45
    .line 46
    iput-wide v0, p0, Lru/zdevs/zarchiver/b;->j:J

    .line 47
    .line 48
    const-wide/16 v0, -0x1

    .line 49
    .line 50
    iput-wide v0, p0, Lru/zdevs/zarchiver/b;->l:J

    .line 51
    .line 52
    iput-wide v0, p0, Lru/zdevs/zarchiver/b;->k:J

    .line 53
    .line 54
    iput p1, p0, Lru/zdevs/zarchiver/b;->n:I

    .line 55
    .line 56
    iput p1, p0, Lru/zdevs/zarchiver/b;->m:I

    .line 57
    .line 58
    new-instance v0, Ld0/b;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Ld0/b;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lru/zdevs/zarchiver/b;->s:Ld0/a;

    .line 67
    .line 68
    iput p1, p0, Lru/zdevs/zarchiver/b;->f:I

    .line 69
    .line 70
    iput-object v0, p0, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v0, p0, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 73
    .line 74
    iput-object v0, p0, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 75
    .line 76
    new-instance p1, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lru/zdevs/zarchiver/b;->t:Ljava/util/ArrayList;

    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final a([I)La0/a;
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/b;->i()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, La0/a;

    .line 11
    .line 12
    iget-object v2, p0, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 13
    .line 14
    invoke-direct {v1, p1, v2}, La0/a;-><init>([ILd0/i;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v2, 0x21

    .line 22
    .line 23
    if-lt v1, v2, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 26
    .line 27
    invoke-virtual {v1}, Lh0/h;->j()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lru/zdevs/zarchiver/b;->f()B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x2

    .line 38
    if-ne v1, v2, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 41
    .line 42
    iget-object v1, v1, Lh0/h;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1}, Lx0/g;->a(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    aget-object v4, v1, v3

    .line 52
    .line 53
    aget-object v2, v1, v2

    .line 54
    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    aget-object v2, v1, v2

    .line 63
    .line 64
    aget-object v1, v1, v3

    .line 65
    .line 66
    invoke-static {v2, v1, v3, v3}, Lru/zdevs/zarchiver/io/SAF;->m(Ljava/lang/String;Ljava/lang/String;ZZ)Lh0/h;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object v1, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 75
    .line 76
    :goto_0
    new-instance v2, La0/a;

    .line 77
    .line 78
    iget-object v3, p0, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 79
    .line 80
    invoke-direct {v2, v3, v1, p1}, La0/a;-><init>(Ld0/b;Lh0/h;[I)V

    .line 81
    .line 82
    .line 83
    monitor-exit v0

    .line 84
    return-object v2

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p1
.end method

.method public final b(Landroid/content/Context;Ld0/h;)Ld0/h;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/b;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Ld0/h;->c()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const v3, 0x7f08002e

    .line 16
    .line 17
    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast p2, Ld0/e;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance p2, Ld0/e;

    .line 27
    .line 28
    invoke-direct {p2, p1, p0}, Ld0/e;-><init>(Landroid/content/Context;Lru/zdevs/zarchiver/b;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 32
    .line 33
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 34
    .line 35
    invoke-virtual {p2, p1, v0, v2}, Ld0/h;->l(Ld0/b;Lh0/h;Z)V

    .line 36
    .line 37
    .line 38
    return-object p2

    .line 39
    :cond_2
    if-eqz p2, :cond_4

    .line 40
    .line 41
    invoke-virtual {p2}, Ld0/h;->c()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget v3, p0, Lru/zdevs/zarchiver/b;->g:I

    .line 46
    .line 47
    if-eq v0, v3, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v0, 0x0

    .line 51
    goto :goto_2

    .line 52
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 53
    :goto_2
    if-eqz v0, :cond_5

    .line 54
    .line 55
    new-instance v0, Ld0/c;

    .line 56
    .line 57
    invoke-direct {v0, p1, p0, p2}, Ld0/c;-><init>(Landroid/content/Context;Lru/zdevs/zarchiver/b;Ld0/h;)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_5
    move-object v0, p2

    .line 62
    check-cast v0, Ld0/c;

    .line 63
    .line 64
    :goto_3
    iget-object p1, p0, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 65
    .line 66
    iget-object p2, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 67
    .line 68
    iget-object v3, p0, Lru/zdevs/zarchiver/b;->s:Ld0/a;

    .line 69
    .line 70
    iget v4, v0, Ld0/c;->o:I

    .line 71
    .line 72
    const v5, 0x7f08002d

    .line 73
    .line 74
    .line 75
    if-eq v4, v5, :cond_6

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_6
    const/4 v2, 0x0

    .line 79
    :goto_4
    invoke-virtual {v0, p1, p2, v2}, Ld0/h;->l(Ld0/b;Lh0/h;Z)V

    .line 80
    .line 81
    .line 82
    iget-object p1, v0, Ld0/h;->m:Lq0/g;

    .line 83
    .line 84
    if-eqz p1, :cond_8

    .line 85
    .line 86
    iget-object p1, v0, Ld0/c;->r:Lh0/h;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lh0/h;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_8

    .line 93
    .line 94
    iget-object p1, v0, Ld0/h;->m:Lq0/g;

    .line 95
    .line 96
    invoke-virtual {p2}, Lh0/h;->g()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_7

    .line 101
    .line 102
    const/4 v1, 0x3

    .line 103
    :cond_7
    iput-byte v1, p1, Lq0/g;->c:B

    .line 104
    .line 105
    :cond_8
    iput-object p2, v0, Ld0/c;->r:Lh0/h;

    .line 106
    .line 107
    iput-object v3, v0, Ld0/c;->s:Ld0/a;

    .line 108
    .line 109
    return-object v0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 6
    .line 7
    const v1, 0x8000

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iput v1, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v0}, Lh0/h;->l()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 23
    .line 24
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 25
    .line 26
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Lx0/g;->e(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    iget v0, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 35
    .line 36
    or-int/lit16 v0, v0, 0x80

    .line 37
    .line 38
    iput v0, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 42
    .line 43
    invoke-virtual {v0}, Lh0/h;->j()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 54
    .line 55
    invoke-virtual {v0}, Lh0/h;->g()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    iput v0, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 66
    .line 67
    invoke-virtual {v0}, Lh0/h;->m()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    const/16 v0, 0x10

    .line 74
    .line 75
    iput v0, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 79
    .line 80
    invoke-virtual {v0}, Lh0/h;->k()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    const/16 v0, 0x40

    .line 87
    .line 88
    iput v0, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iput v1, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 92
    .line 93
    :cond_6
    :goto_0
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 94
    .line 95
    invoke-virtual {v0}, Lh0/h;->i()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    iget v0, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 102
    .line 103
    or-int/lit8 v0, v0, 0x20

    .line 104
    .line 105
    iput v0, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 106
    .line 107
    :cond_7
    :goto_1
    iget v0, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 108
    .line 109
    return v0
.end method

.method public final d()Lru/zdevs/zarchiver/b$a;
    .locals 2

    iget-object v0, p0, Lru/zdevs/zarchiver/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/zdevs/zarchiver/b$a;

    :goto_0
    return-object v0
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Lru/zdevs/zarchiver/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lru/zdevs/zarchiver/b;->n:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lru/zdevs/zarchiver/b;->m:I

    :goto_0
    return v0
.end method

.method public final f()B
    .locals 2

    .line 1
    iget-byte v0, p0, Lru/zdevs/zarchiver/b;->d:B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lx0/g;->d(Lh0/h;Z)B

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-byte v0, p0, Lru/zdevs/zarchiver/b;->d:B

    .line 13
    .line 14
    :cond_0
    iget-byte v0, p0, Lru/zdevs/zarchiver/b;->d:B

    .line 15
    .line 16
    return v0
.end method

.method public final g(I)Z
    .locals 1

    invoke-virtual {p0}, Lru/zdevs/zarchiver/b;->c()I

    move-result v0

    invoke-static {v0, p1}, La0/c;->L(II)Z

    move-result p1

    return p1
.end method

.method public final h()Z
    .locals 5

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-static {v0}, Lt0/b;->l(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->t:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const v0, 0x8004

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 28
    .line 29
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x1

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    const-string v2, "/"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    return v3

    .line 53
    :cond_3
    sget-object v2, Lt0/b;->b:[Ljava/lang/String;

    .line 54
    .line 55
    iget v4, p0, Lru/zdevs/zarchiver/b;->b:I

    .line 56
    .line 57
    aget-object v2, v2, v4

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    return v3

    .line 66
    :cond_4
    invoke-static {v0}, Lx0/d;->k(Ljava/lang/String;)Lx0/d$a;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    :cond_5
    return v1
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lru/zdevs/zarchiver/b;->f:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, La0/c;->K(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final j(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "flag"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lru/zdevs/zarchiver/b;->f:I

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    const-string v0, "find"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget-object v0, p0, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final k(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lh0/h;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v1, "flag"

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lru/zdevs/zarchiver/b;->f:I

    .line 27
    .line 28
    iput-object v0, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 29
    .line 30
    const-string v0, "find"

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 41
    .line 42
    return-void
.end method

.method public final l(Lh0/h;BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 2
    .line 3
    iput-byte p2, p0, Lru/zdevs/zarchiver/b;->d:B

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lru/zdevs/zarchiver/b;->e:I

    .line 7
    .line 8
    iput p3, p0, Lru/zdevs/zarchiver/b;->m:I

    .line 9
    .line 10
    const-wide/16 p1, -0x2

    .line 11
    .line 12
    iput-wide p1, p0, Lru/zdevs/zarchiver/b;->j:J

    .line 13
    .line 14
    const-wide/16 p1, -0x1

    .line 15
    .line 16
    iput-wide p1, p0, Lru/zdevs/zarchiver/b;->l:J

    .line 17
    .line 18
    iput-wide p1, p0, Lru/zdevs/zarchiver/b;->k:J

    .line 19
    .line 20
    return-void
.end method

.method public final m(CI)V
    .locals 6

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-static {v0}, Lt0/b;->l(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lru/zdevs/zarchiver/b;->t:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lru/zdevs/zarchiver/b$a;

    .line 19
    .line 20
    iget-object v2, p0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 21
    .line 22
    invoke-virtual {p0}, Lru/zdevs/zarchiver/b;->i()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-direct {v0, v2, p1, p2, v3}, Lru/zdevs/zarchiver/b$a;-><init>(Lh0/h;CIZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 p2, -0x1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int/2addr p1, p2

    .line 43
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lru/zdevs/zarchiver/b$a;

    .line 48
    .line 49
    :goto_0
    const/4 v4, 0x1

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-boolean v5, p1, Lru/zdevs/zarchiver/b$a;->d:Z

    .line 54
    .line 55
    if-eq v3, v5, :cond_4

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    const/4 p2, 0x1

    .line 60
    :cond_3
    move v4, p2

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    iget-object p1, p1, Lru/zdevs/zarchiver/b$a;->a:Lh0/h;

    .line 63
    .line 64
    invoke-virtual {v2, p1}, Lh0/h;->b(Lh0/h;)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    :goto_1
    if-eqz v4, :cond_5

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-ge p1, p2, :cond_5

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lru/zdevs/zarchiver/b$a;

    .line 85
    .line 86
    iget-object p2, p2, Lru/zdevs/zarchiver/b$a;->a:Lh0/h;

    .line 87
    .line 88
    invoke-static {p2}, La0/b;->c(Lh0/h;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 p1, p1, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    sget v0, Lt0/b;->j:I

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0xf00

    .line 4
    .line 5
    const/16 v2, 0x200

    .line 6
    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    const/16 v2, 0x300

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    const v1, 0x7f08002c

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v1, 0x7f08002d

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const v1, 0x7f08002b

    .line 22
    .line 23
    .line 24
    :goto_0
    iput v1, p0, Lru/zdevs/zarchiver/b;->g:I

    .line 25
    .line 26
    and-int/lit16 v0, v0, 0xf8

    .line 27
    .line 28
    iput v0, p0, Lru/zdevs/zarchiver/b;->h:I

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    invoke-static {v0}, Lt0/b;->g(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, Lru/zdevs/zarchiver/b;->i:Z

    .line 36
    .line 37
    return-void
.end method
