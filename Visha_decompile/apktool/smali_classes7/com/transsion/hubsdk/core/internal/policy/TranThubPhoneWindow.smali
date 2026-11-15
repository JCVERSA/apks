.class public Lcom/transsion/hubsdk/core/internal/policy/TranThubPhoneWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/policy/ITranPhoneWindowAdapter;


# instance fields
.field private mTranPhoneWindow:Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/policy/TranThubPhoneWindow;->mTranPhoneWindow:Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;

    return-void
.end method


# virtual methods
.method public getDecorView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/policy/TranThubPhoneWindow;->mTranPhoneWindow:Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public requestFeature(I)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/policy/TranThubPhoneWindow;->mTranPhoneWindow:Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;->requestFeature(I)Z

    move-result p0

    return p0
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/policy/TranThubPhoneWindow;->mTranPhoneWindow:Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/policy/TranThubPhoneWindow;->mTranPhoneWindow:Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/policy/TranPhoneWindow;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
