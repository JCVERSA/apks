.class public Lcom/transsion/onlinevideo/OnlineBaseActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    aget-object p1, p2, v0

    check-cast p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->userLogout()V

    goto :goto_0

    :pswitch_2
    aget-object p1, p2, v0

    check-cast p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x407
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initBackground()V
    .locals 0

    return-void
.end method

.method public loadSkin(Z)I
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->initBackground()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->registerPalmIdListeners()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->unRegisterPalmIdListeners()V

    return-void
.end method

.method public onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 0

    return-void
.end method

.method public onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 0

    return-void
.end method

.method public registerPalmIdListeners()V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x407

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x408

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x409

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x413

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public unRegisterPalmIdListeners()V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x407

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x408

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x409

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x413

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public userLogout()V
    .locals 0

    return-void
.end method
