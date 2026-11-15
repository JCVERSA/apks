.class public Lcom/mgtv/ssp/widget/VodBottomControlView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/mgtv/ssp/control/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/widget/VodBottomControlView$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/mgtv/ssp/control/a;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/ImageView;

.field d:Lcom/mgtv/ssp/widget/VodBottomControlView$a;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/SeekBar;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I


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
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->u:Z

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->v:Z

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->w:Z

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView;->getLayoutId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    sget p1, Lcom/mgtv/ssp/R$id;->fullscreen:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->h:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->i:Landroid/widget/LinearLayout;

    .line 10
    sget p1, Lcom/mgtv/ssp/R$id;->layout_control_bottom:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->j:Landroid/widget/LinearLayout;

    .line 11
    sget p1, Lcom/mgtv/ssp/R$id;->seekBar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    .line 12
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 13
    sget p1, Lcom/mgtv/ssp/R$id;->total_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->e:Landroid/widget/TextView;

    .line 14
    sget p1, Lcom/mgtv/ssp/R$id;->curr_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->f:Landroid/widget/TextView;

    .line 15
    sget p1, Lcom/mgtv/ssp/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->g:Landroid/widget/TextView;

    .line 16
    sget p1, Lcom/mgtv/ssp/R$id;->iv_mute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->m:Landroid/widget/ImageView;

    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    .line 19
    sget p1, Lcom/mgtv/ssp/R$id;->play_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    .line 20
    sget p1, Lcom/mgtv/ssp/R$id;->play_btn_2:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->c:Landroid/widget/ImageView;

    .line 21
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView;->b()V

    .line 24
    sget p1, Lcom/mgtv/ssp/R$id;->icon_top_back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->n:Landroid/widget/ImageView;

    .line 25
    sget p1, Lcom/mgtv/ssp/R$id;->three_top_dd:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->o:Landroid/view/View;

    .line 26
    sget p1, Lcom/mgtv/ssp/R$id;->to_top_detail:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->p:Landroid/widget/TextView;

    .line 27
    sget p1, Lcom/mgtv/ssp/R$id;->topui:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->q:Landroid/view/View;

    .line 28
    sget p1, Lcom/mgtv/ssp/R$id;->tv_select_definition:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->r:Landroid/widget/TextView;

    .line 29
    sget p1, Lcom/mgtv/ssp/R$id;->tv_select_index:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->s:Landroid/widget/TextView;

    .line 30
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->r:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->s:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->u:Z

    .line 34
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->v:Z

    .line 35
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->w:Z

    const/16 p1, 0x8

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView;->getLayoutId()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    sget p1, Lcom/mgtv/ssp/R$id;->fullscreen:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->h:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->i:Landroid/widget/LinearLayout;

    .line 41
    sget p1, Lcom/mgtv/ssp/R$id;->layout_control_bottom:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->j:Landroid/widget/LinearLayout;

    .line 42
    sget p1, Lcom/mgtv/ssp/R$id;->seekBar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    .line 43
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 44
    sget p1, Lcom/mgtv/ssp/R$id;->total_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->e:Landroid/widget/TextView;

    .line 45
    sget p1, Lcom/mgtv/ssp/R$id;->curr_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->f:Landroid/widget/TextView;

    .line 46
    sget p1, Lcom/mgtv/ssp/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->g:Landroid/widget/TextView;

    .line 47
    sget p1, Lcom/mgtv/ssp/R$id;->iv_mute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->m:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    .line 50
    sget p1, Lcom/mgtv/ssp/R$id;->play_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    .line 51
    sget p1, Lcom/mgtv/ssp/R$id;->play_btn_2:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->c:Landroid/widget/ImageView;

    .line 52
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView;->b()V

    .line 55
    sget p1, Lcom/mgtv/ssp/R$id;->icon_top_back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->n:Landroid/widget/ImageView;

    .line 56
    sget p1, Lcom/mgtv/ssp/R$id;->three_top_dd:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->o:Landroid/view/View;

    .line 57
    sget p1, Lcom/mgtv/ssp/R$id;->to_top_detail:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->p:Landroid/widget/TextView;

    .line 58
    sget p1, Lcom/mgtv/ssp/R$id;->topui:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->q:Landroid/view/View;

    .line 59
    sget p1, Lcom/mgtv/ssp/R$id;->tv_select_definition:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->r:Landroid/widget/TextView;

    .line 60
    sget p1, Lcom/mgtv/ssp/R$id;->tv_select_index:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->s:Landroid/widget/TextView;

    .line 61
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->r:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->s:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->u:Z

    .line 65
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->v:Z

    .line 66
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->w:Z

    const/16 p1, 0x8

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView;->getLayoutId()I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    sget p1, Lcom/mgtv/ssp/R$id;->fullscreen:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->h:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->i:Landroid/widget/LinearLayout;

    .line 72
    sget p1, Lcom/mgtv/ssp/R$id;->layout_control_bottom:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->j:Landroid/widget/LinearLayout;

    .line 73
    sget p1, Lcom/mgtv/ssp/R$id;->seekBar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    .line 74
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 75
    sget p1, Lcom/mgtv/ssp/R$id;->total_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->e:Landroid/widget/TextView;

    .line 76
    sget p1, Lcom/mgtv/ssp/R$id;->curr_time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->f:Landroid/widget/TextView;

    .line 77
    sget p1, Lcom/mgtv/ssp/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->g:Landroid/widget/TextView;

    .line 78
    sget p1, Lcom/mgtv/ssp/R$id;->iv_mute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->m:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget p1, Lcom/mgtv/ssp/R$id;->bottom_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    .line 81
    sget p1, Lcom/mgtv/ssp/R$id;->play_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    .line 82
    sget p1, Lcom/mgtv/ssp/R$id;->play_btn_2:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->c:Landroid/widget/ImageView;

    .line 83
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView;->b()V

    .line 86
    sget p1, Lcom/mgtv/ssp/R$id;->icon_top_back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->n:Landroid/widget/ImageView;

    .line 87
    sget p1, Lcom/mgtv/ssp/R$id;->three_top_dd:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->o:Landroid/view/View;

    .line 88
    sget p1, Lcom/mgtv/ssp/R$id;->to_top_detail:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->p:Landroid/widget/TextView;

    .line 89
    sget p1, Lcom/mgtv/ssp/R$id;->topui:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->q:Landroid/view/View;

    .line 90
    sget p1, Lcom/mgtv/ssp/R$id;->tv_select_definition:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->r:Landroid/widget/TextView;

    .line 91
    sget p1, Lcom/mgtv/ssp/R$id;->tv_select_index:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->s:Landroid/widget/TextView;

    .line 92
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->r:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->s:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->v:Z

    :cond_0
    iget-boolean v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->v:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->m:Landroid/widget/ImageView;

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
.method public a()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    if-eqz p0, :cond_0

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

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/mgtv/ssp/R$layout;->mgplayer_layout_vod_control_view:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getmDefinitionView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mgtv/ssp/R$id;->fullscreen:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->d:Lcom/mgtv/ssp/widget/VodBottomControlView$a;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView$a;->a()V

    goto :goto_1

    :cond_0
    sget v0, Lcom/mgtv/ssp/R$id;->iv_mute:I

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->v:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->w:Z

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->v:Z

    iget-object v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/control/a;->setMute(Z)Ljava/lang/String;

    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->g(Z)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->w:Z

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->v:Z

    iget-object v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/control/a;->setMute(Z)Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget v0, Lcom/mgtv/ssp/R$id;->play_btn:I

    if-eq p1, v0, :cond_5

    sget v0, Lcom/mgtv/ssp/R$id;->play_btn_2:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget v0, Lcom/mgtv/ssp/R$id;->tv_select_definition:I

    if-ne v0, p1, :cond_4

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->d:Lcom/mgtv/ssp/widget/VodBottomControlView$a;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView$a;->b()V

    goto :goto_1

    :cond_4
    sget v0, Lcom/mgtv/ssp/R$id;->tv_select_index:I

    if-ne v0, p1, :cond_6

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->d:Lcom/mgtv/ssp/widget/VodBottomControlView$a;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView$a;->c()V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->togglePlay()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onLockStateChanged(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/ssp/widget/VodBottomControlView;->onVisibilityChanged(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 3

    const/16 v0, 0xb

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->startProgress()V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->y:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->y:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

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
    .locals 4

    const/16 v0, 0xa

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->w:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->v:Z

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->x:I

    if-ne p1, v2, :cond_4

    invoke-static {v3}, Lcom/hunantv/imgo/util/b;->g(Z)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->v:Z

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->x:I

    if-ne p1, v2, :cond_4

    invoke-static {v2}, Lcom/hunantv/imgo/util/b;->g(Z)V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->y:I

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->y:I

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/ssp/utils/c;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iget-object v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->getCutoutHeight()I

    move-result v0

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_6
    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->getVideoTotalTime()I

    move-result p1

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long/2addr v0, p1

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v0, p1

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->f:Landroid/widget/TextView;

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

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->t:Z

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->stopProgress()V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->stopFadeOut()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->getVideoTotalTime()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-long v2, p1

    div-long/2addr v0, v2

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/mgtv/ssp/control/a;->seekTo(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->t:Z

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->startProgress()V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

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

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->getPlayerStatus()I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->getPlayerStatus()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/control/a;->getPlayerStatus()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->q:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->u:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView;->a()Z

    move-result p1

    iget p2, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->x:I

    if-ne p2, v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/widget/VodBottomControlView;->setTopUiVisible(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView;->c()V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->q:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    iget-boolean p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->u:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p2, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/VodBottomControlView;->b()V

    :goto_1
    return-void
.end method

.method public setDefinition(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->r:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setProgress(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    if-lez p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    int-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->a:Lcom/mgtv/ssp/control/a;

    invoke-virtual {v0}, Lcom/mgtv/ssp/control/a;->getBufferedPercentage()I

    move-result v0

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->k:Landroid/widget/SeekBar;

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->f:Landroid/widget/TextView;

    if-eqz p0, :cond_5

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public setScene(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->x:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTopUiVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->g:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewCallback(Lcom/mgtv/ssp/widget/VodBottomControlView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/widget/VodBottomControlView;->d:Lcom/mgtv/ssp/widget/VodBottomControlView$a;

    return-void
.end method
