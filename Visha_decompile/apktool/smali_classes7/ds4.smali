.class public abstract Lds4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldv4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lds4$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Z

.field public c:Z

.field public d:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lds4;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lds4;-><init>(Landroid/os/Looper;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Z)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lds4;->d:Landroid/os/Looper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    const-string v0, "use looper thread, must call Looper.prepare() first!"

    .line 6
    invoke-static {v1, v0}, Lsv0;->a(ZLjava/lang/String;)V

    .line 7
    iput-object p1, p0, Lds4;->d:Landroid/os/Looper;

    .line 8
    new-instance v0, Lds4$a;

    invoke-direct {v0, p0, p1}, Lds4$a;-><init>(Lds4;Landroid/os/Looper;)V

    iput-object v0, p0, Lds4;->a:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    const-string p1, "use pool thread, looper should be null!"

    .line 9
    invoke-static {v1, p1}, Lsv0;->a(ZLjava/lang/String;)V

    .line 10
    iput-object v0, p0, Lds4;->d:Landroid/os/Looper;

    .line 11
    iput-object v0, p0, Lds4;->a:Landroid/os/Handler;

    .line 12
    :goto_0
    iput-boolean p2, p0, Lds4;->c:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p1}, Lds4;-><init>(Landroid/os/Looper;Z)V

    return-void
.end method


# virtual methods
.method public A(I[BLjava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lds4;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lds4;->k(Landroid/os/Message;)V

    return-void
.end method

.method public B(I[BLjava/util/Map;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lds4;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lds4;->k(Landroid/os/Message;)V

    return-void
.end method

.method public a(I[BLjava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    new-instance p3, Ljava/io/IOException;

    invoke-direct {p3}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lds4;->e(I[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lds4;->A(I[BLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I[B)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lds4;->e(I[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lds4;->z(I[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lds4;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lds4;->k(Landroid/os/Message;)V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lds4;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lds4;->k(Landroid/os/Message;)V

    return-void
.end method

.method public e(I[BLjava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lds4;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lds4;->k(Landroid/os/Message;)V

    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lds4;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lds4;->k(Landroid/os/Message;)V

    return-void
.end method

.method public g(I[BLjava/util/Map;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lds4;->y(I[BLjava/lang/Throwable;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lds4;->B(I[BLjava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(ILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lds4;->a:Landroid/os/Handler;

    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public i(Landroid/os/Message;)V
    .locals 6

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    const-string v2, "HttpCallbackImpl"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lds4;->q()V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lds4;->n()V

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v5, :cond_0

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lds4;->t(I)V

    goto/16 :goto_1

    :cond_0
    sget-object p1, Lhf1;->a:Lup5;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "RETRY_MESSAGE didn\'t get enough params"

    :try_start_2
    invoke-interface {p1, v2, v0}, Lup5;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    array-length v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v0, v3, :cond_1

    :try_start_3
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v0, v1, v3, v4}, Lds4;->r(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    sget-object v0, Lhf1;->a:Lup5;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v1, "custom onProgress contains an error"

    :try_start_5
    invoke-interface {v0, v2, v1, p1}, Lup5;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_1
    sget-object p1, Lhf1;->a:Lup5;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v0, "PROGRESS_MESSAGE didn\'t got enough params"

    :try_start_6
    invoke-interface {p1, v2, v0}, Lup5;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lds4;->p()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lds4;->u()V

    goto/16 :goto_1

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lt v0, v1, :cond_3

    array-length v0, p1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    aget-object v0, p1, v1

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lds4;->s(Ljava/util/Map;)V

    :cond_2
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p1, v5

    check-cast v1, [B

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1, p1}, Lds4;->o(I[BLjava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lhf1;->a:Lup5;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v0, "FAILURE_MESSAGE didn\'t got enough params"

    :try_start_7
    invoke-interface {p1, v2, v0}, Lup5;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_6

    array-length v0, p1

    if-lt v0, v3, :cond_6

    array-length v0, p1

    if-lt v0, v1, :cond_5

    aget-object v0, p1, v3

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p1, v5

    check-cast v1, [B

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lds4;->w(I[BLjava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p1, v5

    check-cast v1, [B

    invoke-virtual {p0, v0, v1}, Lds4;->v(I[B)V

    aget-object p1, p1, v3

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lds4;->s(Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v5

    check-cast p1, [B

    invoke-virtual {p0, v0, p1}, Lds4;->v(I[B)V

    goto :goto_1

    :cond_6
    sget-object p1, Lhf1;->a:Lup5;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v0, "SUCCESS_MESSAGE didn\'t got enough params"

    :try_start_8
    invoke-interface {p1, v2, v0}, Lup5;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lds4;->x(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lds4;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lds4;->a:Landroid/os/Handler;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method public k(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p0}, Lds4;->m()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lds4;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lds4;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "handler should not be null!"

    invoke-static {v0, v1}, Lsv0;->a(ZLjava/lang/String;)V

    iget-object p0, p0, Lds4;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lds4;->i(Landroid/os/Message;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Lds4;->c:Z

    return p0
.end method

.method public m()Z
    .locals 0

    iget-boolean p0, p0, Lds4;->b:Z

    return p0
.end method

.method public n()V
    .locals 2

    sget-object p0, Lhf1;->a:Lup5;

    const-string v0, "HttpCallbackImpl"

    const-string v1, "Request got cancelled"

    invoke-interface {p0, v0, v1}, Lup5;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract o(I[BLjava/lang/Throwable;)V
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 2

    sget-object p0, Lhf1;->a:Lup5;

    const-string v0, "HttpCallbackImpl"

    const-string v1, "Request got onPaused"

    invoke-interface {p0, v0, v1}, Lup5;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r(JJ)V
    .locals 4

    sget-object p0, Lhf1;->a:Lup5;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    long-to-double p1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v2

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, p3

    goto :goto_0

    :cond_0
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Progress %d from %d (%2.0f%%)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpCallbackImpl"

    invoke-interface {p0, p2, p1}, Lup5;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public t(I)V
    .locals 1

    sget-object p0, Lhf1;->a:Lup5;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Request retry no. %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpCallbackImpl"

    invoke-interface {p0, v0, p1}, Lup5;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public abstract v(I[B)V
.end method

.method public w(I[BLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public x(Ljava/lang/Throwable;)V
    .locals 2

    sget-object p0, Lhf1;->a:Lup5;

    const-string v0, "HttpCallbackImpl"

    const-string v1, "User-space exception detected!"

    invoke-interface {p0, v0, v1, p1}, Lup5;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public y(I[BLjava/lang/Throwable;Ljava/util/Map;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lds4;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lds4;->k(Landroid/os/Message;)V

    return-void
.end method

.method public z(I[B)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lds4;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lds4;->k(Landroid/os/Message;)V

    return-void
.end method
