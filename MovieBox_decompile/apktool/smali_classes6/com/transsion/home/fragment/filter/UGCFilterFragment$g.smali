.class public final Lcom/transsion/home/fragment/filter/UGCFilterFragment$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyg/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/filter/UGCFilterFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$g;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

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
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$g;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$g;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->N0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$g;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->H0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lcom/transsion/home/adapter/filter/a;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 5
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/UGCFilterVideoItem;

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/transsion/home/bean/UGCFilterVideoItem;->getChannelId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, p2

    :goto_1
    iget-object v1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$g;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {v1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->I0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$g;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {v1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->M0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/home/bean/UGCFilterVideoItem;->getSelectItems()Ljava/util/Map;

    move-result-object p2

    :cond_5
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 9
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$g;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->H0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lcom/transsion/home/adapter/filter/a;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lt6/f;->w()V

    goto :goto_4

    .line 10
    :cond_7
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$g;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->T0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Z)V

    goto :goto_4

    .line 11
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$g;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->S0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 1
    return-void
.end method
