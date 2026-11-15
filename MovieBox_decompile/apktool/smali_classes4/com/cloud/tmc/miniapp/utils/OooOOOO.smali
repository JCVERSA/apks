.class public final Lcom/cloud/tmc/miniapp/utils/OooOOOO;
.super Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO00o;
.source "source.java"


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

.field public final synthetic OooO0OO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO0O0:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO00o;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "$loadCheckCallback"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$path"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->hideLoading()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;->onLoadSuccess(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public onPackageLoadFailed(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO00o:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->hideLoading()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onPackageLoadSuccess()V
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO00o:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO0O0:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO0OO:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Lcom/cloud/tmc/miniapp/utils/q;

    .line 17
    .line 18
    invoke-direct {v2, v0, v1}, Lcom/cloud/tmc/miniapp/utils/q;-><init>(Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
