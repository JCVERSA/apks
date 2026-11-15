.class public final synthetic Ll3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

.field public final synthetic b:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3b;->a:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    iput-object p2, p0, Ll3b;->b:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll3b;->a:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    iget-object p0, p0, Ll3b;->b:Landroid/view/KeyEvent;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->c(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/view/KeyEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
