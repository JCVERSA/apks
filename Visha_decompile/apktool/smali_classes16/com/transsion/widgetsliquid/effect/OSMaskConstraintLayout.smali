.class public Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0016\u0018\u0000 R2\u00020\u0001:\u0001*B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0019H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001e\u0010\u0017J\u0015\u0010 \u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0006\u00a2\u0006\u0004\u0008 \u0010\u0017J\u0015\u0010\"\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\n\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010%\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\n\u00a2\u0006\u0004\u0008%\u0010#J\u0015\u0010\'\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\'\u0010\u0017J\u0017\u0010(\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008(\u0010\u001cJ\u0017\u0010)\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008)\u0010\u001cJ\u0017\u0010*\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008*\u0010\u001cJ\u001f\u0010-\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008-\u0010.J#\u00103\u001a\u00020\u00122\u0008\u00100\u001a\u0004\u0018\u00010/2\u0008\u00102\u001a\u0004\u0018\u000101H\u0003\u00a2\u0006\u0004\u00083\u00104R\u0016\u00106\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u00105R\u0016\u00109\u001a\u0002078\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008(\u00108R\u0016\u0010;\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010:R\u0016\u0010<\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010:R\u0016\u0010>\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u00105R\u0016\u0010A\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0014\u0010D\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010CR\u0016\u0010H\u001a\u0004\u0018\u00010E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0016\u0010J\u001a\u0004\u0018\u00010E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010GR$\u0010Q\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010P\u00a8\u0006S"
    }
    d2 = {
        "Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "adapterOn",
        "()Z",
        "isGestureNavigationBarOn",
        "(Landroid/content/Context;)Z",
        "height",
        "",
        "strength",
        "Lzfb;",
        "setFadeEffect",
        "(IF)V",
        "position",
        "setMaskPosition",
        "(I)V",
        "setMaskLayerPosition",
        "Landroid/graphics/Canvas;",
        "canvas",
        "dispatchDraw",
        "(Landroid/graphics/Canvas;)V",
        "color",
        "setMaskColor",
        "fadeHeight",
        "setMaskHeight",
        "use",
        "setUseBlur",
        "(Z)V",
        "adapter",
        "setAdapterNavi",
        "visibility",
        "setMaskVisibility",
        "c",
        "b",
        "a",
        "w",
        "h",
        "e",
        "(II)V",
        "Landroid/view/View;",
        "view",
        "Landroid/graphics/RenderEffect;",
        "renderEffect",
        "d",
        "(Landroid/view/View;Landroid/graphics/RenderEffect;)V",
        "I",
        "maskLayerPosition",
        "Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;",
        "Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;",
        "maskDrawable",
        "Z",
        "useBlur",
        "adapterNavi",
        "f",
        "defaultMaskHeight",
        "g",
        "F",
        "maxBlurRadius",
        "",
        "Ljava/lang/String;",
        "LINEAR_GRADIENT_SHADER",
        "Landroid/graphics/RuntimeShader;",
        "i",
        "Landroid/graphics/RuntimeShader;",
        "vBlurShader",
        "j",
        "hBlurShader",
        "k",
        "Landroid/graphics/RenderEffect;",
        "getLinearGradientBlurEffect",
        "()Landroid/graphics/RenderEffect;",
        "setLinearGradientBlurEffect",
        "(Landroid/graphics/RenderEffect;)V",
        "linearGradientBlurEffect",
        "Companion",
        "widgetsliquid_release"
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
.field public static final Companion:Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout$a;

.field public static final OS_MASK_LAYER_POSITION_BOTTOM:I = 0x1

.field public static final OS_MASK_LAYER_POSITION_TOP:I = 0x0

.field public static final OS_MASK_SCENE_DEFAULT:I = 0x0

.field public static final OS_MASK_SCENE_MODEL_PANEL:I = 0x1


# instance fields
.field public b:I

.field public c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:F

.field public final h:Ljava/lang/String;

.field public final i:Landroid/graphics/RuntimeShader;

.field public final j:Landroid/graphics/RuntimeShader;

.field public k:Landroid/graphics/RenderEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->Companion:Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout$a;

    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 5
    iput p3, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->b:I

    const/high16 v0, 0x420c0000    # 35.0f

    .line 6
    iput v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->g:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext()"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/transsion/widgetsliquid/R$raw;->lineargradient_blur:I

    invoke-static {v0, v1}, Lxlb;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->h:Ljava/lang/String;

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-lt v1, v3, :cond_0

    .line 9
    invoke-static {}, Ly87;->a()V

    invoke-static {v0}, Lumb;->a(Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 10
    :goto_0
    iput-object v4, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->i:Landroid/graphics/RuntimeShader;

    if-lt v1, v3, :cond_1

    .line 11
    invoke-static {}, Ly87;->a()V

    invoke-static {v0}, Lumb;->a(Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 12
    :goto_1
    iput-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->j:Landroid/graphics/RuntimeShader;

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 14
    sget-object v4, Lcom/transsion/widgetsliquid/R$styleable;->OSMaskFrameLayout:[I

    const-string v5, "OSMaskFrameLayout"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, p2, v4, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v4, "obtainStyledAttributes(s\u2026efStyleAttr, defStyleRes)"

    invoke-static {p2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget v4, Lcom/transsion/widgetsliquid/R$styleable;->OSMaskFrameLayout_os_mask_color:I

    .line 17
    sget v5, Lcom/transsion/widgetsliquid/R$attr;->os_bg_primary:I

    sget v6, Lcom/transsion/widgetsliquid/R$color;->os_bg_primary_hios:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-static {v5, v6, p1}, Lolb;->l(IILandroid/content/Context;)I

    move-result v5

    .line 18
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 19
    sget v5, Lcom/transsion/widgetsliquid/R$styleable;->OSMaskFrameLayout_os_mask_position:I

    .line 20
    invoke-virtual {p2, v5, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 21
    sget v6, Lcom/transsion/widgetsliquid/R$styleable;->OSMaskFrameLayout_os_mask_layer_position:I

    .line 22
    invoke-virtual {p2, v6, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->b:I

    .line 23
    sget p3, Lcom/transsion/widgetsliquid/R$styleable;->OSMaskFrameLayout_os_mask_blur:I

    iget-boolean v6, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->d:Z

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->d:Z

    if-ge v1, v3, :cond_2

    .line 24
    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->d:Z

    .line 25
    :cond_2
    sget p3, Lcom/transsion/widgetsliquid/R$styleable;->OSMaskFrameLayout_os_mask_adapter_navi:I

    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->e:Z

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->e:Z

    .line 26
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->adapterOn()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/transsion/widgetsliquid/R$dimen;->os_liquid_mask_length_threenav:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_2

    .line 28
    :cond_3
    sget p3, Lcom/transsion/widgetsliquid/R$styleable;->OSMaskFrameLayout_os_mask_length:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetsliquid/R$dimen;->os_liquid_mask_length:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 30
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 31
    :goto_2
    iput p3, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->f:I

    .line 32
    new-instance v1, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    invoke-direct {v1, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    .line 33
    iget-boolean p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->e:Z

    invoke-virtual {v1, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->q(Z)V

    .line 34
    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    const-string v1, "maskDrawable"

    if-nez p1, :cond_4

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4
    iget-boolean v3, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->d:Z

    invoke-virtual {p1, v3}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->x(Z)V

    .line 35
    sget p1, Lcom/transsion/widgetsliquid/R$styleable;->OSMaskFrameLayout_os_mask_scene:I

    .line 36
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 37
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    if-nez v0, :cond_5

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {v0, v4}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->s(I)V

    .line 38
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    if-nez v0, :cond_6

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0, v5}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->u(I)V

    .line 39
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    if-nez v0, :cond_7

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-virtual {v0, p3}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->t(I)V

    .line 40
    iget-object p0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    if-nez p0, :cond_8

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v2, p0

    :goto_3
    invoke-virtual {v2, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->v(I)V

    .line 41
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic setFadeEffect$default(Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;IFILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->setFadeEffect(IF)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setFadeEffect"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    const/4 v1, 0x0

    const-string v2, "maskDrawable"

    if-nez v0, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    if-nez p0, :cond_1

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final adapterOn()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->e:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->a(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final d(Landroid/view/View;Landroid/graphics/RenderEffect;)V
    .locals 2

    :try_start_0
    const-class p0, Landroid/view/View;

    const-string v0, "setBackdropRenderEffectWrapper"

    invoke-static {}, Lv57;->a()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ddd"

    const-string p2, "reflect call setBackdropRenderEffect fail:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->b(Landroid/graphics/Canvas;)V

    :goto_0
    iget-boolean p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->d:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lolb;->o:Z

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->e(II)V

    :cond_1
    return-void
.end method

.method public final e(II)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_d

    sget-object v0, Lxlb;->a:Lxlb;

    invoke-virtual {v0}, Lxlb;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->k:Landroid/graphics/RenderEffect;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->i:Landroid/graphics/RuntimeShader;

    const-string v1, "u_maxRadius"

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->g:F

    invoke-static {v0, v1, v2}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->i:Landroid/graphics/RuntimeShader;

    const-string v2, "u_blurDirection"

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v4, v3}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->i:Landroid/graphics/RuntimeShader;

    const-string v5, "u_gradientStart"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v0, v5, v4, v6}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->i:Landroid/graphics/RuntimeShader;

    const-string v6, "u_gradientEnd"

    if-eqz v0, :cond_3

    invoke-static {v0, v6, v4, v4}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->j:Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_4

    iget v7, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->g:F

    invoke-static {v0, v1, v7}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->j:Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_5

    invoke-static {v0, v2, v3, v4}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->j:Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v5, v4, v1}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->j:Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_7

    invoke-static {v0, v6, v4, v4}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->j:Landroid/graphics/RuntimeShader;

    const-string v1, "u_size"

    if-eqz v0, :cond_8

    int-to-float v2, p1

    mul-float/2addr v2, v3

    int-to-float v4, p2

    mul-float/2addr v4, v3

    invoke-static {v0, v1, v2, v4}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->i:Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_9

    int-to-float p1, p1

    mul-float/2addr p1, v3

    int-to-float p2, p2

    mul-float/2addr p2, v3

    invoke-static {v0, v1, p1, p2}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    :cond_9
    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->i:Landroid/graphics/RuntimeShader;

    const-string p2, "inputImage"

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-static {p1, p2}, Lx87;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object p1

    goto :goto_0

    :cond_a
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->j:Landroid/graphics/RuntimeShader;

    if-eqz v1, :cond_b

    invoke-static {v1, p2}, Lx87;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object p2

    goto :goto_1

    :cond_b
    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    invoke-static {p2, p1}, Lu57;->a(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v0

    :cond_c
    iput-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->k:Landroid/graphics/RenderEffect;

    invoke-virtual {p0, p0, v0}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->d(Landroid/view/View;Landroid/graphics/RenderEffect;)V

    :cond_d
    return-void
.end method

.method public final getLinearGradientBlurEffect()Landroid/graphics/RenderEffect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->k:Landroid/graphics/RenderEffect;

    return-object p0
.end method

.method public final isGestureNavigationBarOn(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "navigation_mode"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final setAdapterNavi(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->e:Z

    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    const/4 v0, 0x0

    const-string v1, "maskDrawable"

    if-nez p1, :cond_1

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-boolean v2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->e:Z

    invoke-virtual {p1, v2}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->q(Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->adapterOn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_liquid_mask_length_threenav:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->f:I

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    if-nez v2, :cond_3

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    invoke-virtual {v0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->t(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setFadeEffect(IF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    if-nez v0, :cond_0

    const-string v0, "maskDrawable"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->r(IF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setLinearGradientBlurEffect(Landroid/graphics/RenderEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->k:Landroid/graphics/RenderEffect;

    return-void
.end method

.method public final setMaskColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    if-nez v0, :cond_0

    const-string v0, "maskDrawable"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->s(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMaskHeight(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->f:I

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    if-nez v0, :cond_0

    const-string v0, "maskDrawable"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->t(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMaskLayerPosition(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->b:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->b:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setMaskPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    if-nez v0, :cond_0

    const-string v0, "maskDrawable"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->u(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMaskVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    if-nez v0, :cond_0

    const-string v0, "maskDrawable"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->w(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setUseBlur(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->d:Z

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->d:Z

    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->c:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const-string p1, "maskDrawable"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->d:Z

    invoke-virtual {p1, v1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->x(Z)V

    iget-boolean p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->d:Z

    if-nez p1, :cond_3

    iput-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->k:Landroid/graphics/RenderEffect;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p1, v1, :cond_4

    invoke-virtual {p0, p0, v0}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->d(Landroid/view/View;Landroid/graphics/RenderEffect;)V

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->k:Landroid/graphics/RenderEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsliquid/effect/OSMaskConstraintLayout;->e(II)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
