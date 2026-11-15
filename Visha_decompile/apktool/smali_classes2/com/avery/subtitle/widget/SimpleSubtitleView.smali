.class public Lcom/avery/subtitle/widget/SimpleSubtitleView;
.super Lcom/avery/subtitle/widget/SubtitleTextView;
.source "SourceFile"

# interfaces
.implements Lcom/avery/subtitle/b$a;
.implements Lcom/avery/subtitle/b$b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field public c:Lcom/avery/subtitle/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/avery/subtitle/widget/SubtitleTextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/avery/subtitle/widget/SubtitleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/avery/subtitle/widget/SubtitleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/avery/subtitle/a;

    invoke-direct {v0}, Lcom/avery/subtitle/a;-><init>()V

    iput-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {v0, p0}, Lcom/avery/subtitle/b;->setOnSubtitlePreparedListener(Lcom/avery/subtitle/b$b;)V

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {v0, p0}, Lcom/avery/subtitle/b;->setOnSubtitleChangeListener(Lcom/avery/subtitle/b$a;)V

    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Lcom/transsion/playercommon/player/b;)V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0, p1}, Lcom/avery/subtitle/b;->bindToMediaPlayer(Lcom/transsion/playercommon/player/b;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0}, Lcom/avery/subtitle/b;->destroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->destroy()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onSubtitleChanged(Lm2a;)V
    .locals 1
    .param p1    # Lm2a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget-object v0, p1, Lm2a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/avery/subtitle/widget/SimpleSubtitleView$1;

    invoke-direct {v0, p0, p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView$1;-><init>(Lcom/avery/subtitle/widget/SimpleSubtitleView;Lm2a;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "                    "

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/avery/subtitle/widget/TracksSubtitleView;->isInDragMode()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onSubtitlePrepared(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lm2a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->start()V

    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0}, Lcom/avery/subtitle/b;->pause()V

    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0}, Lcom/avery/subtitle/b;->reset()V

    return-void
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0}, Lcom/avery/subtitle/b;->resume()V

    return-void
.end method

.method public setOnSubtitleChangeListener(Lcom/avery/subtitle/b$a;)V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0, p1}, Lcom/avery/subtitle/b;->setOnSubtitleChangeListener(Lcom/avery/subtitle/b$a;)V

    return-void
.end method

.method public setOnSubtitlePreparedListener(Lcom/avery/subtitle/b$b;)V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0, p1}, Lcom/avery/subtitle/b;->setOnSubtitlePreparedListener(Lcom/avery/subtitle/b$b;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0, p1}, Lcom/avery/subtitle/b;->setSpeed(F)V

    return-void
.end method

.method public setSubtitleDelayMs(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSubtitleDelayMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleSubtitleView"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0, p1, p2}, Lcom/avery/subtitle/b;->setSubtitleDelayMs(J)V

    return-void
.end method

.method public setSubtitlePath(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0, p1}, Lcom/avery/subtitle/b;->setSubtitlePath(Ljava/lang/String;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0}, Lcom/avery/subtitle/b;->start()V

    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0}, Lcom/avery/subtitle/b;->start()V

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Lcom/avery/subtitle/b;

    invoke-interface {p0}, Lcom/avery/subtitle/b;->stop()V

    return-void
.end method
