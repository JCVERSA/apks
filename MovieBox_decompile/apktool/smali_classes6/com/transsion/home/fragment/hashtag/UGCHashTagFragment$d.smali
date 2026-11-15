.class public final Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->g(I)Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g(I)Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;->o:Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/transsion/home/hashtag/model/HashTagTab;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/home/hashtag/model/HashTagTab;->getId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->b0(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->d0(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :cond_0
    const-string v2, ""

    .line 36
    .line 37
    :cond_1
    iget-object v3, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->e0(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->b:Ljava/util/List;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 50
    .line 51
    new-instance v2, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;

    .line 52
    .line 53
    invoke-direct {v2, v0, v1}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;-><init>(Ljava/util/List;Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;->F0(Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$b;)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
