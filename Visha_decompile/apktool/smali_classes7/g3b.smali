.class public final synthetic Lg3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

.field public final synthetic b:Landroid/os/IBinder;

.field public final synthetic c:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3b;->a:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    iput-object p2, p0, Lg3b;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lg3b;->c:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg3b;->a:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    iget-object v1, p0, Lg3b;->b:Landroid/os/IBinder;

    iget-object p0, p0, Lg3b;->c:Landroid/graphics/Region;

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->b(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Landroid/graphics/Region;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
