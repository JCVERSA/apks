.class public final Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tupdate/config/AbsConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u000bR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;",
        "Ljava/lang/Runnable;",
        "Lcom/cloud/tupdate/config/AbsConfigStore;",
        "store",
        "Lre1;",
        "configResultListener",
        "<init>",
        "(Lcom/cloud/tupdate/config/AbsConfigStore;Lre1;)V",
        "Lzfb;",
        "run",
        "()V",
        "Lcom/cloud/tupdate/config/AbsConfigStore;",
        "Lre1;",
        "getConfigResultListener",
        "()Lre1;",
        "tupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final configResultListener:Lre1;

.field private final store:Lcom/cloud/tupdate/config/AbsConfigStore;


# direct methods
.method public constructor <init>(Lcom/cloud/tupdate/config/AbsConfigStore;Lre1;)V
    .locals 1

    const-string/jumbo v0, "store"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->store:Lcom/cloud/tupdate/config/AbsConfigStore;

    .line 3
    iput-object p2, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->configResultListener:Lre1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tupdate/config/AbsConfigStore;Lre1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;-><init>(Lcom/cloud/tupdate/config/AbsConfigStore;Lre1;)V

    return-void
.end method

.method public static final synthetic access$getStore$p(Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;)Lcom/cloud/tupdate/config/AbsConfigStore;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->store:Lcom/cloud/tupdate/config/AbsConfigStore;

    return-object p0
.end method


# virtual methods
.method public final getConfigResultListener()Lre1;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->configResultListener:Lre1;

    return-object p0
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lxca;->a:Lxca;

    invoke-virtual {v1}, Lxca;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http://140.206.67.86:8082/common/cloudconfig/v1/consumer-not-login/configkeyvalue/query/get"

    :goto_0
    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_5

    :cond_0
    const-string v1, "https://cloud-config-api.shalltry.com/common/cloudconfig/v1/consumer-not-login/configkeyvalue/query/get"

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->store:Lcom/cloud/tupdate/config/AbsConfigStore;

    invoke-virtual {v1}, Lcom/cloud/tupdate/config/AbsConfigStore;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->store:Lcom/cloud/tupdate/config/AbsConfigStore;

    invoke-virtual {v1}, Lcom/cloud/tupdate/config/AbsConfigStore;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->store:Lcom/cloud/tupdate/config/AbsConfigStore;

    invoke-static {v1}, Lcom/cloud/tupdate/config/AbsConfigStore;->a(Lcom/cloud/tupdate/config/AbsConfigStore;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v2, "key"

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/a;->q([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v1

    const-string/jumbo v2, "update"

    const-string v4, "-------- map = "

    invoke-static {v4, v6}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tupdate/net/network/HttpRequestor;->k:Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;

    invoke-virtual {v1}, Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;->a()Lcom/cloud/tupdate/net/network/HttpRequestor;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    new-instance v7, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable$run$1;

    invoke-direct {v7, p0}, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable$run$1;-><init>(Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/cloud/tupdate/net/network/HttpRequestor;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/transsion/http/impl/StringCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    iget-object p0, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->store:Lcom/cloud/tupdate/config/AbsConfigStore;

    invoke-static {p0}, Lcom/cloud/tupdate/config/AbsConfigStore;->b(Lcom/cloud/tupdate/config/AbsConfigStore;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    :goto_5
    :try_start_1
    const-string v2, "loadForService --> "

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lia1;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :goto_6
    return-void

    :catchall_1
    move-exception v1

    iget-object p0, p0, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;->store:Lcom/cloud/tupdate/config/AbsConfigStore;

    invoke-static {p0}, Lcom/cloud/tupdate/config/AbsConfigStore;->b(Lcom/cloud/tupdate/config/AbsConfigStore;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
