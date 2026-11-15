.class public Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;
.super Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avery/subtitle/widget/SubtitleTextView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;
    }
.end annotation


# static fields
.field public static final DYNAMICALLY_ADJUST_HEIGHT:Z = true


# instance fields
.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public H:Landroid/widget/LinearLayout;

.field public I:Landroid/widget/RelativeLayout;

.field public J:Landroid/widget/LinearLayout;

.field public K:Landroid/view/ViewStub;

.field public L:Landroid/view/ViewStub;

.field public M:Landroid/view/View;

.field public N:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleTextScrollView;

.field public O:Lk;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Landroid/graphics/drawable/GradientDrawable;

.field public V:I

.field public W:F

.field public a0:I

.field public b0:I

.field public c0:I

.field public d0:I

.field public e0:Ljava/util/List;

.field public f0:Lzt4;

.field public g0:Ljava/lang/Runnable;

.field public mAISubtitleViewOperateCallBack:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->e0:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$2;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$2;-><init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->g0:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->e0:Ljava/util/List;

    .line 6
    new-instance p1, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$2;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$2;-><init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->g0:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->e0:Ljava/util/List;

    .line 9
    new-instance p1, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$2;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$2;-><init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->g0:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic i(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Lk;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->O:Lk;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Lcom/transsion/magicvideo/subtitle/widgets/SubtitleTextScrollView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->N:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleTextScrollView;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->s(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public clearAISubtitleText()V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/SubtitleTextView;->clearAISubtitleText()V

    return-void
.end method

.method public clearLocalSubtitleText()V
    .locals 1

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/avery/subtitle/widget/SubtitleTextView;->onTransCallback(Ljava/lang/String;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public g()I
    .locals 0

    sget p0, Lcom/transsion/magicvideo/R$layout;->subtitles_ai_visha_layout:I

    return p0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->initView(Landroid/content/Context;)V

    sget v0, Lcom/transsion/magicvideo/R$color;->ai_subtitle_bg_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->b0:I

    iput v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->a0:I

    sget v0, Lcom/transsion/magicvideo/R$color;->subtitle_default_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->d0:I

    iput p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->c0:I

    sget-object p1, Ln;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->P:Ljava/lang/String;

    sget-object p1, Ln;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->Q:Ljava/lang/String;

    sget p1, Lcom/transsion/magicvideo/R$id;->tracks_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->U:Landroid/graphics/drawable/GradientDrawable;

    sget p1, Lcom/transsion/magicvideo/R$id;->stub_language_setting_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->K:Landroid/view/ViewStub;

    sget p1, Lcom/transsion/magicvideo/R$id;->stub_switch_ai_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->L:Landroid/view/ViewStub;

    sget p1, Lcom/transsion/magicvideo/R$id;->sv_subtitle_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleTextScrollView;

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->N:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleTextScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    sget-object p1, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->x()V

    sget p1, Lcom/transsion/magicvideo/R$id;->split:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->M:Landroid/view/View;

    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/avery/subtitle/widget/SubtitleTextView;->setMeasureTextLineHeightCallBack(Lcom/avery/subtitle/widget/SubtitleTextView$a;)V

    iget p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->V:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->n(I)V

    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    new-instance v0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$a;-><init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    invoke-static {}, Lw;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lm0;

    invoke-direct {p1, p0}, Lm0;-><init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->f0:Lzt4;

    :cond_1
    return-void
.end method

.method public final n(I)V
    .locals 2

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->N:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleTextScrollView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->V:I

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->N:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleTextScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->N:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleTextScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->N:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleTextScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->V:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeSubtitleDisplaySize layoutParams.height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->V:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AISubtitleVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->N:Lcom/transsion/magicvideo/subtitle/widgets/SubtitleTextScrollView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->I:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->K:Landroid/view/ViewStub;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->K:Landroid/view/ViewStub;

    move-object v1, v0

    :cond_1
    if-nez v1, :cond_2

    sget v0, Lcom/transsion/magicvideo/R$id;->rl_language_setting_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_2
    instance-of v0, v1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->I:Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    sget v0, Lcom/transsion/magicvideo/R$id;->rl_language_setting_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->I:Landroid/widget/RelativeLayout;

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->I:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_from_language:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->P:Ljava/lang/String;

    invoke-static {v1, v2}, Lj0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->I:Landroid/widget/RelativeLayout;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_to_language:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->Q:Ljava/lang/String;

    invoke-static {v1, v2}, Lj0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->F:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->I:Landroid/widget/RelativeLayout;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_setting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->G:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public onAISubtitleTextCallback(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AISubtitleVideoView onAISubtitleTextCallback isFromAIModel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subtitle_Out"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {p0, p1, p2}, Lcom/avery/subtitle/widget/SubtitleTextView;->onAISubtitleText(Ljava/lang/String;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_from_language:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "playpage"

    if-ne v0, v1, :cond_2

    invoke-static {}, Lav3;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0xa

    goto :goto_0

    :cond_0
    const/16 v0, -0x55

    :goto_0
    invoke-virtual {p0, v0, v3, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->r(IZLandroid/view/View;)V

    iget-boolean p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    if-eqz p0, :cond_1

    const-string p0, "vd_video_aisub_sourlang"

    goto :goto_1

    :cond_1
    const-string p0, "vd_video_losub_tran_lang"

    :goto_1
    invoke-static {v2, v4, p0}, Lny5;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_to_language:I

    const/4 v5, 0x0

    if-ne v0, v1, :cond_5

    invoke-static {}, Lav3;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, -0x14

    goto :goto_2

    :cond_3
    const/16 v0, -0x5f

    :goto_2
    invoke-virtual {p0, v0, v5, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->r(IZLandroid/view/View;)V

    iget-boolean p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    if-eqz p0, :cond_4

    const-string p0, "vd_video_aisub_tranlang"

    goto :goto_3

    :cond_4
    const-string p0, "vd_video_losub_tran_tranlang"

    :goto_3
    invoke-static {v2, v4, p0}, Lny5;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_setting:I

    if-ne v0, v1, :cond_7

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->mAISubtitleViewOperateCallBack:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;->b()V

    invoke-static {v4}, Lny5;->d(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->g0:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_ai:I

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, v3}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->w(Z)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_local:I

    if-ne p1, v0, :cond_9

    invoke-virtual {p0, v5}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->w(Z)V

    :cond_9
    :goto_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->resetSubtitleListener(Z)V

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avery/subtitle/widget/SubtitleTextView;->setMeasureTextLineHeightCallBack(Lcom/avery/subtitle/widget/SubtitleTextView$a;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->I:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AISubtitleVideoView"

    const-string p1, "onInterceptTouchEvent "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onSubtitleSingleTapUp()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->T:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->showSettingView(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->u()V

    return-void
.end method

.method public onTextLineHeightChanged(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->V:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->n(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->s(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->J:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->L:Landroid/view/ViewStub;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->L:Landroid/view/ViewStub;

    move-object v1, v0

    :cond_1
    if-nez v1, :cond_2

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_switch_ai_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_2
    instance-of v0, v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->J:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_switch_ai_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->J:Landroid/widget/LinearLayout;

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->J:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_ai:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->J:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_local:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->x()V

    :cond_7
    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/util/List;)Lj;
    .locals 1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lj;->displayText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lj;->displayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final r(IZLandroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->e0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->e0:Ljava/util/List;

    invoke-static {}, Lw5a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->e0:Ljava/util/List;

    const-string v1, "none"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    xor-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->e0:Ljava/util/List;

    invoke-static {v0, v1}, Lj;->a(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->P:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->q(Ljava/lang/String;Ljava/util/List;)Lj;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->Q:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->q(Ljava/lang/String;Ljava/util/List;)Lj;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Lk;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lav3;->z()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    invoke-direct {v2, v3, p3, v4, v5}, Lk;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    iput-object v2, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->O:Lk;

    invoke-virtual {v2, p1}, Leb0;->o(I)Leb0;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {p3, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p1, p3}, Leb0;->p(I)Leb0;

    move-result-object p1

    new-instance p3, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;

    invoke-direct {p3, p0, p2}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;-><init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Z)V

    invoke-virtual {p1, v0, v1, p3}, Leb0;->q(Ljava/util/List;Lgw4;Lcom/transsion/widgets/popup/ISelectCallback;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->O:Lk;

    invoke-virtual {p1}, Leb0;->h()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->O:Lk;

    invoke-virtual {p1}, Leb0;->h()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$c;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$c;-><init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->u()V

    :cond_5
    return-void
.end method

.method public resetSubtitleListener(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->f0:Lzt4;

    invoke-interface {p1, p0}, Ljw4;->f(Lzt4;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljw4;->f(Lzt4;)V

    :goto_0
    return-void
.end method

.method public final s(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->g0:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->g0:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setAISubtitleViewOperateCallBack(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->mAISubtitleViewOperateCallBack:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;

    return-void
.end method

.method public setCheckedLanguageFrom(Ljava/lang/String;Z)V
    .locals 3

    if-eqz p2, :cond_0

    new-instance v0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;

    sget-object v1, Ln;->d:Ljava/lang/String;

    sget-object v2, Ln;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lw5a;->d(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ln;->v()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCheckedLanguageFrom language:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isAISubtitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AISubtitleVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->P:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ai_from_language"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "local_subtitle_language_from"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lj0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->mAISubtitleViewOperateCallBack:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;

    if-eqz p0, :cond_3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_3
    return-void
.end method

.method public setCheckedLanguageTo(Ljava/lang/String;ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    sget-object v0, Ln;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Ln;->f:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1}, Lj0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    new-instance v2, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;

    invoke-direct {v2, v0, v1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lw5a;->d(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ln;->v()V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCheckedLanguageTo saveData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",language:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isAISubtitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AISubtitleVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->Q:Ljava/lang/String;

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ai_to_language"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lj0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->mAISubtitleViewOperateCallBack:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;

    if-eqz p0, :cond_4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;->d(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    :cond_4
    return-void
.end method

.method public setIsShowAISwitch(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->S:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->S:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->z()V

    :cond_0
    return-void
.end method

.method public setLayoutGravity(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setLayoutGravity(I)V

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setShowSetting()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->showSettingView(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->u()V

    return-void
.end method

.method public setTextBackground(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTextBackground(I)V

    iput p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->a0:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->y()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTextColor(I)V

    iput p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->c0:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->y()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    iget v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->v:F

    div-float/2addr p1, v0

    invoke-super {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTextSize(F)V

    iget v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->W:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->W:F

    iget p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->V:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->n(I)V

    :cond_0
    return-void
.end method

.method public showSettingView(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSettingView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AISubtitleVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->T:Z

    if-ne v0, p1, :cond_0

    const-string p0, "showSettingView return"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->o()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->p()V

    :cond_1
    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0, p1}, Lcom/avery/subtitle/widget/SubtitleTextView;->setShowSetting(Z)V

    iput-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->T:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->y()V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->I:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->M:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->I:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->M:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->g0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->z()V

    return-void
.end method

.method public switchToAI(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToAI isRealTimeAI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AISubtitleVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->x()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->v()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/SubtitleTextView;->removeLocalSubtitleTextListener()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/SubtitleTextView;->addLocalSubtitleTextListener()V

    :goto_0
    return-void
.end method

.method public final synthetic t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p2, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->onAISubtitleTextCallback(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/avery/subtitle/widget/SubtitleTextView;->onLocalSubtitleTranText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->resetSubtitleListener(Z)V

    return-void
.end method

.method public final u()V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->g0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->g0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateSubtitleViewForWindowChange(Lwoc;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->misLandscape:Z

    iget-boolean v1, p1, Lwoc;->g:Z

    if-ne v0, v1, :cond_0

    iget v0, p1, Lwoc;->a:I

    iget v1, p1, Lwoc;->b:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lwoc;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lwoc;->d:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->O:Lk;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Leb0;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->O:Lk;

    :cond_1
    invoke-super {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->updateSubtitleViewForWindowChange(Lwoc;)V

    return-void
.end method

.method public final v()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    if-eqz v0, :cond_0

    sget-object v0, Ln;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->P:Ljava/lang/String;

    sget-object v0, Ln;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->Q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Ln;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->P:Ljava/lang/String;

    sget-object v0, Ln;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->Q:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->P:Ljava/lang/String;

    invoke-static {v1, v2}, Lj0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->Q:Ljava/lang/String;

    invoke-static {v1, p0}, Lj0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final w(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAISwitch isRealTimeAI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AISubtitleVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->mAISubtitleViewOperateCallBack:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->x()V

    if-nez p1, :cond_1

    sget p0, Lcom/transsion/magicvideo/R$string;->visha_ai_subtitle_switch_local:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    const-string p0, "vd_video_aisub_losub_switch"

    invoke-static {p1, p0}, Lny5;->b(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final x()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->E:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget v1, Lcom/transsion/magicvideo/R$drawable;->bg_switch_ai_subtitle_inner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$color;->ai_switch_grey_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->E:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/magicvideo/R$drawable;->bg_switch_ai_subtitle_inner:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$color;->ai_switch_grey_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->D:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->U:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->T:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->b0:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->a0:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->T:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->d0:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->c0:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->T:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->d0:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->c0:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->H:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->U:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final z()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->S:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->T:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->p()V

    :cond_1
    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->J:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->R:Z

    const-string v0, "vd_video_aisub_losub_show"

    invoke-static {p0, v0}, Lny5;->b(ZLjava/lang/String;)V

    :cond_3
    return-void
.end method
