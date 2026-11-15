.class public Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;


# instance fields
.field private final mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    return-void
.end method


# virtual methods
.method public finishCurrentAnimation()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;->finishCurrentAnimation()Z

    move-result p0

    return p0
.end method

.method public isSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;->isSupported()Z

    move-result p0

    return p0
.end method

.method public newAnimationCallback()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;->newAnimationCallback()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setAppRemoteView(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;->setAppRemoteView(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public skipBackAnim(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;->skipBackAnim(Landroid/app/Activity;)V

    return-void
.end method

.method public startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;->startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;->startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;->startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;->startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/view/View;)V

    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;->mTranAppRemoteImpl:Lcom/transsion/hubsdk/app/TranAppRemoteImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/TranAppRemoteImpl;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/view/View;)V

    return-void
.end method
