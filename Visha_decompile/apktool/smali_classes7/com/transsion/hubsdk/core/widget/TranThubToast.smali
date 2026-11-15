.class public Lcom/transsion/hubsdk/core/widget/TranThubToast;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/widget/ITranToastAdapter;


# instance fields
.field private mTranToast:Lcom/transsion/hubsdk/widget/TranToast;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/widget/TranToast;

    invoke-direct {v0}, Lcom/transsion/hubsdk/widget/TranToast;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/widget/TranThubToast;->mTranToast:Lcom/transsion/hubsdk/widget/TranToast;

    return-void
.end method


# virtual methods
.method public getWindowParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/widget/TranThubToast;->mTranToast:Lcom/transsion/hubsdk/widget/TranToast;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/widget/TranToast;->getWindowParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
