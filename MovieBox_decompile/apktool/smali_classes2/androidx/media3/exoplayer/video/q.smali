.class public final Landroidx/media3/exoplayer/video/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/common/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/q$b;,
        Landroidx/media3/exoplayer/video/q$c;,
        Landroidx/media3/exoplayer/video/q$d;,
        Landroidx/media3/exoplayer/video/q$e;,
        Landroidx/media3/exoplayer/video/q$f;
    }
.end annotation


# static fields
.field private static final y:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/common/util/o0;

.field private final c:Landroidx/media3/common/c0$a;

.field private final d:Landroid/util/SparseArray;

.field private final e:Ljava/util/List;

.field private final f:Landroidx/media3/common/j0;

.field private final g:Landroidx/media3/exoplayer/video/VideoSink;

.field private final h:Landroidx/media3/exoplayer/video/VideoSink$b;

.field private final i:Landroidx/media3/common/util/i;

.field private final j:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final k:Z

.field private l:Landroidx/media3/common/r;

.field private m:Landroidx/media3/common/util/p;

.field private n:J

.field private o:Landroid/util/Pair;

.field private p:I

.field private q:I

.field private r:Landroidx/media3/exoplayer/w3$a;

.field private s:J

.field private t:J

.field private u:Z

.field private v:J

.field private w:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/video/p;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/exoplayer/video/p;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/exoplayer/video/q;->y:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/video/q$b;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->a(Landroidx/media3/exoplayer/video/q$b;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->a:Landroid/content/Context;

    .line 4
    new-instance v0, Landroidx/media3/common/util/o0;

    invoke-direct {v0}, Landroidx/media3/common/util/o0;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    .line 5
    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->b(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/c0$a;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/c0$a;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->c:Landroidx/media3/common/c0$a;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->d:Landroid/util/SparseArray;

    .line 7
    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->c(Landroidx/media3/exoplayer/video/q$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->e:Ljava/util/List;

    .line 8
    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->d(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/j0;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/common/j0;

    .line 9
    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->e(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/util/i;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->i:Landroidx/media3/common/util/i;

    .line 10
    new-instance v1, Landroidx/media3/exoplayer/video/e;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->f(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/exoplayer/video/u;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/video/e;-><init>(Landroidx/media3/exoplayer/video/u;Landroidx/media3/common/util/i;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    .line 11
    new-instance v0, Landroidx/media3/exoplayer/video/q$a;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/q$a;-><init>(Landroidx/media3/exoplayer/video/q;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->h:Landroidx/media3/exoplayer/video/VideoSink$b;

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->g(Landroidx/media3/exoplayer/video/q$b;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/q;->k:Z

    .line 14
    new-instance p1, Landroidx/media3/common/r$b;

    invoke-direct {p1}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q;->l:Landroidx/media3/common/r;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/q;->s:J

    .line 16
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/q;->t:J

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Landroidx/media3/exoplayer/video/q;->w:I

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Landroidx/media3/exoplayer/video/q;->q:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/video/q$b;Landroidx/media3/exoplayer/video/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q;-><init>(Landroidx/media3/exoplayer/video/q$b;)V

    return-void
.end method

.method private static A(Landroidx/media3/common/i;)Landroidx/media3/common/i;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/i;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-object p0

    .line 11
    :cond_1
    :goto_0
    sget-object p0, Landroidx/media3/common/i;->h:Landroidx/media3/common/i;

    .line 12
    .line 13
    return-object p0
.end method

.method private C()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/q;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/q;->u:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isEnded()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method private D()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/q;->q:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method private E(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/media3/exoplayer/video/q;->p:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->j(Z)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private synthetic F()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/q;->p:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/video/q;->p:I

    .line 6
    .line 7
    return-void
.end method

.method private static synthetic G(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private H(Landroid/view/Surface;II)V
    .locals 0

    .line 1
    return-void
.end method

.method private I(Landroidx/media3/common/r;I)Landroidx/media3/common/k0;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_3

    .line 3
    .line 4
    iget p2, p0, Landroidx/media3/exoplayer/video/q;->q:I

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/a;->g(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p1, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    .line 15
    .line 16
    invoke-static {p2}, Landroidx/media3/exoplayer/video/q;->A(Landroidx/media3/common/i;)Landroidx/media3/common/i;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/q;->k:Z

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    iget v1, p2, Landroidx/media3/common/i;->c:I

    .line 25
    .line 26
    const/4 v2, 0x7

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    sget v1, Landroidx/media3/common/util/a1;->a:I

    .line 30
    .line 31
    const/16 v2, 0x22

    .line 32
    .line 33
    if-ge v1, v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Landroidx/media3/common/i;->a()Landroidx/media3/common/i$b;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/4 v1, 0x6

    .line 40
    invoke-virtual {p2, v1}, Landroidx/media3/common/i$b;->e(I)Landroidx/media3/common/i$b;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    :cond_1
    :goto_1
    move-object v3, p2

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    sget-object p2, Landroidx/media3/common/i;->h:Landroidx/media3/common/i;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :goto_2
    iget-object p2, p0, Landroidx/media3/exoplayer/video/q;->i:Landroidx/media3/common/util/i;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/os/Looper;

    .line 64
    .line 65
    invoke-interface {p2, v1, v0}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iput-object p2, p0, Landroidx/media3/exoplayer/video/q;->m:Landroidx/media3/common/util/p;

    .line 70
    .line 71
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/video/q;->c:Landroidx/media3/common/c0$a;

    .line 72
    .line 73
    iget-object v2, p0, Landroidx/media3/exoplayer/video/q;->a:Landroid/content/Context;

    .line 74
    .line 75
    sget-object v4, Landroidx/media3/common/l;->a:Landroidx/media3/common/l;

    .line 76
    .line 77
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance v6, Landroidx/media3/exoplayer/video/n;

    .line 81
    .line 82
    invoke-direct {v6, p2}, Landroidx/media3/exoplayer/video/n;-><init>(Landroidx/media3/common/util/p;)V

    .line 83
    .line 84
    .line 85
    iget-object v7, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/common/j0;

    .line 86
    .line 87
    iget-object v8, p0, Landroidx/media3/exoplayer/video/q;->e:Ljava/util/List;

    .line 88
    .line 89
    const-wide/16 v9, 0x0

    .line 90
    .line 91
    move-object v5, p0

    .line 92
    invoke-interface/range {v1 .. v10}, Landroidx/media3/common/c0$a;->b(Landroid/content/Context;Landroidx/media3/common/i;Landroidx/media3/common/l;Landroidx/media3/common/l0;Ljava/util/concurrent/Executor;Landroidx/media3/common/j0;Ljava/util/List;J)Landroidx/media3/common/c0;
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :catch_0
    move-exception p2

    .line 97
    new-instance v0, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    .line 98
    .line 99
    invoke-direct {v0, p2, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/r;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/q;->D()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-nez p2, :cond_4

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_4
    :try_start_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :catch_1
    move-exception p2

    .line 119
    new-instance v0, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    .line 120
    .line 121
    invoke-direct {v0, p2, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/r;)V

    .line 122
    .line 123
    .line 124
    throw v0
.end method

.method private K(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->render(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private L(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/q;->v:J

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    iget-wide v1, p0, Landroidx/media3/exoplayer/video/q;->n:J

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->f(JJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private N(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->a(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private P(Landroidx/media3/exoplayer/video/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->d(Landroidx/media3/exoplayer/video/t;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private Q()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/q;->w:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Landroidx/media3/exoplayer/video/q;->x:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/video/q;->G(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/video/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/q;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/video/q;->y:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/exoplayer/video/VideoSink;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/video/q;Landroidx/media3/common/r;I)Landroidx/media3/common/k0;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/video/q;->I(Landroidx/media3/common/r;I)Landroidx/media3/common/k0;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/video/q;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q;->z(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Landroidx/media3/exoplayer/video/q;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q;->E(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/video/q;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/q;->t:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic i(Landroidx/media3/exoplayer/video/q;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/q;->t:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic j(Landroidx/media3/exoplayer/video/q;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/q;->s:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic k(Landroidx/media3/exoplayer/video/q;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/q;->u:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic l(Landroidx/media3/exoplayer/video/q;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/q;->C()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic m(Landroidx/media3/exoplayer/video/q;Landroidx/media3/exoplayer/video/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q;->P(Landroidx/media3/exoplayer/video/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Landroidx/media3/exoplayer/video/q;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q;->N(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/common/util/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Landroidx/media3/exoplayer/video/q;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/video/q;->L(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Landroidx/media3/exoplayer/video/q;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/q;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic r(Landroidx/media3/exoplayer/video/q;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/q;->K(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Landroidx/media3/exoplayer/video/q;Landroidx/media3/exoplayer/w3$a;)Landroidx/media3/exoplayer/w3$a;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/q;->r:Landroidx/media3/exoplayer/w3$a;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic t(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/common/c0$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/q;->c:Landroidx/media3/common/c0$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Landroidx/media3/exoplayer/video/q;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/q;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Landroidx/media3/common/i;)Landroidx/media3/common/i;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/video/q;->A(Landroidx/media3/common/i;)Landroidx/media3/common/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic w(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/common/c0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method private z(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/q;->D()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/video/q;->p:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Landroidx/media3/exoplayer/video/q;->p:I

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->t(Z)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->l()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-le p1, v1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->i()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->l()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p1, v1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->i()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/Long;

    .line 48
    .line 49
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    .line 60
    .line 61
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/q;->v:J

    .line 62
    .line 63
    invoke-interface {p1, v0, v1, v2, v3}, Landroidx/media3/exoplayer/video/VideoSink;->f(JJ)V

    .line 64
    .line 65
    .line 66
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/q;->s:J

    .line 72
    .line 73
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/q;->t:J

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/q;->u:Z

    .line 77
    .line 78
    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->m:Landroidx/media3/common/util/p;

    .line 79
    .line 80
    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroidx/media3/common/util/p;

    .line 85
    .line 86
    new-instance v0, Landroidx/media3/exoplayer/video/o;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/o;-><init>(Landroidx/media3/exoplayer/video/q;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public B(I)Landroidx/media3/exoplayer/video/VideoSink;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->d:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/common/util/a1;->r(Landroid/util/SparseArray;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroidx/media3/exoplayer/video/q$c;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/video/q;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v0, p0, v1, p1}, Landroidx/media3/exoplayer/video/q$c;-><init>(Landroidx/media3/exoplayer/video/q;Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/q;->x(Landroidx/media3/exoplayer/video/q$d;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/video/q;->d:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public J()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/q;->q:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->m:Landroidx/media3/common/util/p;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, v2}, Landroidx/media3/common/util/p;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iput-object v2, p0, Landroidx/media3/exoplayer/video/q;->o:Landroid/util/Pair;

    .line 16
    .line 17
    iput v1, p0, Landroidx/media3/exoplayer/video/q;->q:I

    .line 18
    .line 19
    return-void
.end method

.method public M(Landroid/view/Surface;Landroidx/media3/common/util/l0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->o:Landroid/util/Pair;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/view/Surface;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->o:Landroid/util/Pair;

    .line 16
    .line 17
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroidx/media3/common/util/l0;

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Landroidx/media3/common/util/l0;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->o:Landroid/util/Pair;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/media3/common/util/l0;->b()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p2}, Landroidx/media3/common/util/l0;->a()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/video/q;->H(Landroid/view/Surface;II)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public O(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/video/q;->w:I

    .line 2
    .line 3
    return-void
.end method

.method public x(Landroidx/media3/exoplayer/video/q$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public y()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/media3/common/util/l0;->c:Landroidx/media3/common/util/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/l0;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/util/l0;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, v2, v1, v0}, Landroidx/media3/exoplayer/video/q;->H(Landroid/view/Surface;II)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Landroidx/media3/exoplayer/video/q;->o:Landroid/util/Pair;

    .line 16
    .line 17
    return-void
.end method
