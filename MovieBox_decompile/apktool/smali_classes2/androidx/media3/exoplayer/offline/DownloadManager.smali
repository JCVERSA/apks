.class public final Landroidx/media3/exoplayer/offline/DownloadManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DownloadManager$c;,
        Landroidx/media3/exoplayer/offline/DownloadManager$d;,
        Landroidx/media3/exoplayer/offline/DownloadManager$b;,
        Landroidx/media3/exoplayer/offline/DownloadManager$Task;
    }
.end annotation


# static fields
.field public static final q:Landroidx/media3/exoplayer/scheduler/Requirements;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/offline/t;

.field private final c:Landroid/os/Handler;

.field private final d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

.field private final e:Le2/c$c;

.field private final f:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Ljava/util/List;

.field private p:Le2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/scheduler/Requirements;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/exoplayer/offline/DownloadManager;->q:Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/t;Landroidx/media3/exoplayer/offline/p;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->b:Landroidx/media3/exoplayer/offline/t;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->k:I

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->l:I

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    .line 20
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    .line 26
    .line 27
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 33
    .line 34
    new-instance v1, Landroidx/media3/exoplayer/offline/g;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/offline/g;-><init>(Landroidx/media3/exoplayer/offline/DownloadManager;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroidx/media3/common/util/a1;->D(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iput-object v6, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->c:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v3, Landroid/os/HandlerThread;

    .line 46
    .line 47
    const-string v1, "ExoPlayer:DownloadManager"

    .line 48
    .line 49
    invoke-direct {v3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 53
    .line 54
    .line 55
    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadManager$c;

    .line 56
    .line 57
    iget v7, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->k:I

    .line 58
    .line 59
    iget v8, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->l:I

    .line 60
    .line 61
    iget-boolean v9, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    .line 62
    .line 63
    move-object v2, v1

    .line 64
    move-object v4, p2

    .line 65
    move-object v5, p3

    .line 66
    invoke-direct/range {v2 .. v9}, Landroidx/media3/exoplayer/offline/DownloadManager$c;-><init>(Landroid/os/HandlerThread;Landroidx/media3/exoplayer/offline/t;Landroidx/media3/exoplayer/offline/p;Landroid/os/Handler;IIZ)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    .line 70
    .line 71
    new-instance p2, Landroidx/media3/exoplayer/offline/h;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/offline/h;-><init>(Landroidx/media3/exoplayer/offline/DownloadManager;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->e:Le2/c$c;

    .line 77
    .line 78
    new-instance p3, Le2/c;

    .line 79
    .line 80
    sget-object v2, Landroidx/media3/exoplayer/offline/DownloadManager;->q:Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 81
    .line 82
    invoke-direct {p3, p1, p2, v2}, Le2/c;-><init>(Landroid/content/Context;Le2/c$c;Landroidx/media3/exoplayer/scheduler/Requirements;)V

    .line 83
    .line 84
    .line 85
    iput-object p3, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Le2/c;

    .line 86
    .line 87
    invoke-virtual {p3}, Le2/c;->i()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->m:I

    .line 92
    .line 93
    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 94
    .line 95
    const/4 p2, 0x0

    .line 96
    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method private B()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->m:I

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move v0, v2

    .line 12
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v0, v3, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroidx/media3/exoplayer/offline/c;

    .line 27
    .line 28
    iget v3, v3, Landroidx/media3/exoplayer/offline/c;->b:I

    .line 29
    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    move v0, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v0, v2

    .line 38
    :goto_1
    iget-boolean v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->n:Z

    .line 39
    .line 40
    if-eq v3, v0, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v1, v2

    .line 44
    :goto_2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->n:Z

    .line 45
    .line 46
    return v1
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/offline/DownloadManager;Le2/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager;->s(Le2/c;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/offline/DownloadManager;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->j(Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private j(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Landroidx/media3/exoplayer/offline/DownloadManager$b;

    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->p(Landroidx/media3/exoplayer/offline/DownloadManager$b;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 27
    .line 28
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 29
    .line 30
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->r(II)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Ljava/util/List;

    .line 37
    .line 38
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->q(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return v1
.end method

.method static n(Landroidx/media3/exoplayer/offline/c;Landroidx/media3/exoplayer/offline/DownloadRequest;IJ)Landroidx/media3/exoplayer/offline/c;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/offline/c;->b:I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    if-eq v1, v2, :cond_1

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/offline/c;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v3, v0, Landroidx/media3/exoplayer/offline/c;->c:J

    .line 16
    .line 17
    move-wide v8, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move-wide/from16 v8, p3

    .line 20
    .line 21
    :goto_1
    const/4 v3, 0x7

    .line 22
    if-eq v1, v2, :cond_4

    .line 23
    .line 24
    if-ne v1, v3, :cond_2

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_2
    if-eqz p2, :cond_3

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :goto_2
    move v7, v1

    .line 31
    goto :goto_4

    .line 32
    :cond_3
    const/4 v1, 0x0

    .line 33
    goto :goto_2

    .line 34
    :cond_4
    :goto_3
    move v7, v3

    .line 35
    :goto_4
    new-instance v1, Landroidx/media3/exoplayer/offline/c;

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 38
    .line 39
    move-object/from16 v2, p1

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/offline/DownloadRequest;->copyWithMergedRequest(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const-wide/16 v12, -0x1

    .line 46
    .line 47
    const/4 v15, 0x0

    .line 48
    move-object v5, v1

    .line 49
    move-wide/from16 v10, p3

    .line 50
    .line 51
    move/from16 v14, p2

    .line 52
    .line 53
    invoke-direct/range {v5 .. v15}, Landroidx/media3/exoplayer/offline/c;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJII)V

    .line 54
    .line 55
    .line 56
    return-object v1
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    .line 18
    .line 19
    iget-boolean v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->n:Z

    .line 20
    .line 21
    invoke-interface {v1, p0, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->a(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private p(Landroidx/media3/exoplayer/offline/DownloadManager$b;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/DownloadManager$b;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/DownloadManager$b;->a:Landroidx/media3/exoplayer/offline/c;

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->B()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-boolean v2, p1, Landroidx/media3/exoplayer/offline/DownloadManager$b;->b:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    .line 36
    .line 37
    invoke-interface {v2, p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->b(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/c;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    .line 58
    .line 59
    iget-object v4, p1, Landroidx/media3/exoplayer/offline/DownloadManager$b;->d:Ljava/lang/Exception;

    .line 60
    .line 61
    invoke-interface {v3, p0, v0, v4}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->f(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/c;Ljava/lang/Exception;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->o()V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method private q(Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->i:Z

    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->B()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    .line 31
    .line 32
    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->g(Landroidx/media3/exoplayer/offline/DownloadManager;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->o()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method private r(II)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->h:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->k()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    .line 31
    .line 32
    invoke-interface {p2, p0}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->d(Landroidx/media3/exoplayer/offline/DownloadManager;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method private s(Le2/c;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Le2/c;->f()Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->m:I

    .line 6
    .line 7
    if-eq v0, p2, :cond_0

    .line 8
    .line 9
    iput p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->m:I

    .line 10
    .line 11
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->B()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    .line 49
    .line 50
    invoke-interface {v2, p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->e(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/scheduler/Requirements;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->o()V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method private y(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    .line 7
    .line 8
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->B()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    .line 46
    .line 47
    invoke-interface {v2, p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->c(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->o()V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public c(Landroidx/media3/exoplayer/offline/DownloadRequest;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public d(Landroidx/media3/exoplayer/offline/DownloadManager$d;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Landroidx/media3/exoplayer/offline/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->b:Landroidx/media3/exoplayer/offline/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public i()Landroidx/media3/exoplayer/scheduler/Requirements;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Le2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Le2/c;->f()Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public t()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->y(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    .line 8
    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public w(Landroidx/media3/exoplayer/offline/DownloadManager$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->y(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public z(Landroidx/media3/exoplayer/scheduler/Requirements;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Le2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Le2/c;->f()Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Le2/c;

    .line 15
    .line 16
    invoke-virtual {v0}, Le2/c;->j()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Le2/c;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->e:Le2/c$c;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, p1}, Le2/c;-><init>(Landroid/content/Context;Le2/c$c;Landroidx/media3/exoplayer/scheduler/Requirements;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Le2/c;

    .line 29
    .line 30
    invoke-virtual {v0}, Le2/c;->i()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Le2/c;

    .line 35
    .line 36
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->s(Le2/c;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
