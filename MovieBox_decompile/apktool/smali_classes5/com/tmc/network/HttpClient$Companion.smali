.class public final Lcom/tmc/network/HttpClient$Companion;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmc/network/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u0010\u001a\u00020\u0004J\u0016\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0004J\u0010\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/tmc/network/HttpClient$Companion;",
        "",
        "()V",
        "ifForceUseCache",
        "",
        "ifInitAnalytics",
        "ifTestMode",
        "ifUseCache",
        "initInterceptors",
        "",
        "Lokhttp3/Interceptor;",
        "progressListener",
        "Lcom/tmc/network/ProgressListener;",
        "addInterceptor",
        "",
        "interceptor",
        "isForceUseCacheMode",
        "setCacheMode",
        "ifUse",
        "ifForce",
        "setIfInitAnalytics",
        "ifInit",
        "setIfTestMode",
        "setProgressListener",
        "listener",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tmc/network/HttpClient$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addInterceptor(Lokhttp3/Interceptor;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/tmc/network/HttpClient;->access$getInitInterceptors$cp()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/tmc/network/HttpClient;->access$setInitInterceptors$cp(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-static {}, Lcom/tmc/network/HttpClient;->access$getInitInterceptors$cp()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final isForceUseCacheMode()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tmc/network/HttpClient;->access$getIfUseCache$cp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/tmc/network/HttpClient;->access$getIfForceUseCache$cp()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final setCacheMode(ZZ)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/tmc/network/HttpClient;->access$setIfUseCache$cp(Z)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/tmc/network/HttpClient;->access$setIfForceUseCache$cp(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setIfInitAnalytics(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/tmc/network/HttpClient;->access$setIfInitAnalytics$cp(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setIfTestMode(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/tmc/network/HttpClient;->access$setIfTestMode$cp(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setProgressListener(Lcom/tmc/network/ProgressListener;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/tmc/network/HttpClient;->access$setProgressListener$cp(Lcom/tmc/network/ProgressListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
