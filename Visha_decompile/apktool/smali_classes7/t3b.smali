.class public final synthetic Lt3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/location/TranThubLocationManager;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/location/TranThubLocationManager;ZLandroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3b;->a:Lcom/transsion/hubsdk/core/location/TranThubLocationManager;

    iput-boolean p2, p0, Lt3b;->b:Z

    iput-object p3, p0, Lt3b;->c:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lt3b;->a:Lcom/transsion/hubsdk/core/location/TranThubLocationManager;

    iget-boolean v1, p0, Lt3b;->b:Z

    iget-object p0, p0, Lt3b;->c:Landroid/os/UserHandle;

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/location/TranThubLocationManager;->a(Lcom/transsion/hubsdk/core/location/TranThubLocationManager;ZLandroid/os/UserHandle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
