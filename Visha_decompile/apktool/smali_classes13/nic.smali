.class public Lnic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static g:I = -0x1

.field public static h:I = -0x1

.field public static volatile i:Lnic;


# instance fields
.field public volatile a:Ljava/util/List;

.field public volatile b:I

.field public c:Ljic;

.field public d:Landroid/graphics/Bitmap;

.field public e:Landroidx/lifecycle/MutableLiveData;

.field public f:Lcom/transsion/sniffer_load/liveData/WebViewLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lnic;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/transsion/sniffer_load/liveData/WebViewLiveData;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/liveData/WebViewLiveData;-><init>()V

    iput-object v0, p0, Lnic;->f:Lcom/transsion/sniffer_load/liveData/WebViewLiveData;

    return-void
.end method

.method public static F(I)V
    .locals 0

    sput p0, Lnic;->h:I

    return-void
.end method

.method public static synthetic a(Ljic;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnic;->s(Ljic;J)V

    return-void
.end method

.method public static synthetic b(Ljic;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnic;->t(Ljic;J)V

    return-void
.end method

.method public static q(Landroid/content/Context;)Lnic;
    .locals 2

    sget-object v0, Lnic;->i:Lnic;

    if-nez v0, :cond_1

    const-class v0, Lnic;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnic;->i:Lnic;

    if-nez v1, :cond_0

    new-instance v1, Lnic;

    invoke-direct {v1}, Lnic;-><init>()V

    sput-object v1, Lnic;->i:Lnic;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object v0, Lnic;->i:Lnic;

    iget-object v0, v0, Lnic;->c:Ljic;

    if-nez v0, :cond_2

    sget-object v0, Lnic;->i:Lnic;

    invoke-virtual {v0, p0}, Lnic;->r(Landroid/content/Context;)V

    :cond_2
    sget-object p0, Lnic;->i:Lnic;

    return-object p0
.end method

.method public static synthetic s(Ljic;J)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ljic;->deleteItem(J)V

    :cond_0
    return-void
.end method

.method public static synthetic t(Ljic;J)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ljic;->deleteItem(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(II)V
    .locals 5

    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_2

    add-int/lit8 v0, p1, 0x1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    :goto_1
    iget-object v1, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_6

    if-eq p2, p1, :cond_5

    if-ne p2, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    :try_start_0
    invoke-virtual {v1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v2

    invoke-virtual {v2}, Lz9;->y()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "Sniff"

    const-string v4, "releaseInactiveWebViews"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebview(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    return-void
.end method

.method public B(I)Z
    .locals 5

    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_7

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    iget-object v2, p0, Lnic;->c:Ljic;

    iget-wide v3, v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->id:J

    invoke-interface {v2, v3, v4}, Ljic;->deleteItem(J)V

    iget v2, p0, Lnic;->b:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_4

    iget p1, p0, Lnic;->b:I

    sub-int/2addr p1, v3

    iput p1, p0, Lnic;->b:I

    iget p1, p0, Lnic;->b:I

    if-gez p1, :cond_1

    iput v1, p0, Lnic;->b:I

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lz9;->y()V

    :cond_2
    iget-object p1, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    invoke-direct {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;-><init>()V

    const-string v0, "https://www.google.com"

    invoke-virtual {p1, v0}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebUrl(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebview(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lnic;->y()V

    return v3

    :cond_4
    invoke-virtual {v0}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lz9;->y()V

    :cond_5
    iget v0, p0, Lnic;->b:I

    if-le v0, p1, :cond_6

    iget p1, p0, Lnic;->b:I

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_6
    iget p1, p0, Lnic;->b:I

    :goto_0
    iput p1, p0, Lnic;->b:I

    invoke-virtual {p0}, Lnic;->y()V

    :cond_7
    :goto_1
    return v1
.end method

.method public C(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p0, Lnic;->b:I

    invoke-virtual {p0, p2}, Lnic;->n(I)Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object p3

    invoke-virtual {p3}, Lz9;->y()V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebview(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebview(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    iget-object p1, p0, Lnic;->f:Lcom/transsion/sniffer_load/liveData/WebViewLiveData;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget p1, p0, Lnic;->b:I

    invoke-virtual {p0, p1}, Lnic;->z(I)V

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p0, p2, p1}, Lnic;->e(Ljava/lang/String;Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    iget-object p1, p0, Lnic;->f:Lcom/transsion/sniffer_load/liveData/WebViewLiveData;

    invoke-virtual {p0}, Lnic;->k()Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    const-string p1, "Sniff"

    const-string p2, "setCurrentWebview: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public D(I)V
    .locals 0

    iput p1, p0, Lnic;->b:I

    invoke-virtual {p0}, Lnic;->y()V

    invoke-virtual {p0, p1}, Lnic;->z(I)V

    return-void
.end method

.method public E(I)V
    .locals 0

    sput p1, Lnic;->g:I

    return-void
.end method

.method public G()V
    .locals 1

    iget-object v0, p0, Lnic;->c:Ljic;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljic;->update(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V
    .locals 2

    iget-object v0, p0, Lnic;->c:Ljic;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    sget p0, Lcom/transsion/sniffer_load/R$string;->window_up_to_limit:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebview(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    iget-object p1, p0, Lnic;->a:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lnic;->c:Ljic;

    invoke-interface {p1, v0}, Ljic;->addWebPreviewRecord(Lcom/transsion/sniffer_load/data/WebPreviewRecord;)J

    iget p1, p0, Lnic;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnic;->b:I

    iput p1, p0, Lnic;->b:I

    invoke-virtual {p0}, Lnic;->w()V

    iget p1, p0, Lnic;->b:I

    invoke-virtual {p0, p1}, Lnic;->z(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V
    .locals 2

    iget-object v0, p0, Lnic;->c:Ljic;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    sget p0, Lcom/transsion/sniffer_load/R$string;->window_up_to_limit:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebview(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    iget-object p1, p0, Lnic;->a:Ljava/util/List;

    iget-object p2, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lnic;->c:Ljic;

    invoke-interface {p1, v0}, Ljic;->addWebPreviewRecord(Lcom/transsion/sniffer_load/data/WebPreviewRecord;)J

    iget-object p1, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lnic;->b:I

    invoke-virtual {p0}, Lnic;->v()V

    invoke-virtual {p0}, Lnic;->w()V

    iget p1, p0, Lnic;->b:I

    invoke-virtual {p0, p1}, Lnic;->z(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V
    .locals 3

    iget-object v0, p0, Lnic;->c:Ljic;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebview(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    const/4 p1, 0x0

    iput p1, p0, Lnic;->b:I

    iget-object p2, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v1, 0x9

    if-lt p2, v1, :cond_2

    iget-object p2, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object p2

    invoke-virtual {p2}, Lz9;->y()V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebview(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    :cond_1
    iget-wide p1, p1, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->id:J

    iget-object v1, p0, Lnic;->c:Ljic;

    new-instance v2, Lmic;

    invoke-direct {v2, v1, p1, p2}, Lmic;-><init>(Ljic;J)V

    invoke-static {v2}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lnic;->a:Ljava/util/List;

    iget p2, p0, Lnic;->b:I

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lnic;->c:Ljic;

    invoke-interface {p1, v0}, Ljic;->addWebPreviewRecord(Lcom/transsion/sniffer_load/data/WebPreviewRecord;)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->id:J

    invoke-virtual {p0}, Lnic;->y()V

    iget p1, p0, Lnic;->b:I

    invoke-virtual {p0, p1}, Lnic;->z(I)V

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    invoke-virtual {v1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v1

    invoke-virtual {v1}, Lz9;->y()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lnic;->c:Ljic;

    invoke-interface {p0}, Ljic;->deleteAll()V

    return-void
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lnic;->b:I

    invoke-virtual {p0, v0}, Lnic;->n(I)Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lnic;->u()Landroid/graphics/Bitmap;

    move-result-object v1

    sget v2, Lnic;->g:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    sget v3, Lnic;->h:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {p1, v1, v2}, Lvk1;->e(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    invoke-static {v1}, Ljf0;->fromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->previewBitmap:[B

    iget-object p0, p0, Lnic;->c:Ljic;

    invoke-interface {p0, v0}, Ljic;->update(Lcom/transsion/sniffer_load/data/WebPreviewRecord;)V

    return-void
.end method

.method public h(Landroid/graphics/Bitmap;)V
    .locals 2

    iget v0, p0, Lnic;->b:I

    iget-object v1, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lnic;->b:I

    invoke-virtual {p0, v0}, Lnic;->n(I)Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljf0;->fromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setIcon([B)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lnic;->b:I

    iget-object v1, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lnic;->b:I

    invoke-virtual {p0, v0}, Lnic;->n(I)Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnic;->b:I

    invoke-virtual {p0, v0}, Lnic;->n(I)Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebUrl(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public k()Lcom/transsion/sniffer_load/data/WebPreviewRecord;
    .locals 1

    iget v0, p0, Lnic;->b:I

    invoke-virtual {p0, v0}, Lnic;->n(I)Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    move-result-object p0

    return-object p0
.end method

.method public l()Lcom/transsion/sniffer_load/liveData/WebViewLiveData;
    .locals 0

    iget-object p0, p0, Lnic;->f:Lcom/transsion/sniffer_load/liveData/WebViewLiveData;

    return-object p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, Lnic;->b:I

    return p0
.end method

.method public declared-synchronized n(I)Lcom/transsion/sniffer_load/data/WebPreviewRecord;
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/data/WebPreviewRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "WebPreviewViewModel"

    const-string v0, "getWebPreviewByIndex NULL"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnic;->a:Ljava/util/List;

    return-object p0
.end method

.method public p()I
    .locals 0

    iget-object p0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final r(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->e()Ljic;

    move-result-object v0

    iput-object v0, p0, Lnic;->c:Ljic;

    invoke-interface {v0}, Ljic;->getAllByDESC()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnic;->a:Ljava/util/List;

    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    const/16 v1, 0x9

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnic;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    :cond_1
    :goto_0
    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lnic;->c:Ljic;

    iget-wide v3, v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->id:J

    new-instance v0, Llic;

    invoke-direct {v0, v2, v3, v4}, Llic;-><init>(Ljic;J)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string v0, "multi_web_selected"

    invoke-static {p1, v0, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lnic;->b:I

    return-void
.end method

.method public u()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lnic;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnic;->d:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object p0, p0, Lnic;->d:Landroid/graphics/Bitmap;

    return-object p0

    :cond_1
    :goto_0
    sget v0, Lnic;->g:I

    if-gtz v0, :cond_2

    const/16 v0, 0x12c

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnic;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lnic;->f:Lcom/transsion/sniffer_load/liveData/WebViewLiveData;

    invoke-virtual {p0}, Lnic;->k()Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lnic;->e:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public x(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    iget-object v0, p0, Lnic;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lnic;->f:Lcom/transsion/sniffer_load/liveData/WebViewLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    move-result-object v2

    invoke-virtual {v2}, Lz9;->y()V

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->setWebview(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnic;->d:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lnic;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iput-object v1, p0, Lnic;->d:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lnic;->c:Ljic;

    iget-object p0, p0, Lnic;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sput-object v1, Lnic;->i:Lnic;

    return-void
.end method

.method public y()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "multi_web_selected"

    iget p0, p0, Lnic;->b:I

    invoke-static {v0, v1, p0}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public z(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lnic;->A(II)V

    return-void
.end method
