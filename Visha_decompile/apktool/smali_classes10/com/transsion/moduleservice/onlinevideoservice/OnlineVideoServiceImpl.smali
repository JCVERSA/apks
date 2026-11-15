.class public Lcom/transsion/moduleservice/onlinevideoservice/OnlineVideoServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/moduleservice/IOnlineVideoService;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/onlinevideo/onlinevideoservice"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/transsion/palmsdk/b;->r(Landroid/content/Context;)V

    return-void
.end method

.method public initPlayer(Landroid/app/Application;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {}, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->getInstance()Lcom/transsion/vishaplayersdk/VishaPlayerSDK;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->init(Landroid/app/Application;Ljava/lang/String;Z)V

    return-void
.end method

.method public setAPIServiceDebugMode(Z)V
    .locals 0

    sput-boolean p1, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->bTestMode:Z

    return-void
.end method
