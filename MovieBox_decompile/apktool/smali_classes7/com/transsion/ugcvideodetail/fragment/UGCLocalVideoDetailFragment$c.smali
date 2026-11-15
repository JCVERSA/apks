.class public final Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkn/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;->Z0(Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public c(Lcom/transsion/videofloat/bean/FloatActionType;)Z
    .locals 1

    .line 1
    const-string v0, "actionType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;->V0(Lcom/transsion/videofloat/bean/FloatActionType;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public d(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 1

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->O0(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->MIDDLE:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->s0()Lcom/transsion/ugcvideodetail/hepler/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/e;->s(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->m0()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Liu/i;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, v0, Liu/i;->n:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;->pauseAnimatedImageSpans(Z)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Liu/i;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Liu/i;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p1, 0x8

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public g(Lln/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->o0(Lln/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCompletion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;->Z0(Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
