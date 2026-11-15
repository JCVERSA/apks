.class public final Lx9/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/n;
.implements Lx9/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx9/e$a;
    }
.end annotation


# static fields
.field public static final j:Lx9/g$a;

.field private static final k:Li9/a0;


# instance fields
.field private final a:Li9/l;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/p1;

.field private final d:Landroid/util/SparseArray;

.field private e:Z

.field private f:Lx9/g$b;

.field private g:J

.field private h:Li9/b0;

.field private i:[Lcom/google/android/exoplayer2/p1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx9/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lx9/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx9/e;->j:Lx9/g$a;

    .line 7
    .line 8
    new-instance v0, Li9/a0;

    .line 9
    .line 10
    invoke-direct {v0}, Li9/a0;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lx9/e;->k:Li9/a0;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Li9/l;ILcom/google/android/exoplayer2/p1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx9/e;->a:Li9/l;

    .line 5
    .line 6
    iput p2, p0, Lx9/e;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lx9/e;->c:Lcom/google/android/exoplayer2/p1;

    .line 9
    .line 10
    new-instance p1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lx9/e;->d:Landroid/util/SparseArray;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic e(ILcom/google/android/exoplayer2/p1;ZLjava/util/List;Li9/e0;Lg9/u1;)Lx9/g;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lx9/e;->f(ILcom/google/android/exoplayer2/p1;ZLjava/util/List;Li9/e0;Lg9/u1;)Lx9/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic f(ILcom/google/android/exoplayer2/p1;ZLjava/util/List;Li9/e0;Lg9/u1;)Lx9/g;
    .locals 6

    .line 1
    iget-object p5, p1, Lcom/google/android/exoplayer2/p1;->k:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/w;->r(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/w;->q(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    if-eqz p5, :cond_1

    .line 16
    .line 17
    new-instance p2, Lo9/e;

    .line 18
    .line 19
    const/4 p3, 0x1

    .line 20
    invoke-direct {p2, p3}, Lo9/e;-><init>(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    if-eqz p2, :cond_2

    .line 25
    .line 26
    const/4 p2, 0x4

    .line 27
    :goto_0
    move v1, p2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 p2, 0x0

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    new-instance p2, Lq9/g;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    move-object v0, p2

    .line 36
    move-object v4, p3

    .line 37
    move-object v5, p4

    .line 38
    invoke-direct/range {v0 .. v5}, Lq9/g;-><init>(ILcom/google/android/exoplayer2/util/l0;Lq9/o;Ljava/util/List;Li9/e0;)V

    .line 39
    .line 40
    .line 41
    :goto_2
    new-instance p3, Lx9/e;

    .line 42
    .line 43
    invoke-direct {p3, p2, p0, p1}, Lx9/e;-><init>(Li9/l;ILcom/google/android/exoplayer2/p1;)V

    .line 44
    .line 45
    .line 46
    return-object p3
.end method


# virtual methods
.method public a(Li9/m;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lx9/e;->a:Li9/l;

    .line 2
    .line 3
    sget-object v1, Lx9/e;->k:Li9/a0;

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Li9/l;->d(Li9/m;Li9/a0;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    move v2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v0

    .line 16
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    :cond_1
    return v0
.end method

.method public b()Li9/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lx9/e;->h:Li9/b0;

    .line 2
    .line 3
    instance-of v1, v0, Li9/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Li9/d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public c()[Lcom/google/android/exoplayer2/p1;
    .locals 1

    .line 1
    iget-object v0, p0, Lx9/e;->i:[Lcom/google/android/exoplayer2/p1;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lx9/g$b;JJ)V
    .locals 5

    .line 1
    iput-object p1, p0, Lx9/e;->f:Lx9/g$b;

    .line 2
    .line 3
    iput-wide p4, p0, Lx9/e;->g:J

    .line 4
    .line 5
    iget-boolean v0, p0, Lx9/e;->e:Z

    .line 6
    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lx9/e;->a:Li9/l;

    .line 17
    .line 18
    invoke-interface {p1, p0}, Li9/l;->b(Li9/n;)V

    .line 19
    .line 20
    .line 21
    cmp-long p1, p2, v1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lx9/e;->a:Li9/l;

    .line 26
    .line 27
    invoke-interface {p1, v3, v4, p2, p3}, Li9/l;->seek(JJ)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lx9/e;->e:Z

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lx9/e;->a:Li9/l;

    .line 35
    .line 36
    cmp-long v1, p2, v1

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    move-wide p2, v3

    .line 41
    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Li9/l;->seek(JJ)V

    .line 42
    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    :goto_0
    iget-object p3, p0, Lx9/e;->d:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-ge p2, p3, :cond_3

    .line 52
    .line 53
    iget-object p3, p0, Lx9/e;->d:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    check-cast p3, Lx9/e$a;

    .line 60
    .line 61
    invoke-virtual {p3, p1, p4, p5}, Lx9/e$a;->g(Lx9/g$b;J)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 p2, p2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :goto_1
    return-void
.end method

.method public endTracks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx9/e;->d:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [Lcom/google/android/exoplayer2/p1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lx9/e;->d:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lx9/e;->d:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lx9/e$a;

    .line 25
    .line 26
    iget-object v2, v2, Lx9/e$a;->e:Lcom/google/android/exoplayer2/p1;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/google/android/exoplayer2/p1;

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object v0, p0, Lx9/e;->i:[Lcom/google/android/exoplayer2/p1;

    .line 40
    .line 41
    return-void
.end method

.method public g(Li9/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx9/e;->h:Li9/b0;

    .line 2
    .line 3
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx9/e;->a:Li9/l;

    .line 2
    .line 3
    invoke-interface {v0}, Li9/l;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public track(II)Li9/e0;
    .locals 3

    .line 1
    iget-object v0, p0, Lx9/e;->d:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx9/e$a;

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lx9/e;->i:[Lcom/google/android/exoplayer2/p1;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lx9/e$a;

    .line 22
    .line 23
    iget v1, p0, Lx9/e;->b:I

    .line 24
    .line 25
    if-ne p2, v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lx9/e;->c:Lcom/google/android/exoplayer2/p1;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lx9/e$a;-><init>(IILcom/google/android/exoplayer2/p1;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lx9/e;->f:Lx9/g$b;

    .line 35
    .line 36
    iget-wide v1, p0, Lx9/e;->g:J

    .line 37
    .line 38
    invoke-virtual {v0, p2, v1, v2}, Lx9/e$a;->g(Lx9/g$b;J)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lx9/e;->d:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-object v0
.end method
