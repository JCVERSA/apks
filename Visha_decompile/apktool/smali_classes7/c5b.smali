.class public final synthetic Lc5b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

.field public final synthetic b:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5b;->a:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

    iput-object p2, p0, Lc5b;->b:Landroid/view/WindowManager$LayoutParams;

    iput p3, p0, Lc5b;->c:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc5b;->a:Lcom/transsion/hubsdk/core/view/TranThubWindowManager;

    iget-object v1, p0, Lc5b;->b:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lc5b;->c:I

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->c(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
