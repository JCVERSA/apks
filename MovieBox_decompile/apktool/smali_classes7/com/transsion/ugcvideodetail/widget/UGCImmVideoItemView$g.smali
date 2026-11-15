.class public final Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Llu/n$a;


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
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$g;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$g;->a:Liu/r;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Liu/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$g;->a:Liu/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$g;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getSubtitleViewModel$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

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
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$g;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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

.method public getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$g;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$g;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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
