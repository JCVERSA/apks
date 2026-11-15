.class public Lcom/transsion/onlinevideo/channel/ChannelFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/channel/ChannelFragment;->I0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/channel/ChannelFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$b;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 6

    invoke-super {p0, p1}, Lvz6;->onConnect(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$b;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iget-boolean v0, p1, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$b;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$b;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v1

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$b;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->q0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$b;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->t0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->x0(Lcom/transsion/onlinevideo/channel/ChannelFragment;I)I

    move-result v3

    const/16 v4, 0x14

    const-string v5, "other"

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method public onWifi()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$b;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iget-boolean v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$b;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x44a

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
