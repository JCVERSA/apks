.class public final Lcom/transsion/sysbar/SupportRequestBarManagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public l:Lcom/transsion/sysbar/ImmersionDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/sysbar/SupportRequestBarManagerFragment;->l:Lcom/transsion/sysbar/ImmersionDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/sysbar/ImmersionDelegate;->onActivityCreated(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/transsion/sysbar/SupportRequestBarManagerFragment;->l:Lcom/transsion/sysbar/ImmersionDelegate;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/sysbar/ImmersionDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/sysbar/SupportRequestBarManagerFragment;->l:Lcom/transsion/sysbar/ImmersionDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/sysbar/ImmersionDelegate;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/sysbar/SupportRequestBarManagerFragment;->l:Lcom/transsion/sysbar/ImmersionDelegate;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object p0, p0, Lcom/transsion/sysbar/SupportRequestBarManagerFragment;->l:Lcom/transsion/sysbar/ImmersionDelegate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/sysbar/ImmersionDelegate;->onResume()V

    :cond_0
    return-void
.end method

.method public u(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/transsion/sysbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sysbar/SupportRequestBarManagerFragment;->l:Lcom/transsion/sysbar/ImmersionDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/sysbar/ImmersionDelegate;

    invoke-direct {v0, p1, p2}, Lcom/transsion/sysbar/ImmersionDelegate;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/transsion/sysbar/SupportRequestBarManagerFragment;->l:Lcom/transsion/sysbar/ImmersionDelegate;

    :cond_0
    iget-object p0, p0, Lcom/transsion/sysbar/SupportRequestBarManagerFragment;->l:Lcom/transsion/sysbar/ImmersionDelegate;

    invoke-virtual {p0}, Lcom/transsion/sysbar/ImmersionDelegate;->get()Lcom/transsion/sysbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public v(Ljava/lang/Object;)Lcom/transsion/sysbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sysbar/SupportRequestBarManagerFragment;->l:Lcom/transsion/sysbar/ImmersionDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/sysbar/ImmersionDelegate;

    invoke-direct {v0, p1}, Lcom/transsion/sysbar/ImmersionDelegate;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/sysbar/SupportRequestBarManagerFragment;->l:Lcom/transsion/sysbar/ImmersionDelegate;

    :cond_0
    iget-object p0, p0, Lcom/transsion/sysbar/SupportRequestBarManagerFragment;->l:Lcom/transsion/sysbar/ImmersionDelegate;

    invoke-virtual {p0}, Lcom/transsion/sysbar/ImmersionDelegate;->get()Lcom/transsion/sysbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method
