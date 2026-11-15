.class public final Lcom/transsion/player/orplayer/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/orplayer/q$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/aliyun/player/AliPlayer;

.field private c:Lcom/transsion/player/orplayer/c;

.field private d:Lcom/transsion/player/orplayer/e;

.field private e:Ljava/lang/String;

.field private f:Lgn/e;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private m:Landroid/content/Context;

.field private n:J

.field private o:I

.field private p:I

.field private q:Z

.field private volatile r:Z

.field private s:Landroid/os/Handler;

.field private final t:Lcom/transsion/player/orplayer/q$d;

.field private u:Landroid/view/TextureView;

.field private v:Landroid/view/SurfaceView;

.field private final w:Lcom/transsion/player/orplayer/q$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhn/d;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "ORPlayerImpl"

    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/player/orplayer/q;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/player/orplayer/q;->e:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    new-instance v0, Lcom/transsion/player/orplayer/q$d;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/q$d;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/transsion/player/orplayer/q;->t:Lcom/transsion/player/orplayer/q$d;

    .line 30
    .line 31
    new-instance v0, Lcom/transsion/player/orplayer/q$e;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/q$e;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/transsion/player/orplayer/q;->w:Lcom/transsion/player/orplayer/q$e;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/transsion/player/orplayer/q;->m:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/aliyun/player/AliPlayerFactory;->createAliPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliPlayer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p2}, Lhn/d;->o()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setTraceId(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    invoke-virtual {p2}, Lhn/d;->e()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v1, v0

    .line 64
    :goto_1
    invoke-interface {p1, v1}, Lcom/aliyun/player/IPlayer;->enableHardwareDecoder(Z)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p2}, Lhn/d;->i()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-direct {p0}, Lcom/transsion/player/orplayer/q;->x()V

    .line 79
    .line 80
    .line 81
    :goto_2
    if-nez p2, :cond_3

    .line 82
    .line 83
    sget-object p1, Lhn/b;->a:Lhn/b;

    .line 84
    .line 85
    invoke-virtual {p1}, Lhn/b;->a()Lhn/d;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    move-object p1, p2

    .line 91
    :goto_3
    invoke-virtual {p0, p1}, Lcom/transsion/player/orplayer/q;->setPlayerConfig(Lhn/d;)V

    .line 92
    .line 93
    .line 94
    if-eqz p2, :cond_4

    .line 95
    .line 96
    invoke-virtual {p2}, Lhn/d;->j()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    :cond_4
    invoke-direct {p0, v0}, Lcom/transsion/player/orplayer/q;->z(Z)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method private static final A(Lcom/transsion/player/orplayer/q;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getCode()Lcom/aliyun/player/bean/ErrorCode;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getMsg()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "onError code:"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ",msg:"

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/transsion/player/orplayer/PlayError;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getCode()Lcom/aliyun/player/bean/ErrorCode;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getMsg()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v0, v1, v2}, Lcom/transsion/player/orplayer/PlayError;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0}, Lcom/transsion/player/orplayer/q;->w(Lcom/transsion/player/orplayer/PlayError;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 68
    .line 69
    invoke-interface {v1, v0, v2}, Lcom/transsion/player/orplayer/e;->onPlayError(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lcom/transsion/player/orplayer/e;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 91
    .line 92
    invoke-interface {v2, v0, v3}, Lcom/transsion/player/orplayer/e;->onPlayError(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getCode()Lcom/aliyun/player/bean/ErrorCode;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_DECODE_AUDIO:Lcom/aliyun/player/bean/ErrorCode;

    .line 101
    .line 102
    if-ne p1, v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/transsion/player/orplayer/q;->prepare()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/transsion/player/orplayer/q;->play()V

    .line 108
    .line 109
    .line 110
    :cond_4
    return-void
.end method

.method private static final B(Lcom/transsion/player/orplayer/q;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/q;->k:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/transsion/player/orplayer/q;->q:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/transsion/player/orplayer/q;->n:J

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v1, v1, v3

    .line 18
    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    sget-object v1, Lsn/e;->a:Lsn/e;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->a:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "aliyun onPrepare \u5185\u90e8\u7684\u89e3\u7801\u5207\u6362\uff0c\u5df2\u6709\u64ad\u653e\u8fdb\u5ea6\uff0c\u76f4\u63a5\u64ad\u653e"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3, v0}, Lsn/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    iget-wide v0, p0, Lcom/transsion/player/orplayer/q;->n:J

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/transsion/player/orplayer/q;->seekTo(J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/player/orplayer/q;->play()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/e;->onPrepare(Lgn/e;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 67
    .line 68
    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/e;->onPrepare(Lgn/e;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    :goto_1
    return-void
.end method

.method private static final C(Lcom/transsion/player/orplayer/q;Lcom/aliyun/player/bean/InfoBean;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraValue()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    .line 15
    .line 16
    if-ne v2, v3, :cond_2

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/transsion/player/orplayer/q;->n:J

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 25
    .line 26
    invoke-interface {v2, v0, v1, v3}, Lcom/transsion/player/orplayer/e;->onProgress(JLgn/e;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/transsion/player/orplayer/e;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 48
    .line 49
    invoke-interface {v3, v0, v1, v4}, Lcom/transsion/player/orplayer/e;->onProgress(JLgn/e;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    sget-object v3, Lcom/aliyun/player/bean/InfoCode;->LoopingStart:Lcom/aliyun/player/bean/InfoCode;

    .line 58
    .line 59
    if-ne v2, v3, :cond_4

    .line 60
    .line 61
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-interface {v2}, Lcom/transsion/player/orplayer/e;->onLoopingStart()V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lcom/transsion/player/orplayer/e;

    .line 85
    .line 86
    invoke-interface {v3}, Lcom/transsion/player/orplayer/e;->onLoopingStart()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    sget-object v3, Lcom/aliyun/player/bean/InfoCode;->BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

    .line 95
    .line 96
    if-ne v2, v3, :cond_6

    .line 97
    .line 98
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 99
    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    iget-object v3, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 103
    .line 104
    invoke-interface {v2, v0, v1, v3}, Lcom/transsion/player/orplayer/e;->onBufferedPosition(JLgn/e;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 108
    .line 109
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Lcom/transsion/player/orplayer/e;

    .line 124
    .line 125
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 126
    .line 127
    invoke-interface {v3, v0, v1, v4}, Lcom/transsion/player/orplayer/e;->onBufferedPosition(JLgn/e;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    sget-object v0, Lcom/aliyun/player/bean/InfoCode;->SwitchToSoftwareVideoDecoder:Lcom/aliyun/player/bean/InfoCode;

    .line 136
    .line 137
    if-ne p1, v0, :cond_7

    .line 138
    .line 139
    sget-object p1, Lsn/e;->a:Lsn/e;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/transsion/player/orplayer/q;->a:Ljava/lang/String;

    .line 142
    .line 143
    const-string v0, "aliyun \u786c\u89e3\u5931\u8d25\uff0c\u81ea\u52a8\u5207\u6362\u5230\u8f6f\u4ef6"

    .line 144
    .line 145
    const/4 v1, 0x1

    .line 146
    invoke-virtual {p1, p0, v0, v1}, Lsn/e;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    .line 148
    .line 149
    :cond_7
    return-void
.end method

.method private static final D(Lcom/transsion/player/orplayer/q;I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "setOnStateChangedListener status:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x3

    .line 22
    if-ne p1, v2, :cond_1

    .line 23
    .line 24
    move v3, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v3, v0

    .line 27
    :goto_0
    iput-boolean v3, p0, Lcom/transsion/player/orplayer/q;->g:Z

    .line 28
    .line 29
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    invoke-interface {v4, v3}, Lcom/transsion/player/orplayer/e;->onIsPlayingChanged(Z)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v3, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/transsion/player/orplayer/e;

    .line 53
    .line 54
    iget-boolean v5, p0, Lcom/transsion/player/orplayer/q;->g:Z

    .line 55
    .line 56
    invoke-interface {v4, v5}, Lcom/transsion/player/orplayer/e;->onIsPlayingChanged(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 v3, 0x6

    .line 61
    if-ne p1, v3, :cond_4

    .line 62
    .line 63
    move v0, v1

    .line 64
    :cond_4
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/q;->j:Z

    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->c:Lcom/transsion/player/orplayer/c;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/transsion/player/orplayer/q;->g:Z

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->f(Z)V

    .line 73
    .line 74
    .line 75
    :cond_5
    if-eq p1, v2, :cond_a

    .line 76
    .line 77
    const/4 v0, 0x4

    .line 78
    if-eq p1, v0, :cond_8

    .line 79
    .line 80
    if-eq p1, v3, :cond_6

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_6
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 84
    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 88
    .line 89
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/e;->onCompletion(Lgn/e;)V

    .line 90
    .line 91
    .line 92
    :cond_7
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_c

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/transsion/player/orplayer/e;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 111
    .line 112
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/e;->onCompletion(Lgn/e;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_8
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 117
    .line 118
    if-eqz p1, :cond_9

    .line 119
    .line 120
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 121
    .line 122
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/e;->onVideoPause(Lgn/e;)V

    .line 123
    .line 124
    .line 125
    :cond_9
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 126
    .line 127
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_c

    .line 136
    .line 137
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Lcom/transsion/player/orplayer/e;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 144
    .line 145
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/e;->onVideoPause(Lgn/e;)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_a
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 150
    .line 151
    if-eqz p1, :cond_b

    .line 152
    .line 153
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 154
    .line 155
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/e;->onVideoStart(Lgn/e;)V

    .line 156
    .line 157
    .line 158
    :cond_b
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 159
    .line 160
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_c

    .line 169
    .line 170
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Lcom/transsion/player/orplayer/e;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 177
    .line 178
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/e;->onVideoStart(Lgn/e;)V

    .line 179
    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_c
    :goto_5
    return-void
.end method

.method private static final E(Lcom/transsion/player/orplayer/q;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/transsion/player/orplayer/e;->setOnSeekCompleteListener()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object p0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/transsion/player/orplayer/e;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/transsion/player/orplayer/e;->setOnSeekCompleteListener()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method private static final F(Lcom/transsion/player/orplayer/q;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getMediaInfo()Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_7

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/MediaInfo;->getTrackInfos()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_7

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_7

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 39
    .line 40
    sget-object v2, Lsn/e;->a:Lsn/e;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/transsion/player/orplayer/q;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v6, "setOnInfoListener onRenderFirstFrame "

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const/4 v5, 0x1

    .line 66
    invoke-virtual {v2, v3, v4, v5}, Lsn/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v1, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 70
    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    const/4 v2, -0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    sget-object v3, Lcom/transsion/player/orplayer/q$a;->a:[I

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    aget v2, v3, v2

    .line 82
    .line 83
    :goto_1
    if-eq v2, v5, :cond_5

    .line 84
    .line 85
    const/4 v3, 0x2

    .line 86
    if-eq v2, v3, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iget v1, v1, Lcom/aliyun/player/nativeclass/TrackInfo;->videoBitrate:I

    .line 90
    .line 91
    iput v1, p0, Lcom/transsion/player/orplayer/q;->p:I

    .line 92
    .line 93
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-interface {v2, v1}, Lcom/transsion/player/orplayer/e;->onTracksAudioBitrateChange(I)V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Lcom/transsion/player/orplayer/e;

    .line 117
    .line 118
    iget v3, p0, Lcom/transsion/player/orplayer/q;->p:I

    .line 119
    .line 120
    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/e;->onTracksAudioBitrateChange(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    iget v1, v1, Lcom/aliyun/player/nativeclass/TrackInfo;->videoBitrate:I

    .line 125
    .line 126
    iput v1, p0, Lcom/transsion/player/orplayer/q;->o:I

    .line 127
    .line 128
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 129
    .line 130
    if-eqz v2, :cond_6

    .line 131
    .line 132
    invoke-interface {v2, v1}, Lcom/transsion/player/orplayer/e;->onTracksVideoBitrateChange(I)V

    .line 133
    .line 134
    .line 135
    :cond_6
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_1

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lcom/transsion/player/orplayer/e;

    .line 152
    .line 153
    iget v3, p0, Lcom/transsion/player/orplayer/q;->o:I

    .line 154
    .line 155
    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/e;->onTracksVideoBitrateChange(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_7
    iget v0, p0, Lcom/transsion/player/orplayer/q;->o:I

    .line 160
    .line 161
    iget v1, p0, Lcom/transsion/player/orplayer/q;->p:I

    .line 162
    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v3, "setOnInfoListener onRenderFirstFrame\uff0cvideoBitrate:"

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, ", audioBitrate:"

    .line 177
    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 185
    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    invoke-interface {v0}, Lcom/transsion/player/orplayer/e;->onRenderFirstFrame()V

    .line 189
    .line 190
    .line 191
    :cond_8
    iget-object p0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 192
    .line 193
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_9

    .line 202
    .line 203
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Lcom/transsion/player/orplayer/e;

    .line 208
    .line 209
    invoke-interface {v0}, Lcom/transsion/player/orplayer/e;->onRenderFirstFrame()V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_9
    return-void
.end method

.method private static final G(Lcom/transsion/player/orplayer/q;II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/e;->onVideoSizeChanged(II)V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object p0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/transsion/player/orplayer/e;

    .line 30
    .line 31
    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/e;->onVideoSizeChanged(II)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method private final H(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->s:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/transsion/player/orplayer/p;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Lcom/transsion/player/orplayer/p;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :goto_1
    return-void
.end method

.method private static final I(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final J(Lhn/d;Z)V
    .locals 4

    .line 1
    new-instance v0, Lcom/aliyun/player/nativeclass/CacheConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/aliyun/player/nativeclass/CacheConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mEnable:Z

    .line 7
    .line 8
    const-wide/16 v1, 0x78

    .line 9
    .line 10
    iput-wide v1, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mMaxDurationS:J

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->m:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "video_cache"

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mDir:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1}, Lhn/d;->a()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mMaxSizeMB:I

    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-static {p2, p1, v1}, Lcom/aliyun/player/AliPlayerGlobalSettings;->enableLocalCache(ZILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/transsion/player/orplayer/o;

    .line 70
    .line 71
    invoke-direct {p1}, Lcom/transsion/player/orplayer/o;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/aliyun/player/AliPlayerGlobalSettings;->setCacheUrlHashCallback(Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void
.end method

.method private static final K(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lsn/d;->a:Lsn/d$a;

    .line 7
    .line 8
    new-instance v8, Ljava/net/URI;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v2, v8

    .line 28
    invoke-direct/range {v2 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "toString(...)"

    .line 36
    .line 37
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lsn/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    sget-object v0, Lsn/d;->a:Lsn/d$a;

    .line 46
    .line 47
    if-nez p0, :cond_0

    .line 48
    .line 49
    const-string p0, ""

    .line 50
    .line 51
    :cond_0
    invoke-virtual {v0, p0}, Lsn/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :goto_0
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/player/orplayer/q;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/q;->y(Lcom/transsion/player/orplayer/q;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/q;->I(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/transsion/player/orplayer/q;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/q;->B(Lcom/transsion/player/orplayer/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/q;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/player/orplayer/q;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/q;->G(Lcom/transsion/player/orplayer/q;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/transsion/player/orplayer/q;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/q;->A(Lcom/transsion/player/orplayer/q;Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsion/player/orplayer/q;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/q;->E(Lcom/transsion/player/orplayer/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/transsion/player/orplayer/q;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/q;->D(Lcom/transsion/player/orplayer/q;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/transsion/player/orplayer/q;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/q;->F(Lcom/transsion/player/orplayer/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/transsion/player/orplayer/q;Lcom/aliyun/player/bean/InfoBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/q;->C(Lcom/transsion/player/orplayer/q;Lcom/aliyun/player/bean/InfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m(Lcom/transsion/player/orplayer/q;)Lcom/aliyun/player/AliPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/player/orplayer/q;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/orplayer/q;->s:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/player/orplayer/q;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/player/orplayer/q;)Lgn/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/player/orplayer/q;)Lcom/transsion/player/orplayer/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/player/orplayer/q;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/orplayer/q;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/player/orplayer/q;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/player/orplayer/q;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic t(Lcom/transsion/player/orplayer/q;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/q;->H(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Lcom/transsion/player/orplayer/q;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/player/orplayer/q;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method private final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->v:Landroid/view/SurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->t:Lcom/transsion/player/orplayer/q$d;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/transsion/player/orplayer/q;->v:Landroid/view/SurfaceView;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->u:Landroid/view/TextureView;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iput-object v0, p0, Lcom/transsion/player/orplayer/q;->u:Landroid/view/TextureView;

    .line 27
    .line 28
    return-void
.end method

.method private final w(Lcom/transsion/player/orplayer/PlayError;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const v2, 0x20040001

    .line 14
    .line 15
    .line 16
    if-eq v0, v2, :cond_2

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const v0, 0x20040002

    .line 30
    .line 31
    .line 32
    if-eq p1, v0, :cond_2

    .line 33
    .line 34
    :goto_1
    return v1

    .line 35
    :cond_2
    iget-boolean p1, p0, Lcom/transsion/player/orplayer/q;->q:Z

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    sget-object p1, Lsn/e;->a:Lsn/e;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->a:Ljava/lang/String;

    .line 43
    .line 44
    const-string v3, "aliyun \u5df2\u7ecf\u5207\u8fc7\u8f6f\u89e3\uff0c\u8fd8\u662f\u51fa\u9519\u4e0d\u518d\u5904\u7406"

    .line 45
    .line 46
    invoke-virtual {p1, v2, v3, v0}, Lsn/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    :cond_3
    sget-object p1, Lsn/e;->a:Lsn/e;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->a:Ljava/lang/String;

    .line 53
    .line 54
    const-string v3, "aliyun onError -- \u89e3\u7801\u5931\u8d25\uff0c\u5f3a\u5236\u5207\u5230\u8f6f\u89e3"

    .line 55
    .line 56
    invoke-virtual {p1, v2, v3, v0}, Lsn/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    iget-object v2, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 64
    .line 65
    invoke-interface {p1, v2}, Lcom/transsion/player/orplayer/e;->onAliyunDecodeErrorChangeSoftwareDecoder(Lgn/e;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/transsion/player/orplayer/e;

    .line 85
    .line 86
    iget-object v3, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 87
    .line 88
    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/e;->onAliyunDecodeErrorChangeSoftwareDecoder(Lgn/e;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/player/orplayer/q;->stop()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/transsion/player/orplayer/q;->reset()V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    invoke-interface {p1, v1}, Lcom/aliyun/player/IPlayer;->enableHardwareDecoder(Z)V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 106
    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/transsion/player/orplayer/q;->setDataSource(Lgn/e;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/transsion/player/orplayer/q;->prepare()V

    .line 113
    .line 114
    .line 115
    :cond_7
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/q;->q:Z

    .line 116
    .line 117
    return v0
.end method

.method private final x()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/player/orplayer/q$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/q$b;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsion/player/orplayer/c;

    .line 7
    .line 8
    new-instance v2, Lcom/transsion/player/orplayer/g;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lcom/transsion/player/orplayer/g;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0, v2}, Lcom/transsion/player/orplayer/c;-><init>(Lcom/transsion/player/orplayer/d;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/transsion/player/orplayer/q;->c:Lcom/transsion/player/orplayer/c;

    .line 17
    .line 18
    return-void
.end method

.method private static final y(Lcom/transsion/player/orplayer/q;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/e;->onFocusChange(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/transsion/player/orplayer/e;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/e;->onFocusChange(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method private final z(Z)V
    .locals 2

    .line 1
    sget-object v0, Lhn/b;->a:Lhn/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhn/b;->a()Lhn/d;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lhn/b;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/transsion/player/orplayer/q;->J(Lhn/d;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/player/orplayer/h;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/h;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/player/orplayer/i;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/i;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    new-instance v0, Lcom/transsion/player/orplayer/j;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/j;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    new-instance v0, Lcom/transsion/player/orplayer/q$c;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/q$c;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    new-instance v0, Lcom/transsion/player/orplayer/k;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/k;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    new-instance v0, Lcom/transsion/player/orplayer/l;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/l;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V

    .line 91
    .line 92
    .line 93
    :cond_6
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 94
    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    new-instance v0, Lcom/transsion/player/orplayer/m;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/m;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    .line 103
    .line 104
    .line 105
    :cond_7
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 106
    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    new-instance v0, Lcom/transsion/player/orplayer/n;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/n;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V

    .line 115
    .line 116
    .line 117
    :cond_8
    return-void
.end method


# virtual methods
.method public addDataSource(Lgn/e;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$b;->a(Lcom/transsion/player/orplayer/f;Lgn/e;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public addPlayerListener(Lcom/transsion/player/orplayer/e;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public changeTrackSelection(Lqn/d;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$b;->c(Lcom/transsion/player/orplayer/f;Lqn/d;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public clearScreen()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->clearScreen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public clearSurfaceOnly()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->v:Landroid/view/SurfaceView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->u:Landroid/view/TextureView;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-direct {p0}, Lcom/transsion/player/orplayer/q;->v()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public currentMediaSource()Lgn/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public enableHardwareDecoder(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->enableHardwareDecoder(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getBitrate()Lkotlin/Pair;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/Pair;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/player/orplayer/q;->o:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/transsion/player/orplayer/q;->p:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/player/orplayer/q;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCurrentTracks()Lqn/c;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/f$b;->h(Lcom/transsion/player/orplayer/f;)Lqn/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCurrentVideoFormat()Lqn/b;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/f$b;->i(Lcom/transsion/player/orplayer/f;)Lqn/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getDownloadBitrate()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/aliyun/player/IPlayer$Option;->DownloadBitrate:Lcom/aliyun/player/IPlayer$Option;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getVideoHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/orplayer/f$b;->k(Lcom/transsion/player/orplayer/f;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/orplayer/f$b;->l(Lcom/transsion/player/orplayer/f;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method public getVolume()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getVolume()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->isMute()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->c:Lcom/transsion/player/orplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->pause()V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->c:Lcom/transsion/player/orplayer/c;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/e;->initPlayer()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/transsion/player/orplayer/e;->initPlayer()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->start()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->c:Lcom/transsion/player/orplayer/c;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->c:Lcom/transsion/player/orplayer/c;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->e()V

    .line 50
    .line 51
    .line 52
    :cond_4
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->prepare()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/q;->i:Z

    .line 10
    .line 11
    return-void
.end method

.method public release()V
    .locals 5

    .line 2
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/q;->r:Z

    .line 4
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 7
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 8
    const-string v4, ""

    iput-object v4, p0, Lcom/transsion/player/orplayer/q;->e:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v4, :cond_1

    invoke-interface {v4, v3}, Lcom/aliyun/player/IPlayer;->setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V

    .line 10
    :cond_1
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v4, :cond_2

    invoke-interface {v4, v3}, Lcom/aliyun/player/IPlayer;->setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V

    .line 11
    :cond_2
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v4, :cond_3

    invoke-interface {v4, v3}, Lcom/aliyun/player/IPlayer;->setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V

    .line 12
    :cond_3
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v4, :cond_4

    invoke-interface {v4, v3}, Lcom/aliyun/player/IPlayer;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    .line 13
    :cond_4
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v4, :cond_5

    invoke-interface {v4, v3}, Lcom/aliyun/player/IPlayer;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    .line 14
    :cond_5
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v4, :cond_6

    invoke-interface {v4, v3}, Lcom/aliyun/player/IPlayer;->setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V

    .line 15
    :cond_6
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v4, :cond_7

    invoke-interface {v4, v3}, Lcom/aliyun/player/IPlayer;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    .line 16
    :cond_7
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v4, :cond_8

    invoke-interface {v4, v3}, Lcom/aliyun/player/IPlayer;->setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V

    .line 17
    :cond_8
    iget-object v4, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lcom/aliyun/player/IPlayer;->release()V

    .line 18
    :cond_9
    iput-object v3, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v1, :cond_a

    .line 19
    invoke-static {v1, v3, v0, v3}, Lcom/transsion/player/orplayer/e$a;->u(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 20
    :cond_a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/player/orplayer/e;

    .line 21
    invoke-static {v2, v3, v0, v3}, Lcom/transsion/player/orplayer/e$a;->u(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_b
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    .line 23
    :cond_c
    invoke-direct {p0}, Lcom/transsion/player/orplayer/q;->v()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/q;->k:Z

    .line 25
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/q;->q:Z

    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$b;->o(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public removeDataSource(Lgn/e;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$b;->p(Lcom/transsion/player/orplayer/f;Lgn/e;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public removePlayerListener(Lcom/transsion/player/orplayer/e;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public requestForce()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/f$b;->r(Lcom/transsion/player/orplayer/f;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->reset()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->clearScreen()V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->c:Lcom/transsion/player/orplayer/c;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/q;->i:Z

    .line 30
    .line 31
    if-nez v0, :cond_5

    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/transsion/player/orplayer/e;->onPlayerReset()V

    .line 38
    .line 39
    .line 40
    :cond_4
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 57
    .line 58
    invoke-interface {v1}, Lcom/transsion/player/orplayer/e;->onPlayerReset()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_5
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/q;->i:Z

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/q;->k:Z

    .line 67
    .line 68
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/q;->q:Z

    .line 69
    .line 70
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    const v1, 0x249f0

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setMaxAccurateSeekDelta(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/aliyun/player/IPlayer$SeekMode;->Accurate:Lcom/aliyun/player/IPlayer$SeekMode;

    invoke-interface {v0, p1, p2, v1}, Lcom/aliyun/player/IPlayer;->seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V

    :cond_1
    return-void
.end method

.method public seekTo(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$b;->s(Lcom/transsion/player/orplayer/f;Ljava/lang/String;J)V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setDataSource(Lgn/e;)V
    .locals 2

    .line 1
    const-string v0, "mediaSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/aliyun/player/source/UrlSource;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/aliyun/player/source/UrlSource;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lgn/e;->j()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/transsion/player/orplayer/q;->e:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/transsion/player/orplayer/q;->f:Lgn/e;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/aliyun/player/source/UrlSource;->setUri(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/transsion/player/orplayer/e;->onSetDataSource()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 46
    .line 47
    invoke-interface {v1}, Lcom/transsion/player/orplayer/e;->onSetDataSource()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-interface {p1, v0}, Lcom/aliyun/player/UrlPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/transsion/player/orplayer/q;->k:Z

    .line 60
    .line 61
    iput-boolean p1, p0, Lcom/transsion/player/orplayer/q;->q:Z

    .line 62
    .line 63
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setLoop(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setMute(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPlayerConfig(Lhn/d;)V
    .locals 2

    .line 1
    const-string v0, "vodConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    const-string v1, "null cannot be cast to non-null type com.aliyun.player.nativeclass.PlayerConfig"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lhn/d;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput-boolean v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mClearFrameWhenStop:Z

    .line 26
    .line 27
    invoke-virtual {p1}, Lhn/d;->j()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput-boolean v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableLocalCache:Z

    .line 32
    .line 33
    invoke-virtual {p1}, Lhn/d;->k()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mPositionTimerIntervalMs:I

    .line 38
    .line 39
    invoke-virtual {p1}, Lhn/d;->g()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxBufferDuration:I

    .line 44
    .line 45
    invoke-virtual {p1}, Lhn/d;->f()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mHighBufferDuration:I

    .line 50
    .line 51
    invoke-virtual {p1}, Lhn/d;->n()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mStartBufferDuration:I

    .line 56
    .line 57
    invoke-virtual {p1}, Lhn/d;->m()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkRetryCount:I

    .line 62
    .line 63
    invoke-virtual {p1}, Lhn/d;->h()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkTimeout:I

    .line 68
    .line 69
    invoke-virtual {p1}, Lhn/d;->c()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput-boolean v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mDisableAudio:Z

    .line 74
    .line 75
    invoke-virtual {p1}, Lhn/d;->d()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput-boolean p1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mDisableVideo:Z

    .line 80
    .line 81
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 82
    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method public setPlayerListener(Lcom/transsion/player/orplayer/e;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/player/orplayer/q;->d:Lcom/transsion/player/orplayer/e;

    .line 7
    .line 8
    return-void
.end method

.method public setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V
    .locals 1

    .line 1
    const-string v0, "scaleMode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/player/orplayer/q$a;->b:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 34
    .line 35
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 44
    .line 45
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 54
    .line 55
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setSpeed(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/orplayer/q;->v()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/player/orplayer/q;->v:Landroid/view/SurfaceView;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    instance-of v1, v0, Landroid/os/HandlerThread;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroid/os/Handler;

    .line 17
    .line 18
    check-cast v0, Landroid/os/HandlerThread;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Landroid/os/Handler;

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iput-object v1, p0, Lcom/transsion/player/orplayer/q;->s:Landroid/os/Handler;

    .line 38
    .line 39
    :cond_1
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->t:Lcom/transsion/player/orplayer/q$d;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/orplayer/q;->v()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/player/orplayer/q;->u:Landroid/view/TextureView;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/transsion/player/orplayer/q;->v:Landroid/view/SurfaceView;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    instance-of v1, v0, Landroid/os/HandlerThread;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Landroid/os/Handler;

    .line 19
    .line 20
    check-cast v0, Landroid/os/HandlerThread;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iput-object v1, p0, Lcom/transsion/player/orplayer/q;->s:Landroid/os/Handler;

    .line 40
    .line 41
    :cond_1
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->w:Lcom/transsion/player/orplayer/q$e;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    new-instance v0, Landroid/view/Surface;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public setVipResolution(ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public setVolume(F)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setVolume   volume:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/high16 v2, 0x40000000    # 2.0f

    .line 20
    .line 21
    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->k(FFF)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setVolume(F)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsion/player/orplayer/q;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->c:Lcom/transsion/player/orplayer/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->b:Lcom/aliyun/player/AliPlayer;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->stop()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/q;->c:Lcom/transsion/player/orplayer/c;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    .line 25
    .line 26
    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/q;->q:Z

    .line 29
    .line 30
    return-void
.end method
