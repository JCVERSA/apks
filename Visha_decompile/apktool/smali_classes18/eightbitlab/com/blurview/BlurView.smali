.class public Leightbitlab/com/blurview/BlurView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurView"


# instance fields
.field blurController:Lzf0;

.field private overlayColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, La17;

    invoke-direct {p1}, La17;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Leightbitlab/com/blurview/BlurView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, La17;

    invoke-direct {p1}, La17;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p2, p1}, Leightbitlab/com/blurview/BlurView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, La17;

    invoke-direct {p1}, La17;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    .line 9
    invoke-virtual {p0, p2, p3}, Leightbitlab/com/blurview/BlurView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getBlurAlgorithm()Lyf0;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x11
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance p0, Lhs8;

    invoke-direct {p0}, Lhs8;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljs8;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Ljs8;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leightbitlab/com/blurview/R$styleable;->BlurView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Leightbitlab/com/blurview/R$styleable;->BlurView_blurOverlayColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    invoke-interface {v0, p1}, Lzf0;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Leightbitlab/com/blurview/BlurView;->TAG:Ljava/lang/String;

    const-string v0, "BlurView can\'t be used in not hardware-accelerated window!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lfg0;->e(Z)Lfg0;

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lfg0;->e(Z)Lfg0;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    invoke-interface {p0}, Lzf0;->b()V

    return-void
.end method

.method public setBlurAutoUpdate(Z)Lfg0;
    .locals 0

    iget-object p0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    invoke-interface {p0, p1}, Lfg0;->e(Z)Lfg0;

    move-result-object p0

    return-object p0
.end method

.method public setBlurEnabled(Z)Lfg0;
    .locals 0

    iget-object p0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    invoke-interface {p0, p1}, Lfg0;->a(Z)Lfg0;

    move-result-object p0

    return-object p0
.end method

.method public setBlurRadius(F)Lfg0;
    .locals 0

    iget-object p0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    invoke-interface {p0, p1}, Lfg0;->c(F)Lfg0;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayColor(I)Lfg0;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    iget-object p0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    invoke-interface {p0, p1}, Lfg0;->d(I)Lfg0;

    move-result-object p0

    return-object p0
.end method

.method public setupWith(Landroid/view/ViewGroup;)Lfg0;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 4
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    invoke-interface {v0}, Lzf0;->destroy()V

    .line 5
    new-instance v0, Lsd8;

    iget v1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    invoke-direct {p0}, Leightbitlab/com/blurview/BlurView;->getBlurAlgorithm()Lyf0;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lsd8;-><init>(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;ILyf0;)V

    .line 6
    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    return-object v0
.end method

.method public setupWith(Landroid/view/ViewGroup;Lyf0;)Lfg0;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    invoke-interface {v0}, Lzf0;->destroy()V

    .line 2
    new-instance v0, Lsd8;

    iget v1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    invoke-direct {v0, p0, p1, v1, p2}, Lsd8;-><init>(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;ILyf0;)V

    .line 3
    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Lzf0;

    return-object v0
.end method
