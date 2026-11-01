.class public Lru/zdevs/zarchiver/archiver/content/ContentNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/d;


# static fields
.field public static j:J

.field public static k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld0/d;",
            ">;"
        }
    .end annotation
.end field

.field public static l:Lh0/e$b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/content/ContentNative;->clear()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static native cClear()V
.end method

.method private static native cGetInfo(Ljava/lang/String;)V
.end method

.method private static native cGetItemCount(Ljava/lang/String;)I
.end method

.method private static native cGetList(Ljava/lang/String;)V
.end method

.method private static native cIsArchive(Ljava/lang/String;)Z
.end method

.method private static native cListStart(Ljava/lang/String;)V
.end method

.method public static jAdd(Ljava/lang/String;IJII)V
    .locals 11

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    new-instance v10, Ld0/d;

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    move-object v3, v1

    .line 16
    and-int/lit8 v1, p5, 0x1

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v4, 0x4

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v1, -0x1

    .line 24
    const/4 v4, -0x1

    .line 25
    :goto_1
    and-int/lit8 v1, p5, 0x2

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/16 v1, 0x1c

    .line 30
    .line 31
    move v1, p4

    .line 32
    const/16 v5, 0x1c

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    move v1, p4

    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_2
    int-to-long v6, v1

    .line 39
    const-wide/16 v8, 0x3e8

    .line 40
    .line 41
    mul-long v6, v6, v8

    .line 42
    .line 43
    and-int/lit8 v1, p5, 0x4

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    const-wide/16 v1, -0x2

    .line 48
    .line 49
    :goto_3
    move-wide v8, v1

    .line 50
    goto :goto_4

    .line 51
    :cond_3
    const-wide/16 v1, -0x1

    .line 52
    .line 53
    cmp-long v8, p2, v1

    .line 54
    .line 55
    if-nez v8, :cond_4

    .line 56
    .line 57
    sget-wide v1, Lru/zdevs/zarchiver/archiver/content/ContentNative;->j:J

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    move-wide v8, p2

    .line 61
    :goto_4
    move-object v1, v10

    .line 62
    move-object v2, p0

    .line 63
    invoke-direct/range {v1 .. v9}, Ld0/d;-><init>(Ljava/lang/String;Ljava/lang/String;BBJJ)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_5
    return-void
.end method

.method public static jSetFileInfo(JIII)V
    .locals 4

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->l:Lh0/e$b;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    cmp-long v3, p0, v1

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    sget-wide p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->j:J

    .line 12
    .line 13
    :cond_0
    iput-wide p0, v0, Lh0/e$b;->c:J

    .line 14
    .line 15
    iput p2, v0, Lh0/e$b;->d:I

    .line 16
    .line 17
    int-to-long p0, p3

    .line 18
    const-wide/16 p2, 0x3e8

    .line 19
    .line 20
    mul-long p0, p0, p2

    .line 21
    .line 22
    iput-wide p0, v0, Lh0/e$b;->b:J

    .line 23
    .line 24
    and-int/lit8 p0, p4, 0x1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    const/4 p2, 0x1

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_0
    iput-boolean p0, v0, Lh0/e$b;->a:Z

    .line 34
    .line 35
    and-int/lit8 p0, p4, 0x4

    .line 36
    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    :cond_2
    iput-boolean p1, v0, Lh0/e$b;->e:Z

    .line 41
    .line 42
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/content/ContentNative;->clear()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->b:J

    .line 7
    .line 8
    invoke-static {p3}, La0/c;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "0"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/16 p1, 0x20

    .line 21
    .line 22
    iput p1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->e:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->e:I

    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1}, Lru/zdevs/zarchiver/archiver/content/ContentNative;->cListStart(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final b()F
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-wide v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->c:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    iget-wide v2, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->b:J

    .line 24
    .line 25
    long-to-float v2, v2

    .line 26
    long-to-float v0, v0

    .line 27
    div-float/2addr v2, v0

    .line 28
    return v2
.end method

.method public final declared-synchronized c(Ljava/lang/String;JII)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public final clear()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->a:Ljava/lang/String;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->b:J

    .line 7
    .line 8
    sput-object v0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-wide v1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->c:J

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->d:I

    .line 14
    .line 15
    iput-object v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->f:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->g:Ljava/lang/String;

    .line 18
    .line 19
    iput v1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->i:I

    .line 20
    .line 21
    invoke-static {}, Lru/zdevs/zarchiver/archiver/content/ContentNative;->cClear()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/util/regex/Pattern;ZLv0/d;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Z",
            "Lv0/d;",
            ")",
            "Ljava/util/List<",
            "Lf0/b;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->d:I

    return v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->c:J

    return-wide v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->i:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->e:I

    return v0
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final j(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lru/zdevs/zarchiver/archiver/content/ContentNative;->cGetItemCount(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final k(Ljava/util/ArrayList;Lv0/d;)Lh0/e$b;
    .locals 6

    .line 1
    new-instance v0, Lh0/e$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lh0/e$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-interface {p2}, Lv0/d;->isCancelled()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return-object p1

    .line 32
    :cond_0
    invoke-virtual {p0, v1, p2}, Lru/zdevs/zarchiver/archiver/content/ContentNative;->o(Ljava/lang/String;Lv0/d;)Lh0/e$b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-wide v2, v0, Lh0/e$b;->c:J

    .line 37
    .line 38
    iget-wide v4, v1, Lh0/e$b;->c:J

    .line 39
    .line 40
    add-long/2addr v2, v4

    .line 41
    iput-wide v2, v0, Lh0/e$b;->c:J

    .line 42
    .line 43
    iget v2, v0, Lh0/e$b;->d:I

    .line 44
    .line 45
    iget v1, v1, Lh0/e$b;->d:I

    .line 46
    .line 47
    add-int/2addr v2, v1

    .line 48
    iput v2, v0, Lh0/e$b;->d:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Lru/zdevs/zarchiver/archiver/content/ContentNative;->cIsArchive(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_1
    :goto_0
    return v1
.end method

.method public final n(I)V
    .locals 2

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->i:I

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->i:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/String;Lv0/d;)Lh0/e$b;
    .locals 2

    .line 1
    iget-wide v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->b:J

    .line 2
    .line 3
    sput-wide v0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->j:J

    .line 4
    .line 5
    new-instance p2, Lh0/e$b;

    .line 6
    .line 7
    invoke-direct {p2}, Lh0/e$b;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object p2, Lru/zdevs/zarchiver/archiver/content/ContentNative;->l:Lh0/e$b;

    .line 11
    .line 12
    invoke-static {p1}, Lru/zdevs/zarchiver/archiver/content/ContentNative;->cGetInfo(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    sput-object p1, Lru/zdevs/zarchiver/archiver/content/ContentNative;->l:Lh0/e$b;

    .line 17
    .line 18
    return-object p2
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->f:Ljava/lang/String;

    invoke-static {v0}, Lv0/h;->e(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final r(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ld0/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->b:J

    .line 2
    .line 3
    sput-wide v0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->j:J

    .line 4
    .line 5
    sput-object p2, Lru/zdevs/zarchiver/archiver/content/ContentNative;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {p1}, Lru/zdevs/zarchiver/archiver/content/ContentNative;->cGetList(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    sput-object p1, Lru/zdevs/zarchiver/archiver/content/ContentNative;->k:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->g:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->h:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->d:I

    .line 6
    .line 7
    iput-wide p4, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->c:J

    .line 8
    .line 9
    iget p1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->e:I

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x20

    .line 12
    .line 13
    or-int/2addr p1, p6

    .line 14
    iput p1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->e:I

    .line 15
    .line 16
    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final v()J
    .locals 2

    iget-wide v0, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->b:J

    return-wide v0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;->f:Ljava/lang/String;

    return-void
.end method
