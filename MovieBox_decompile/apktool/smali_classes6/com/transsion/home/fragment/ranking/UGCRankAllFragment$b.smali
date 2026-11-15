.class public final Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyg/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyg/m$a;->a(Lyg/m;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 6

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;->h0(Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Luf/c;->i(Landroid/view/View;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "UGCRankAllFragment"

    const-string v2, "noNetWorkListener: network connected, hide error and reload"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    move-result-object p1

    check-cast p1, Lqk/y;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lqk/y;->e:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;->i0(Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    move-result-object p1

    check-cast p1, Lqk/y;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lqk/y;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment$b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    invoke-virtual {p1}, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;->lazyLoadData()V

    :cond_3
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 1
    return-void
.end method
