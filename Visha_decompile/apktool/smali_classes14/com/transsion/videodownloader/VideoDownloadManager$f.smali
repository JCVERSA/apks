.class public Lcom/transsion/videodownloader/VideoDownloadManager$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/videodownloader/VideoDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/videodownloader/VideoDownloadManager;


# direct methods
.method public constructor <init>(Lcom/transsion/videodownloader/VideoDownloadManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/videodownloader/VideoDownloadManager$f;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/videodownloader/VideoDownloadManager$f;->g()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/videodownloader/VideoDownloadManager$f;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/videodownloader/VideoDownloadManager$f;->h()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/videodownloader/VideoDownloadManager$f;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager$f;->f(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    new-instance v0, Larb;

    invoke-direct {v0, p0}, Larb;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager$f;)V

    invoke-static {v0}, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final e(ILcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->n(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->t(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->o(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->r(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->s(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->q(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->p(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->m(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    :goto_0
    return-void

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

.method public final synthetic f(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v0}, Lcom/transsion/videodownloader/VideoDownloadManager;->k(Lcom/transsion/videodownloader/VideoDownloadManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->u(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final synthetic g()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v0}, Lcom/transsion/videodownloader/VideoDownloadManager;->i(Lcom/transsion/videodownloader/VideoDownloadManager;)Lsqb;

    move-result-object v0

    invoke-virtual {v0}, Lsqb;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object v3, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v3}, Lcom/transsion/videodownloader/VideoDownloadManager;->f(Lcom/transsion/videodownloader/VideoDownloadManager;)Lrqb;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v3}, Lcom/transsion/videodownloader/VideoDownloadManager;->f(Lcom/transsion/videodownloader/VideoDownloadManager;)Lrqb;

    move-result-object v3

    invoke-virtual {v3}, Lrqb;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isHlsType()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    new-instance v4, Lbrb;

    invoke-direct {v4, p0}, Lbrb;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager$f;)V

    invoke-static {v3, v2, v4}, Lcom/transsion/videodownloader/VideoDownloadManager;->l(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljv4;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v3}, Lcom/transsion/videodownloader/VideoDownloadManager;->k(Lcom/transsion/videodownloader/VideoDownloadManager;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->g(Lcom/transsion/videodownloader/VideoDownloadManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwu4;

    invoke-interface {v1, v0}, Lwu4;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final synthetic h()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->i(Lcom/transsion/videodownloader/VideoDownloadManager;)Lsqb;

    move-result-object p0

    invoke-virtual {p0}, Lsqb;->a()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/videodownloader/VideoDownloadManager$f;->d()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    new-instance p1, Lzqb;

    invoke-direct {p1, p0}, Lzqb;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager$f;)V

    invoke-static {p1}, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager$f;->e(ILcom/transsion/videodownloader/model/VideoTaskItem;)V

    :goto_0
    return-void
.end method
