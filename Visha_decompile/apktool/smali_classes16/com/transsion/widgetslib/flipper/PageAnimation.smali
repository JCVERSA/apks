.class public final Lcom/transsion/widgetslib/flipper/PageAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/flipper/PageAnimation$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u001a\u0018\u0000 )2\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u001f\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0017R\"\u0010!\u001a\u00020\u000c8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\"\u0010%\u001a\u00020\u000c8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0017\u001a\u0004\u0008#\u0010\u001e\"\u0004\u0008$\u0010 R\u0018\u0010(\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/widgetslib/flipper/PageAnimation;",
        "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;",
        "<init>",
        "()V",
        "Lcom/transsion/widgetslib/flipper/FlipperLayout;",
        "layout",
        "Lzfb;",
        "b",
        "(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V",
        "d",
        "Landroid/view/View;",
        "page",
        "",
        "position",
        "transformPage",
        "(Landroid/view/View;F)V",
        "",
        "a",
        "Ljava/lang/Integer;",
        "pPaddingStart",
        "I",
        "pPaddingEnd",
        "c",
        "F",
        "dotAlphaNormal",
        "dotAlphaSelected",
        "e",
        "dotAlphaDiff",
        "f",
        "getAlphaRatio$widgetsLib_release",
        "()F",
        "setAlphaRatio$widgetsLib_release",
        "(F)V",
        "alphaRatio",
        "g",
        "getAlphaPageOutRatio$widgetsLib_release",
        "setAlphaPageOutRatio$widgetsLib_release",
        "alphaPageOutRatio",
        "h",
        "Lcom/transsion/widgetslib/flipper/FlipperLayout;",
        "flipperLayout",
        "i",
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


# static fields
.field public static final i:Lcom/transsion/widgetslib/flipper/PageAnimation$a;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/flipper/PageAnimation$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/flipper/PageAnimation$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/flipper/PageAnimation;->i:Lcom/transsion/widgetslib/flipper/PageAnimation$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3df5c28f    # 0.12f

    iput v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->c:F

    const v1, 0x3f266666    # 0.65f

    iput v1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->d:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->e:F

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/PageAnimation;->c(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-void
.end method

.method public static final c(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 3

    const-string v0, "layout"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->h:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->h:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_comp_color_page_default:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_comp_color_page_default_hios:I

    invoke-static {p1, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->c:F

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_comp_color_page_focus:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_page_focus_hios:I

    invoke-static {p1, v0, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->d:F

    iget v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->c:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->e:F

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->a:Ljava/lang/Integer;

    return-void
.end method

.method public final getAlphaPageOutRatio$widgetsLib_release()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->g:F

    return p0
.end method

.method public final getAlphaRatio$widgetsLib_release()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->f:F

    return p0
.end method

.method public final setAlphaPageOutRatio$widgetsLib_release(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->g:F

    return-void
.end method

.method public final setAlphaRatio$widgetsLib_release(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->f:F

    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 3

    const-string p2, "page"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->a:Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->h:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->a:Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->b:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2, v0, v1, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    new-instance v1, Luv7;

    invoke-direct {v1, p2}, Luv7;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p2, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->a:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    iget p0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->b:I

    invoke-virtual {p1, p2, v0, p0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
