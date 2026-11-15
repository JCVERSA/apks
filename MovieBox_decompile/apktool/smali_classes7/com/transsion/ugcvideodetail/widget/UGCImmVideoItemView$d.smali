.class public final Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Llu/h$a;


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

.field final synthetic b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->a:Liu/r;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Liu/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->a:Liu/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getFragment$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->hideLoading()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public e()Llu/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getSubtitleDelegate(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Llu/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Lcom/transsion/ugcvideodetail/hepler/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getDotLayer$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/hepler/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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

.method public showLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getFragment$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->startLoading()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
