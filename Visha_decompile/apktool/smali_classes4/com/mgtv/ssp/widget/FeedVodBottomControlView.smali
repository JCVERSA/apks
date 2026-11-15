.class public Lcom/mgtv/ssp/widget/FeedVodBottomControlView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/mgtv/ssp/control/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/mgtv/ssp/control/a;

.field protected b:Landroid/widget/ImageView;

.field c:Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/SeekBar;

.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->q:Z

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->r:Z

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->s:Z

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->getLayoutId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    sget p1, Lcom/mgtv/ssp/R$id;->fullscreen:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->g:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->h:Landroid/widget/LinearLayout;

    .line 10
    sget p1, Lcom/mgtv/ssp/R$id;->seekBar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    .line 11
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 12
    sget p1, Lcom/mgtv/ssp/R$id;->total_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->d:Landroid/widget/TextView;

    .line 13
    sget p1, Lcom/mgtv/ssp/R$id;->curr_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->e:Landroid/widget/TextView;

    .line 14
    sget p1, Lcom/mgtv/ssp/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->f:Landroid/widget/TextView;

    .line 15
    sget p1, Lcom/mgtv/ssp/R$id;->iv_mute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->k:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    .line 18
    sget p1, Lcom/mgtv/ssp/R$id;->play_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b()V

    .line 21
    sget p1, Lcom/mgtv/ssp/R$id;->icon_top_back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->l:Landroid/widget/ImageView;

    .line 22
    sget p1, Lcom/mgtv/ssp/R$id;->three_top_dd:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->m:Landroid/view/View;

    .line 23
    sget p1, Lcom/mgtv/ssp/R$id;->to_top_detail:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->n:Landroid/widget/TextView;

    .line 24
    sget p1, Lcom/mgtv/ssp/R$id;->topui:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->o:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->q:Z

    .line 27
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->r:Z

    .line 28
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->s:Z

    const/16 p1, 0x8

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->getLayoutId()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    sget p1, Lcom/mgtv/ssp/R$id;->fullscreen:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->g:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->h:Landroid/widget/LinearLayout;

    .line 34
    sget p1, Lcom/mgtv/ssp/R$id;->seekBar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    .line 35
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 36
    sget p1, Lcom/mgtv/ssp/R$id;->total_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->d:Landroid/widget/TextView;

    .line 37
    sget p1, Lcom/mgtv/ssp/R$id;->curr_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->e:Landroid/widget/TextView;

    .line 38
    sget p1, Lcom/mgtv/ssp/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->f:Landroid/widget/TextView;

    .line 39
    sget p1, Lcom/mgtv/ssp/R$id;->iv_mute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->k:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    .line 42
    sget p1, Lcom/mgtv/ssp/R$id;->play_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b()V

    .line 45
    sget p1, Lcom/mgtv/ssp/R$id;->icon_top_back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->l:Landroid/widget/ImageView;

    .line 46
    sget p1, Lcom/mgtv/ssp/R$id;->three_top_dd:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->m:Landroid/view/View;

    .line 47
    sget p1, Lcom/mgtv/ssp/R$id;->to_top_detail:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->n:Landroid/widget/TextView;

    .line 48
    sget p1, Lcom/mgtv/ssp/R$id;->topui:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->o:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->q:Z

    .line 51
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->r:Z

    .line 52
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->s:Z

    const/16 p1, 0x8

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->getLayoutId()I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    sget p1, Lcom/mgtv/ssp/R$id;->fullscreen:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->g:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->h:Landroid/widget/LinearLayout;

    .line 58
    sget p1, Lcom/mgtv/ssp/R$id;->seekBar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    .line 59
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 60
    sget p1, Lcom/mgtv/ssp/R$id;->total_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->d:Landroid/widget/TextView;

    .line 61
    sget p1, Lcom/mgtv/ssp/R$id;->curr_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->e:Landroid/widget/TextView;

    .line 62
    sget p1, Lcom/mgtv/ssp/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->f:Landroid/widget/TextView;

    .line 63
    sget p1, Lcom/mgtv/ssp/R$id;->iv_mute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->k:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    .line 66
    sget p1, Lcom/mgtv/ssp/R$id;->play_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b()V

    .line 69
    sget p1, Lcom/mgtv/ssp/R$id;->icon_top_back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->l:Landroid/widget/ImageView;

    .line 70
    sget p1, Lcom/mgtv/ssp/R$id;->three_top_dd:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->m:Landroid/view/View;

    .line 71
    sget p1, Lcom/mgtv/ssp/R$id;->to_top_detail:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->n:Landroid/widget/TextView;

    .line 72
    sget p1, Lcom/mgtv/ssp/R$id;->topui:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->o:Landroid/view/View;

    return-void
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->r:Z

    :cond_0
    iget-boolean v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->r:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->k:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(IZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->l:Landroid/widget/ImageView;

    new-instance v3, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$2;

    invoke-direct {v3, p0, p1}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$2;-><init>(Lcom/mgtv/ssp/widget/FeedVodBottomControlView;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p3, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->n:Landroid/widget/TextView;

    new-instance v0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$3;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$3;-><init>(Lcom/mgtv/ssp/widget/FeedVodBottomControlView;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->m:Landroid/view/View;

    if-eqz p3, :cond_5

    if-eqz p2, :cond_4

    .line 10
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p2, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->m:Landroid/view/View;

    new-instance p3, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$4;

    invoke-direct {p3, p0, p1}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$4;-><init>(Lcom/mgtv/ssp/widget/FeedVodBottomControlView;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->isFullScreen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public attach(Lcom/mgtv/ssp/control/a;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/control/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/mgtv/ssp/R$layout;->mgplayer_layout_feed_vod_control_view:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mgtv/ssp/R$id;->fullscreen:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->c:Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;->a()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/mgtv/ssp/R$id;->iv_mute:I

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->r:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->s:Z

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->r:Z

    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/control/a;->setMute(Z)Ljava/lang/String;

    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->g(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->s:Z

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->r:Z

    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/control/a;->setMute(Z)Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget v0, Lcom/mgtv/ssp/R$id;->play_btn:I

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->togglePlay()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onLockStateChanged(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->onVisibilityChanged(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->startProgress()V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onPlayerStateChanged(I)V
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->s:Z

    if-nez p1, :cond_4

    iput-boolean v2, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->r:Z

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->t:I

    if-ne p1, v1, :cond_4

    invoke-static {v2}, Lcom/hunantv/imgo/util/b;->g(Z)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->r:Z

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->t:I

    if-ne p1, v1, :cond_4

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->g(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/ssp/utils/c;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->getCutoutHeight()I

    move-result v0

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->getVideoTotalTime()I

    move-result p1

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long/2addr v0, p1

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v0, p1

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->e:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    long-to-int p1, v0

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->p:Z

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->stopProgress()V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->stopFadeOut()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->getVideoTotalTime()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-long v2, p1

    div-long/2addr v0, v2

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/mgtv/ssp/control/a;->seekTo(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->p:Z

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->startProgress()V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->startFadeOut()V

    return-void
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "lyzzzzzzzzzz"

    invoke-static {v2, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->getPlayerStatus()I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->getPlayerStatus()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->getPlayerStatus()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->o:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->q:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a()Z

    move-result p1

    iget p2, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->t:I

    if-ne p2, v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->setTopUiVisible(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->c()V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->o:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    iget-boolean p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->q:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p2, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->b()V

    :goto_1
    return-void
.end method

.method public setProgress(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    if-lez p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    int-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->getBufferedPercentage()I

    move-result v0

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->i:Landroid/widget/SeekBar;

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->e:Landroid/widget/TextView;

    if-eqz p0, :cond_5

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public setScene(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->t:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTopUiVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->l:Landroid/widget/ImageView;

    new-instance v3, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$1;

    invoke-direct {v3, p0}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView$1;-><init>(Lcom/mgtv/ssp/widget/FeedVodBottomControlView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->f:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setViewCallback(Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->c:Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;

    return-void
.end method
