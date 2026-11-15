.class public final Lcom/transsion/cloudcore/cloudapi/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/cloudcore/cloudapi/impl/a;

.field public static b:Lrz0;

.field public static c:Lvz0;

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/impl/a;

    invoke-direct {v0}, Lcom/transsion/cloudcore/cloudapi/impl/a;-><init>()V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/impl/a;->a:Lcom/transsion/cloudcore/cloudapi/impl/a;

    const-string v0, ""

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/impl/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLjava/lang/Integer;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/a;->g(ZLjava/lang/Integer;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ZLjava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/a;->h(ZLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloudcore/cloudapi/impl/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static final f(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->g:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$a;

    invoke-virtual {v0, p0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$a;->a(Landroid/content/Context;)Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    move-result-object p0

    new-instance v0, Ltz0;

    invoke-direct {v0}, Ltz0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->n(Ls74;)V

    return-void
.end method

.method public static final g(ZLjava/lang/Integer;)Lzfb;
    .locals 1

    new-instance v0, Luz0;

    invoke-direct {v0, p0, p1}, Luz0;-><init>(ZLjava/lang/Integer;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final h(ZLjava/lang/Integer;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x4e77

    if-ne p0, p1, :cond_2

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final d()Lrz0;
    .locals 1

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/impl/a;->b:Lrz0;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CloudDriveClient not initialized, please call init() first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lsz0;

    invoke-direct {v0, p1}, Lsz0;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/impl/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized j(Landroid/content/Context;Lvz0;)Lrz0;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lcom/transsion/cloudcore/cloudapi/impl/a;->c:Lvz0;

    const-string v0, "visha_cloud_CloudDriveClientHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/impl/a;->b:Lrz0;

    if-nez v0, :cond_2

    new-instance v0, Loz0;

    invoke-direct {v0, p1}, Loz0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lvz0;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "visha"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Loz0;->S(Ljava/lang/String;)Loz0;

    move-result-object v0

    invoke-virtual {p2}, Lvz0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Loz0;->R(Ljava/lang/String;)Loz0;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloudcore/cloudapi/impl/a$a;

    invoke-direct {v1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/a$a;-><init>(Lvz0;)V

    invoke-virtual {v0, v1}, Loz0;->Q(Ljpa;)Loz0;

    move-result-object v0

    invoke-virtual {p2}, Lvz0;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Loz0;->b0(Z)Loz0;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Loz0;->W(I)Loz0;

    move-result-object v0

    const-string v1, "visha_cloud_drive_sdk"

    invoke-virtual {v0, v1}, Loz0;->X(Ljava/lang/String;)Loz0;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloudcore/cloudapi/impl/a$b;

    invoke-direct {v1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/a$b;-><init>(Lvz0;)V

    invoke-virtual {v0, v1}, Loz0;->d0(Lyfb;)Loz0;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloudcore/cloudapi/impl/a$c;

    invoke-direct {v1}, Lcom/transsion/cloudcore/cloudapi/impl/a$c;-><init>()V

    invoke-virtual {v0, v1}, Loz0;->V(Lyj4;)Loz0;

    move-result-object v0

    invoke-virtual {p2}, Lvz0;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loz0;->c0(Z)Loz0;

    :cond_1
    invoke-virtual {p2}, Lvz0;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Loz0;->Y(Z)Loz0;

    invoke-virtual {p2}, Lvz0;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Loz0;->a0(I)Loz0;

    invoke-virtual {p2}, Lvz0;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Loz0;->U(Z)Loz0;

    invoke-virtual {p2}, Lvz0;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Loz0;->e0(I)Loz0;

    invoke-virtual {p2}, Lvz0;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Loz0;->Z(I)Loz0;

    invoke-virtual {p2}, Lvz0;->c()I

    move-result p2

    invoke-virtual {v0, p2}, Loz0;->T(I)Loz0;

    invoke-virtual {v0}, Loz0;->a()Lrz0;

    move-result-object p2

    sput-object p2, Lcom/transsion/cloudcore/cloudapi/impl/a;->b:Lrz0;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/a;->e(Landroid/content/Context;)V

    :cond_2
    sget-object p1, Lcom/transsion/cloudcore/cloudapi/impl/a;->b:Lrz0;

    const-string p2, "null cannot be cast to non-null type com.transsion.clouddrive.sdk.api.CloudDriveClient"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/cloudcore/cloudapi/impl/a;->d:Ljava/lang/String;

    return-void
.end method
