.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/base/CustomClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private underLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/CustomClickableSpan;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/CustomClickableSpan;->context:Landroid/content/Context;

    .line 3
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/CustomClickableSpan;->underLine:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/CustomClickableSpan;->underLine:Z

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/CustomClickableSpan;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lcom/transsion/vishaplayersdk/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
