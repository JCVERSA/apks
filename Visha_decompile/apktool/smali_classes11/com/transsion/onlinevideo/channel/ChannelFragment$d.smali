.class public Lcom/transsion/onlinevideo/channel/ChannelFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/channel/ChannelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/channel/ChannelFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/channel/ChannelFragment$d;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b()V

    return-void
.end method


# virtual methods
.method public final synthetic b()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iget-boolean v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->A0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {v1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->s0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-static {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->q0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V

    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    move-result-object v0

    new-instance v1, Lyt0;

    invoke-direct {v1, p0}, Lyt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment$d;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
