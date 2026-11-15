.class Landroidx/media3/exoplayer/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$e;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$b;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$d;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$UnexpectedDrmSessionException;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field private final b:Landroidx/media3/exoplayer/drm/b0;

.field private final c:Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;

.field private final d:Landroidx/media3/exoplayer/drm/DefaultDrmSession$b;

.field private final e:I

.field private final f:Z

.field private final g:Z

.field private final h:Ljava/util/HashMap;

.field private final i:Landroidx/media3/common/util/n;

.field private final j:Landroidx/media3/exoplayer/upstream/m;

.field private final k:Lx1/f4;

.field private final l:Landroidx/media3/exoplayer/drm/m0;

.field private final m:Ljava/util/UUID;

.field private final n:Landroid/os/Looper;

.field private final o:Landroidx/media3/exoplayer/drm/DefaultDrmSession$e;

.field private p:I

.field private q:I

.field private r:Landroid/os/HandlerThread;

.field private s:Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;

.field private t:Landroidx/media3/decoder/b;

.field private u:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

.field private v:[B

.field private w:[B

.field private x:Landroidx/media3/exoplayer/drm/b0$a;

.field private y:Landroidx/media3/exoplayer/drm/b0$d;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/b0;Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;Landroidx/media3/exoplayer/drm/DefaultDrmSession$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Landroidx/media3/exoplayer/drm/m0;Landroid/os/Looper;Landroidx/media3/exoplayer/upstream/m;Lx1/f4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p6, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p6, v0, :cond_1

    .line 9
    .line 10
    :cond_0
    invoke-static {p9}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->m:Ljava/util/UUID;

    .line 14
    .line 15
    iput-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;

    .line 16
    .line 17
    iput-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->d:Landroidx/media3/exoplayer/drm/DefaultDrmSession$b;

    .line 18
    .line 19
    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 20
    .line 21
    iput p6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e:I

    .line 22
    .line 23
    iput-boolean p7, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->f:Z

    .line 24
    .line 25
    iput-boolean p8, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->g:Z

    .line 26
    .line 27
    if-eqz p9, :cond_2

    .line 28
    .line 29
    iput-object p9, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w:[B

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->a:Ljava/util/List;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/util/List;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->a:Ljava/util/List;

    .line 46
    .line 47
    :goto_0
    iput-object p10, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->h:Ljava/util/HashMap;

    .line 48
    .line 49
    iput-object p11, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->l:Landroidx/media3/exoplayer/drm/m0;

    .line 50
    .line 51
    new-instance p1, Landroidx/media3/common/util/n;

    .line 52
    .line 53
    invoke-direct {p1}, Landroidx/media3/common/util/n;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->i:Landroidx/media3/common/util/n;

    .line 57
    .line 58
    iput-object p13, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->j:Landroidx/media3/exoplayer/upstream/m;

    .line 59
    .line 60
    iput-object p14, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->k:Lx1/f4;

    .line 61
    .line 62
    const/4 p1, 0x2

    .line 63
    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 64
    .line 65
    iput-object p12, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->n:Landroid/os/Looper;

    .line 66
    .line 67
    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$e;

    .line 68
    .line 69
    invoke-direct {p1, p0, p12}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$e;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o:Landroidx/media3/exoplayer/drm/DefaultDrmSession$e;

    .line 73
    .line 74
    return-void
.end method

.method private C(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->y:Landroidx/media3/exoplayer/drm/b0$d;

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    iget p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->y:Landroidx/media3/exoplayer/drm/b0$d;

    .line 19
    .line 20
    instance-of p1, p2, Ljava/lang/Exception;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;

    .line 25
    .line 26
    check-cast p2, Ljava/lang/Exception;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-interface {p1, p2, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;->a(Ljava/lang/Exception;Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :try_start_0
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 34
    .line 35
    check-cast p2, [B

    .line 36
    .line 37
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/drm/b0;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;

    .line 41
    .line 42
    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;->onProvisionCompleted()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p1

    .line 47
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-interface {p2, p1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;->a(Ljava/lang/Exception;Z)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method private D()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/b0;->openSession()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->k:Lx1/f4;

    .line 20
    .line 21
    invoke-interface {v2, v0, v3}, Landroidx/media3/exoplayer/drm/b0;->f([BLx1/f4;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 27
    .line 28
    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/drm/b0;->b([B)Landroidx/media3/decoder/b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->t:Landroidx/media3/decoder/b;

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 36
    .line 37
    new-instance v2, Landroidx/media3/exoplayer/drm/b;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/drm/b;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o(Landroidx/media3/common/util/m;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_0

    .line 53
    :catch_1
    move-exception v0

    .line 54
    :goto_0
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/x;->d(Ljava/lang/Throwable;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;

    .line 61
    .line 62
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;->b(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v(Ljava/lang/Throwable;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_2
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;

    .line 71
    .line 72
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;->b(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    const/4 v0, 0x0

    .line 76
    return v0
.end method

.method private E([BIZ)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->a:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->h:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-interface {v0, p1, v1, p2, v2}, Landroidx/media3/exoplayer/drm/b0;->d([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/b0$a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x:Landroidx/media3/exoplayer/drm/b0$a;

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s:Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;

    .line 14
    .line 15
    invoke-static {p1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;

    .line 20
    .line 21
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x:Landroidx/media3/exoplayer/drm/b0$a;

    .line 22
    .line 23
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-virtual {p1, v0, p2, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;->b(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p1

    .line 35
    :goto_0
    const/4 p2, 0x1

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x(Ljava/lang/Throwable;Z)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method

.method private G()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w:[B

    .line 7
    .line 8
    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/drm/b0;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception v1

    .line 15
    :goto_0
    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v(Ljava/lang/Throwable;I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method private H()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->n:Landroid/os/Looper;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "\nExpected thread: "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->n:Landroid/os/Looper;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "DefaultDrmSession"

    .line 62
    .line 63
    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public static synthetic g(Ljava/lang/Throwable;Landroidx/media3/exoplayer/drm/r$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->t(Ljava/lang/Throwable;Landroidx/media3/exoplayer/drm/r$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(ILandroidx/media3/exoplayer/drm/r$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->u(ILandroidx/media3/exoplayer/drm/r$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->C(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->m:Ljava/util/UUID;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/m0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->l:Landroidx/media3/exoplayer/drm/m0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/upstream/m;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->j:Landroidx/media3/exoplayer/upstream/m;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession$e;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o:Landroidx/media3/exoplayer/drm/DefaultDrmSession$e;

    .line 2
    .line 3
    return-object p0
.end method

.method private o(Landroidx/media3/common/util/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->i:Landroidx/media3/common/util/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/n;->elementSet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/media3/exoplayer/drm/r$a;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Landroidx/media3/common/util/m;->accept(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private p(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [B

    .line 13
    .line 14
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x2

    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    if-eq v1, v2, :cond_4

    .line 21
    .line 22
    if-eq v1, v3, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    if-eq v1, v0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w:[B

    .line 30
    .line 31
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 35
    .line 36
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w:[B

    .line 40
    .line 41
    invoke-direct {p0, v1, v0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->E([BIZ)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w:[B

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->G()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_9

    .line 54
    .line 55
    :cond_3
    invoke-direct {p0, v0, v3, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->E([BIZ)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w:[B

    .line 60
    .line 61
    if-nez v1, :cond_5

    .line 62
    .line 63
    invoke-direct {p0, v0, v2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->E([BIZ)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 68
    .line 69
    const/4 v2, 0x4

    .line 70
    if-eq v1, v2, :cond_6

    .line 71
    .line 72
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->G()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_9

    .line 77
    .line 78
    :cond_6
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q()J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e:I

    .line 83
    .line 84
    if-nez v1, :cond_7

    .line 85
    .line 86
    const-wide/16 v6, 0x3c

    .line 87
    .line 88
    cmp-long v1, v4, v6

    .line 89
    .line 90
    if-gtz v1, :cond_7

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "Offline license has expired or will expire soon. Remaining seconds: "

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v2, "DefaultDrmSession"

    .line 110
    .line 111
    invoke-static {v2, v1}, Landroidx/media3/common/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v0, v3, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->E([BIZ)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_7
    const-wide/16 v0, 0x0

    .line 119
    .line 120
    cmp-long p1, v4, v0

    .line 121
    .line 122
    if-gtz p1, :cond_8

    .line 123
    .line 124
    new-instance p1, Landroidx/media3/exoplayer/drm/KeysExpiredException;

    .line 125
    .line 126
    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/KeysExpiredException;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v(Ljava/lang/Throwable;I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_8
    iput v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 134
    .line 135
    new-instance p1, Landroidx/media3/exoplayer/drm/f;

    .line 136
    .line 137
    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/f;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o(Landroidx/media3/common/util/m;)V

    .line 141
    .line 142
    .line 143
    :cond_9
    :goto_0
    return-void
.end method

.method private q()J
    .locals 5

    .line 1
    sget-object v0, Landroidx/media3/common/h;->d:Ljava/util/UUID;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->m:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-wide v0, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/n0;->b(Landroidx/media3/exoplayer/drm/DrmSession;)Landroid/util/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/util/Pair;

    .line 26
    .line 27
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Long;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/lang/Long;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    return-wide v0
.end method

.method private s()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method private static synthetic t(Ljava/lang/Throwable;Landroidx/media3/exoplayer/drm/r$a;)V
    .locals 0

    .line 1
    check-cast p0, Ljava/lang/Exception;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/drm/r$a;->l(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic u(ILandroidx/media3/exoplayer/drm/r$a;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/drm/r$a;->k(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private v(Ljava/lang/Throwable;I)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/drm/x;->b(Ljava/lang/Throwable;I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->u:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 11
    .line 12
    const-string p2, "DefaultDrmSession"

    .line 13
    .line 14
    const-string v0, "DRM session error"

    .line 15
    .line 16
    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    instance-of p2, p1, Ljava/lang/Exception;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    new-instance p2, Landroidx/media3/exoplayer/drm/e;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/drm/e;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o(Landroidx/media3/common/util/m;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    instance-of p2, p1, Ljava/lang/Error;

    .line 33
    .line 34
    if-eqz p2, :cond_4

    .line 35
    .line 36
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/x;->e(Ljava/lang/Throwable;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/x;->d(Ljava/lang/Throwable;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    check-cast p1, Ljava/lang/Error;

    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    :goto_0
    iget p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 53
    .line 54
    const/4 p2, 0x4

    .line 55
    if-eq p1, p2, :cond_3

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 59
    .line 60
    :cond_3
    return-void

    .line 61
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v0, "Unexpected Throwable subclass"

    .line 64
    .line 65
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p2
.end method

.method private w(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x:Landroidx/media3/exoplayer/drm/b0$a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_6

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x:Landroidx/media3/exoplayer/drm/b0$a;

    .line 14
    .line 15
    instance-of p1, p2, Ljava/lang/Exception;

    .line 16
    .line 17
    if-nez p1, :cond_5

    .line 18
    .line 19
    instance-of p1, p2, Ljava/lang/NoSuchMethodError;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :try_start_0
    check-cast p2, [B

    .line 25
    .line 26
    iget p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e:I

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w:[B

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, [B

    .line 40
    .line 41
    invoke-interface {p1, v0, p2}, Landroidx/media3/exoplayer/drm/b0;->provideKeyResponse([B[B)[B

    .line 42
    .line 43
    .line 44
    new-instance p1, Landroidx/media3/exoplayer/drm/c;

    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/c;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o(Landroidx/media3/common/util/m;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move-exception p1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 60
    .line 61
    invoke-interface {p1, v0, p2}, Landroidx/media3/exoplayer/drm/b0;->provideKeyResponse([B[B)[B

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e:I

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    if-eq p2, v0, :cond_3

    .line 69
    .line 70
    if-nez p2, :cond_4

    .line 71
    .line 72
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w:[B

    .line 73
    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    :cond_3
    if-eqz p1, :cond_4

    .line 77
    .line 78
    array-length p2, p1

    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w:[B

    .line 82
    .line 83
    :cond_4
    const/4 p1, 0x4

    .line 84
    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 85
    .line 86
    new-instance p1, Landroidx/media3/exoplayer/drm/d;

    .line 87
    .line 88
    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/d;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o(Landroidx/media3/common/util/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :goto_0
    const/4 p2, 0x1

    .line 96
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x(Ljava/lang/Throwable;Z)V

    .line 97
    .line 98
    .line 99
    :goto_1
    return-void

    .line 100
    :cond_5
    :goto_2
    check-cast p2, Ljava/lang/Throwable;

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x(Ljava/lang/Throwable;Z)V

    .line 104
    .line 105
    .line 106
    :cond_6
    :goto_3
    return-void
.end method

.method private x(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/x;->d(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p2, 0x2

    .line 17
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v(Ljava/lang/Throwable;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;

    .line 22
    .line 23
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;->b(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 24
    .line 25
    .line 26
    :goto_2
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method A()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->D()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method B(Ljava/lang/Exception;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p2, 0x3

    .line 6
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v(Ljava/lang/Throwable;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method F()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/b0;->getProvisionRequest()Landroidx/media3/exoplayer/drm/b0$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->y:Landroidx/media3/exoplayer/drm/b0$d;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s:Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->y:Landroidx/media3/exoplayer/drm/b0$d;

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v2, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;->b(ILjava/lang/Object;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final a()Ljava/util/UUID;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->m:Ljava/util/UUID;

    .line 5
    .line 6
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->f:Z

    .line 5
    .line 6
    return v0
.end method

.method public final c()Landroidx/media3/decoder/b;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->t:Landroidx/media3/decoder/b;

    .line 5
    .line 6
    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 7
    .line 8
    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, [B

    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Landroidx/media3/exoplayer/drm/b0;->c([BLjava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public e(Landroidx/media3/exoplayer/drm/r$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "Session reference count less than zero: "

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q:I

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "DefaultDrmSession"

    .line 29
    .line 30
    invoke-static {v2, v0}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q:I

    .line 34
    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->i:Landroidx/media3/common/util/n;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/n;->a(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q:I

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    add-int/2addr v0, v2

    .line 46
    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q:I

    .line 47
    .line 48
    if-ne v0, v2, :cond_3

    .line 49
    .line 50
    iget p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    move v1, v2

    .line 56
    :cond_2
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Landroid/os/HandlerThread;

    .line 60
    .line 61
    const-string v0, "ExoPlayer:DrmRequestHandler"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 69
    .line 70
    .line 71
    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p1, p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s:Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;

    .line 83
    .line 84
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->D()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p(Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->i:Landroidx/media3/common/util/n;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/n;->count(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-ne v0, v2, :cond_4

    .line 109
    .line 110
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/drm/r$a;->k(I)V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->d:Landroidx/media3/exoplayer/drm/DefaultDrmSession$b;

    .line 116
    .line 117
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q:I

    .line 118
    .line 119
    invoke-interface {p1, p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$b;->a(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public f(Landroidx/media3/exoplayer/drm/r$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q:I

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    const-string p1, "DefaultDrmSession"

    .line 9
    .line 10
    const-string v0, "release() called on a session that\'s already fully released."

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q:I

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o:Landroidx/media3/exoplayer/drm/DefaultDrmSession$e;

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$e;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s:Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;

    .line 38
    .line 39
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;->c()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s:Landroidx/media3/exoplayer/drm/DefaultDrmSession$c;

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    .line 51
    .line 52
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/os/HandlerThread;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    .line 62
    .line 63
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->t:Landroidx/media3/decoder/b;

    .line 64
    .line 65
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->u:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 66
    .line 67
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x:Landroidx/media3/exoplayer/drm/b0$a;

    .line 68
    .line 69
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->y:Landroidx/media3/exoplayer/drm/b0$d;

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 76
    .line 77
    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/drm/b0;->closeSession([B)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 81
    .line 82
    :cond_1
    if-eqz p1, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->i:Landroidx/media3/common/util/n;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/n;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->i:Landroidx/media3/common/util/n;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/n;->count(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/r$a;->m()V

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->d:Landroidx/media3/exoplayer/drm/DefaultDrmSession$b;

    .line 101
    .line 102
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q:I

    .line 103
    .line 104
    invoke-interface {p1, p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$b;->b(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->u:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:I

    .line 5
    .line 6
    return v0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/b0;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/drm/b0;->queryKeyStatus([B)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    return-object v0
.end method

.method public r([B)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v:[B

    .line 5
    .line 6
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method z(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->y()V

    .line 6
    .line 7
    .line 8
    :goto_0
    return-void
.end method
