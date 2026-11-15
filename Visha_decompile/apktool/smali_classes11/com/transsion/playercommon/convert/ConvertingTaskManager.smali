.class public Lcom/transsion/playercommon/convert/ConvertingTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/convert/ConvertingTaskManager$c;,
        Lcom/transsion/playercommon/convert/ConvertingTaskManager$b;
    }
.end annotation


# static fields
.field public static volatile l:Lcom/transsion/playercommon/convert/ConvertingTaskManager;


# instance fields
.field public final a:Lji1;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Map;

.field public h:J

.field public i:Z

.field public final j:Landroid/os/Handler;

.field public final k:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->g:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Loj1;

    invoke-direct {v2, p0}, Loj1;-><init>(Lcom/transsion/playercommon/convert/ConvertingTaskManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/playercommon/convert/ConvertingTaskManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager$a;-><init>(Lcom/transsion/playercommon/convert/ConvertingTaskManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->k:Landroid/database/ContentObserver;

    new-instance v0, Lji1;

    invoke-direct {v0}, Lji1;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->a:Lji1;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->b:Ljava/util/Map;

    return-void
.end method

.method public static C(ZZ)Ljava/util/ArrayList;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lmj1;

    invoke-direct {p1}, Lmj1;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ltpb;->Z(ZLe74;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public static synthetic a(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->x(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->u(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/playercommon/convert/ConvertingTaskManager;Landroid/os/Message;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->w(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->v(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public static j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;
    .locals 2

    sget-object v0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->l:Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    invoke-direct {v1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;-><init>()V

    sput-object v1, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->l:Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->l:Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    return-object v0
.end method

.method public static synthetic u(Ljava/util/List;)V
    .locals 1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltpb;->l(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public static synthetic v(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltpb;->c0(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    return-void
.end method

.method public static synthetic x(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->I(I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public B(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/convert/TranConvertingTask;

    invoke-direct {v0, p1}, Lcom/transsion/playercommon/convert/TranConvertingTask;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object v1, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->b:Ljava/util/Map;

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isConvertedFailed:I

    invoke-static {v1}, Lcom/transsion/playercommon/convert/ConvertingTask;->statusNotFailed(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->clearDefaultCover()V

    iget-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, v0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, v0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/transsion/playercommon/convert/ConvertingTask;->start()V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->y()V

    return-void
.end method

.method public D()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->i:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->k:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->i:Z

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->g:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final F(Ljava/lang/Integer;)Lcom/transsion/playercommon/convert/ConvertingTask;
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/convert/ConvertingTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/convert/ConvertingTask;->remove()V

    iget-object v0, p1, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->clearDefaultCover()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->y()V

    return-object p1
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public H(Lcom/transsion/playercommon/convert/ConvertingTask;)V
    .locals 2

    iget-object v0, p1, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->F(Ljava/lang/Integer;)Lcom/transsion/playercommon/convert/ConvertingTask;

    iget v0, p1, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object p1, p1, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/convert/ConvertingTask;->remove()V

    :cond_4
    :goto_1
    return-void
.end method

.method public I(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->k(I)Lcom/transsion/playercommon/convert/ConvertingTask;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->H(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    :cond_0
    return-void
.end method

.method public J(Lcom/transsion/playercommon/convert/ConvertingTask;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public K(Ljava/lang/String;Lcom/transsion/playercommon/convert/ConvertingTaskManager$b;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->g:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public L(Ljava/lang/String;Lcom/transsion/playercommon/convert/ConvertingTaskManager$c;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->f:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public M(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->z()V

    return-void
.end method

.method public N()V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->h:J

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Ljf;->k(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->h:J

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x458

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->k:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->i:Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/convert/ConvertingTaskManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager$2;-><init>(Lcom/transsion/playercommon/convert/ConvertingTaskManager;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/convert/ConvertingTask;

    invoke-virtual {v0}, Lcom/transsion/playercommon/convert/ConvertingTask;->unregister()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->clearDefaultCover()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p0

    return p0
.end method

.method public k(I)Lcom/transsion/playercommon/convert/ConvertingTask;
    .locals 0

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->l()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/convert/ConvertingTask;

    return-object p0
.end method

.method public l()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->b:Ljava/util/Map;

    return-object p0
.end method

.method public m()Lji1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->a:Lji1;

    return-object p0
.end method

.method public n(I)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/convert/ConvertingTask;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->b:Ljava/util/Map;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/convert/ConvertingTask;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public p(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public q()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public r()V
    .locals 2

    const/4 p0, 0x1

    :try_start_0
    invoke-static {p0, p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->C(ZZ)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->B(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryAllConvertingVideos failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConvertingTaskManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public s(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    new-instance p0, Lpj1;

    invoke-direct {p0, p1}, Lpj1;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {p0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 0

    new-instance p0, Lnj1;

    invoke-direct {p0, p1}, Lnj1;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic w(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->O()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->e()V

    :goto_0
    return v0
.end method

.method public y()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/convert/ConvertingTaskManager$c;

    iget-object v2, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/playercommon/convert/ConvertingTaskManager$c;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j:Landroid/os/Handler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->D()V

    :goto_1
    return-void
.end method

.method public z()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/convert/ConvertingTaskManager$b;

    iget-object v2, p0, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/playercommon/convert/ConvertingTaskManager$b;->q(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
