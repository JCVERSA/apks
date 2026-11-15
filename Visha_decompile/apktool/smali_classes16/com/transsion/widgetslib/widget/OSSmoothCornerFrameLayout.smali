.class public final Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010&\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0016\u0010*\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u00102\u001a\u0004\u0018\u00010/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0014\u00106\u001a\u0002038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105\u00a8\u00067"
    }
    d2 = {
        "Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "color",
        "Lzfb;",
        "setFillColor",
        "(I)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "(Landroid/graphics/Canvas;)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "Lcom/transsion/widgetslib/dialog/PromptController;",
        "b",
        "Lcom/transsion/widgetslib/dialog/PromptController;",
        "getDialogController",
        "()Lcom/transsion/widgetslib/dialog/PromptController;",
        "setDialogController",
        "(Lcom/transsion/widgetslib/dialog/PromptController;)V",
        "dialogController",
        "",
        "c",
        "F",
        "mCorner",
        "d",
        "I",
        "mFillColor",
        "e",
        "totalHeight",
        "Landroid/graphics/Paint;",
        "f",
        "Landroid/graphics/Paint;",
        "paint",
        "Lcom/transsion/hubsdk/api/graphics/TranCanvas;",
        "g",
        "Lcom/transsion/hubsdk/api/graphics/TranCanvas;",
        "mCanvas",
        "Landroid/graphics/drawable/Drawable;",
        "h",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "Lcom/transsion/hubsdk/api/graphics/TranOutline;",
        "i",
        "Lcom/transsion/hubsdk/api/graphics/TranOutline;",
        "mTranOutLine",
        "widgetsLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public b:Lcom/transsion/widgetslib/dialog/PromptController;

.field public c:F

.field public d:I

.field public e:I

.field public f:Landroid/graphics/Paint;

.field public g:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

.field public final h:Landroid/graphics/drawable/Drawable;

.field public final i:Lcom/transsion/hubsdk/api/graphics/TranOutline;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->f:Landroid/graphics/Paint;

    .line 6
    new-instance p2, Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-direct {p2}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->g:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    .line 7
    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_dialog_bg:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->h:Landroid/graphics/drawable/Drawable;

    .line 8
    new-instance p3, Lcom/transsion/hubsdk/api/graphics/TranOutline;

    invoke-direct {p3}, Lcom/transsion/hubsdk/api/graphics/TranOutline;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->i:Lcom/transsion/hubsdk/api/graphics/TranOutline;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_radius_xxxl:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->c:F

    .line 10
    sget p3, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->d:I

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->f:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->f:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->f:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->d:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->g:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->smoothcornerCubicEdgeEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p0, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 18
    new-instance p1, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout$a;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout$a;-><init>(Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMCorner$p(Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->c:F

    return p0
.end method

.method public static final synthetic access$getMTranOutLine$p(Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;)Lcom/transsion/hubsdk/api/graphics/TranOutline;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->i:Lcom/transsion/hubsdk/api/graphics/TranOutline;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getDialogController()Lcom/transsion/widgetslib/dialog/PromptController;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    return-object p0
.end method

.method public onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v0}, Lwn8;->g(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->e:I

    return-void
.end method

.method public final setDialogController(Lcom/transsion/widgetslib/dialog/PromptController;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    return-void
.end method

.method public final setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
