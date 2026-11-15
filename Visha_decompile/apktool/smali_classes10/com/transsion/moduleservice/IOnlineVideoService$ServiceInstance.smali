.class public Lcom/transsion/moduleservice/IOnlineVideoService$ServiceInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moduleservice/IOnlineVideoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceInstance"
.end annotation


# static fields
.field public static volatile service:Lcom/transsion/moduleservice/IOnlineVideoService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Lcom/transsion/moduleservice/IOnlineVideoService;
    .locals 3

    sget-object v0, Lcom/transsion/moduleservice/IOnlineVideoService$ServiceInstance;->service:Lcom/transsion/moduleservice/IOnlineVideoService;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/moduleservice/IOnlineVideoService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/moduleservice/IOnlineVideoService$ServiceInstance;->service:Lcom/transsion/moduleservice/IOnlineVideoService;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v1

    const-class v2, Lcom/transsion/moduleservice/IOnlineVideoService;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moduleservice/IOnlineVideoService;

    sput-object v1, Lcom/transsion/moduleservice/IOnlineVideoService$ServiceInstance;->service:Lcom/transsion/moduleservice/IOnlineVideoService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/moduleservice/IOnlineVideoService$ServiceInstance;->service:Lcom/transsion/moduleservice/IOnlineVideoService;

    return-object v0
.end method
