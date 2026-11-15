.class public final Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/search/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Ljava/util/List;Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;->c(Ljava/util/List;Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Ljava/util/List;Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 1

    .line 1
    check-cast p0, Ljava/util/Collection;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->access$setMHistoryList$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->access$getMSearchKeywordAdapter$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/search/fragment/group/adapter/b;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lvp/d;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lvp/d;->g:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    const/16 p1, 0x8

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    .line 15
    .line 16
    new-instance v2, Lcom/transsion/search/fragment/group/s;

    .line 17
    .line 18
    invoke-direct {v2, p1, v1}, Lcom/transsion/search/fragment/group/s;-><init>(Ljava/util/List;Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
