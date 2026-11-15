.class public Lcom/transsion/onlinevideo/channel/ChannelFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/channel/ChannelFragment;->K0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/onlinevideo/channel/ChannelFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$c;->c:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$c;->c:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$c;->c:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iget-boolean p1, p1, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$c;->c:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$c;->c:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iget-boolean p1, p1, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$c;->c:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$c;->c:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {p1, p3}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->w0(Lcom/transsion/onlinevideo/channel/ChannelFragment;I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$c;->c:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r1()V

    :cond_0
    return-void
.end method
