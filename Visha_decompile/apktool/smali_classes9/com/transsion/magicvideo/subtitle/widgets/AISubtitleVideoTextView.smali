.class public Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;
.super Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:Z

.field public f:Z

.field public final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->f:Z

    .line 5
    new-instance p1, Ll0;

    invoke-direct {p1, p0}, Ll0;-><init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic d(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->f()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;Ljava/lang/String;Ljava/lang/Boolean;)Lzfb;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->g(Ljava/lang/String;Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private setSubtitleText(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AISubtitleVideoTextView setSubtitleText\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subtitle_Out"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "                    "

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/avery/subtitle/widget/TracksSubtitleView;->isInDragMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->f:Z

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->setVisibility(I)V

    const-string v1, "^[\n\r]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[\n\r]$"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->visha_ai_speech_rcognizing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->e:Z

    return-void
.end method


# virtual methods
.method public addLocalSubtitleTextListener()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->i(Z)V

    invoke-static {}, Lpp3;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;->mIsFirstSubtitle:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A(Lcom/transsion/magicvideo/player/VideoPlayManager$e;)V

    :cond_1
    return-void
.end method

.method public clearAISubtitleText()V
    .locals 2

    invoke-super {p0}, Lcom/avery/subtitle/widget/SubtitleTextView;->clearAISubtitleText()V

    const-string v0, "Subtitle_Out"

    const-string v1, "AISubtitleVideoTextView clearAISubtitleText"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->setSubtitleText(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic f()V
    .locals 2

    const-string v0, "Subtitle_Out"

    const-string v1, "RealTimeAiTextResetRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->visha_ai_speech_rcognizing:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->setSubtitleText(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic g(Ljava/lang/String;Ljava/lang/Boolean;)Lzfb;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->setSubtitleText(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final i(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;->mIsAISubtitle:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;->mIsAISubtitle:Z

    return-void
.end method

.method public init()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->d:I

    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->i(Z)V

    return-void
.end method

.method public onAISubtitleText(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AISubtitleVideoTextView onAISubtitleText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subtitle_Out"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/avery/subtitle/widget/SubtitleTextView;->onAISubtitleText(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->g:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->setSubtitleText(Ljava/lang/String;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;->onDetachedFromWindow()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocalSubtitleTranText(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AISubtitleVideoTextView onLocalSubtitleTranText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subtitle_Out"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/avery/subtitle/widget/SubtitleTextView;->onLocalSubtitleTranText(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->setSubtitleText(Ljava/lang/String;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lcom/avery/subtitle/widget/SubtitleTextView;->b:Lcom/avery/subtitle/widget/SubtitleTextView$a;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    if-ge p1, p2, :cond_0

    iget p2, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->d:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->d:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMeasure MeasuredHeight:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",lineHeight:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AISubtitleVideoTextView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/avery/subtitle/widget/SubtitleTextView;->b:Lcom/avery/subtitle/widget/SubtitleTextView$a;

    invoke-interface {p0, p1}, Lcom/avery/subtitle/widget/SubtitleTextView$a;->onTextLineHeightChanged(I)V

    :cond_0
    return-void
.end method

.method public onSubtitleText(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ln;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;->mIsAISubtitle:Z

    if-nez v0, :cond_2

    const-string v0, "none"

    sget-object v1, Ln;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->setSubtitleText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->onTransCallback(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTransCallback(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AISubtitleVideoTextView onTransCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subtitle_Out"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->setSubtitleText(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;

    sget-object v1, Ln;->f:Ljava/lang/String;

    sget-object v2, Ln;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lw;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object p0

    invoke-interface {p0, p1}, Ljw4;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object v1

    new-instance v2, Lk0;

    invoke-direct {v2, p0}, Lk0;-><init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;)V

    invoke-interface {v1, p1, v0, v2}, Ljw4;->a(Ljava/lang/String;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Ls74;)V

    :goto_0
    return-void
.end method

.method public removeLocalSubtitleTextListener()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->i(Z)V

    invoke-static {}, Lpp3;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;->mIsFirstSubtitle:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->I1(Lcom/transsion/magicvideo/player/VideoPlayManager$e;)V

    :cond_1
    return-void
.end method

.method public setShowSetting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->f:Z

    if-nez p1, :cond_1

    sget-object p1, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->setSubtitleText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;->mIsAISubtitle:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;->mIsFirstSubtitle:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;->b()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoTextView;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoTextView;->h()V

    return-void
.end method
