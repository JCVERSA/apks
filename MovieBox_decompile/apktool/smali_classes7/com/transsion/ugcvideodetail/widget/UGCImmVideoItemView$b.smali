.class public final Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Llu/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;->a:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;->a:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$setDownloadLoadingIconVisibility(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;->a:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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

.method public c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;->a:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getFragment$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;->a:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getTrackId$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;->a:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getPreviousTrackId$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;->a:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getDownloadViewModel$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;->a:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getPreviousPageVideoId$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$b;->a:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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
