.class public final Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkn/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->G1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

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
    .locals 0

    .line 1
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
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->K0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;Lcom/transsion/videofloat/bean/FloatActionType;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public d(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 2

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->J0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;Lcom/transsion/player/longvideo/ui/LongVodUiType;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->H0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;Lcom/transsion/player/longvideo/ui/LongVodUiType;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->E0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;)Lzm/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v1, Lcom/transsion/player/longvideo/ui/LongVodUiType;->MIDDLE:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    .line 25
    .line 26
    if-eq p1, v1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    invoke-virtual {v0, p1}, Lzm/e;->x(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->F0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llm/h;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Llm/h;->j:Landroidx/appcompat/widget/AppCompatImageView;

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
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->I0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;Lln/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCompletion()V
    .locals 0

    .line 1
    return-void
.end method
