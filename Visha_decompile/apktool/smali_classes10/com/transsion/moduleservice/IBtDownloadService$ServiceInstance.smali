.class public Lcom/transsion/moduleservice/IBtDownloadService$ServiceInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moduleservice/IBtDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceInstance"
.end annotation


# static fields
.field private static service:Lcom/transsion/moduleservice/IBtDownloadService;


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

.method public static getService()Lcom/transsion/moduleservice/IBtDownloadService;
    .locals 2

    sget-object v0, Lcom/transsion/moduleservice/IBtDownloadService$ServiceInstance;->service:Lcom/transsion/moduleservice/IBtDownloadService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-class v1, Lcom/transsion/moduleservice/IBtDownloadService;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moduleservice/IBtDownloadService;

    sput-object v0, Lcom/transsion/moduleservice/IBtDownloadService$ServiceInstance;->service:Lcom/transsion/moduleservice/IBtDownloadService;

    return-object v0
.end method
