.class public final synthetic Lb5b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

.field public final synthetic b:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5b;->a:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

    iput-object p2, p0, Lb5b;->b:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb5b;->a:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

    iget-object p0, p0, Lb5b;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->a(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
