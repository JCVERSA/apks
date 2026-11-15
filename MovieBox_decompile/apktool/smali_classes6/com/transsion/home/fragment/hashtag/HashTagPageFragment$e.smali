.class public final Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$e;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$e;->a:Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$e;->a:Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;->l0(Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
