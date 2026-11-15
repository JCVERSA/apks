.class public final Lio/appmetrica/analytics/impl/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/UnderlyingNetworkTask;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/dm;

.field public b:Lio/appmetrica/analytics/impl/Fl;

.field public c:Lio/appmetrica/analytics/impl/ll;

.field public final d:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

.field public final e:Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;

.field public final f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

.field public final g:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

.field public final h:Lio/appmetrica/analytics/impl/tl;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/dm;Lio/appmetrica/analytics/impl/tl;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/bm;->a:Lio/appmetrica/analytics/impl/dm;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/bm;->h:Lio/appmetrica/analytics/impl/tl;

    .line 5
    iput-object p4, p0, Lio/appmetrica/analytics/impl/bm;->d:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    .line 6
    iput-object p5, p0, Lio/appmetrica/analytics/impl/bm;->f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    .line 7
    iput-object p6, p0, Lio/appmetrica/analytics/impl/bm;->e:Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;

    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/bm;->g:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    .line 9
    invoke-interface {p6}, Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;->getConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Dl;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Dl;->k()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;->setHosts(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/dm;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V
    .locals 7
    .param p1    # Lio/appmetrica/analytics/impl/dm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/dm;",
            "Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer<",
            "Lio/appmetrica/analytics/impl/Dl;",
            ">;",
            "Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;",
            "Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;",
            "Lio/appmetrica/analytics/networktasks/internal/ConfigProvider<",
            "Lio/appmetrica/analytics/impl/Dl;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v2, Lio/appmetrica/analytics/impl/tl;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/tl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/bm;-><init>(Lio/appmetrica/analytics/impl/dm;Lio/appmetrica/analytics/impl/tl;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V

    return-void
.end method


# virtual methods
.method public final description()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Startup task for component: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bm;->a:Lio/appmetrica/analytics/impl/dm;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->f:Lio/appmetrica/analytics/impl/M4;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/f5;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFullUrlFormer()Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bm;->g:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    return-object p0
.end method

.method public final getRequestDataHolder()Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bm;->d:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    return-object p0
.end method

.method public final getResponseDataHolder()Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bm;->f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    return-object p0
.end method

.method public final getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bm;->e:Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;->getConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Dl;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->y()Lio/appmetrica/analytics/impl/V2;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/cl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreateTask()Z
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/bm;->d:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    const-string v1, "encrypted"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;->setHeader(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bm;->a:Lio/appmetrica/analytics/impl/dm;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->g()Z

    move-result p0

    return p0
.end method

.method public final onPerformRequest()V
    .locals 0

    return-void
.end method

.method public final onPostRequestComplete(Z)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lio/appmetrica/analytics/impl/ll;->d:Lio/appmetrica/analytics/impl/ll;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/bm;->c:Lio/appmetrica/analytics/impl/ll;

    :cond_0
    return-void
.end method

.method public final onRequestComplete()Z
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/bm;->h:Lio/appmetrica/analytics/impl/tl;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/bm;->f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/tl;->a(Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;)Lio/appmetrica/analytics/impl/Fl;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/bm;->b:Lio/appmetrica/analytics/impl/Fl;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onRequestError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object p1, Lio/appmetrica/analytics/impl/ll;->c:Lio/appmetrica/analytics/impl/ll;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/bm;->c:Lio/appmetrica/analytics/impl/ll;

    return-void
.end method

.method public final onShouldNotExecute()V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/ll;->c:Lio/appmetrica/analytics/impl/ll;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/bm;->c:Lio/appmetrica/analytics/impl/ll;

    return-void
.end method

.method public final onSuccessfulTaskFinished()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/bm;->b:Lio/appmetrica/analytics/impl/Fl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/bm;->f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/bm;->a:Lio/appmetrica/analytics/impl/dm;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/bm;->b:Lio/appmetrica/analytics/impl/Fl;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/bm;->e:Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;

    invoke-interface {v2}, Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;->getConfig()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/Dl;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bm;->f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lio/appmetrica/analytics/impl/dm;->a(Lio/appmetrica/analytics/impl/Fl;Lio/appmetrica/analytics/impl/Dl;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final onTaskAdded()V
    .locals 0

    return-void
.end method

.method public final onTaskFinished()V
    .locals 0

    return-void
.end method

.method public final onTaskRemoved()V
    .locals 0

    return-void
.end method

.method public final onUnsuccessfulTaskFinished()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/bm;->c:Lio/appmetrica/analytics/impl/ll;

    if-nez v0, :cond_0

    sget-object v0, Lio/appmetrica/analytics/impl/ll;->b:Lio/appmetrica/analytics/impl/ll;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/bm;->c:Lio/appmetrica/analytics/impl/ll;

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bm;->a:Lio/appmetrica/analytics/impl/dm;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bm;->c:Lio/appmetrica/analytics/impl/ll;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/dm;->a(Lio/appmetrica/analytics/impl/ll;)V

    return-void
.end method
