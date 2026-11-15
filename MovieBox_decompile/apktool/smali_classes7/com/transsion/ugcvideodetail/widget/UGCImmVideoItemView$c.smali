.class public final Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Llu/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Liu/r;

.field private final b:I

.field final synthetic c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Liu/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->a:Liu/r;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getScreenWidth$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->b:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()Liu/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->a:Liu/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getDetailViewModel$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Lcom/tn/lib/pager/PagerLayoutManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/tn/lib/pager/PagerLayoutManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$showSettingDialog(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$setControlVisible(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$updateProgress(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$playVideo(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getData$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getTAG$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOrPlayer()Lcom/transsion/player/orplayer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getOrPlayer$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/player/orplayer/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$setClickPause$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getFragment$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->b1(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$isLoading$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
