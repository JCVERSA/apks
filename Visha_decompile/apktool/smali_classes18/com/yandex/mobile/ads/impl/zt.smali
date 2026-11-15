.class public abstract Lcom/yandex/mobile/ads/impl/zt;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/zt$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/LinearLayout;

.field private C:Lcom/monetization/ads/nativeads/CustomizableMediaView;

.field private D:Landroid/widget/LinearLayout;

.field private E:Lcom/yandex/mobile/ads/impl/rt;

.field private F:Lcom/yandex/mobile/ads/impl/m91;

.field private G:Lcom/yandex/mobile/ads/impl/b91;

.field private H:Lcom/yandex/mobile/ads/impl/c61;

.field private I:Lcom/yandex/mobile/ads/impl/q61;

.field private final J:Lcom/yandex/mobile/ads/impl/zt$b;

.field private final a:Lcom/yandex/mobile/ads/impl/o10;

.field private final b:Lcom/yandex/mobile/ads/impl/au;

.field private final c:Lcom/yandex/mobile/ads/impl/sp1;

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:Lcom/yandex/mobile/ads/impl/fu;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private final m:Landroid/widget/ImageView;

.field private n:Lcom/yandex/mobile/ads/impl/e22;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Lcom/yandex/mobile/ads/impl/pn1;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/fu;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)V
    .locals 13

    .line 1
    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTemplateAppearance"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "varioqubAdapterProvider"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appAdAnalyticsActivator"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x1c0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Lcom/yandex/mobile/ads/impl/zt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/fu;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;Lcom/yandex/mobile/ads/impl/o10;Lcom/yandex/mobile/ads/impl/au;Lcom/yandex/mobile/ads/impl/sp1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/fu;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;Lcom/yandex/mobile/ads/impl/o10;)V
    .locals 13

    .line 2
    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTemplateAppearance"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "varioqubAdapterProvider"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appAdAnalyticsActivator"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dimensionConverter"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x180

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Lcom/yandex/mobile/ads/impl/zt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/fu;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;Lcom/yandex/mobile/ads/impl/o10;Lcom/yandex/mobile/ads/impl/au;Lcom/yandex/mobile/ads/impl/sp1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/fu;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;Lcom/yandex/mobile/ads/impl/o10;Lcom/yandex/mobile/ads/impl/au;)V
    .locals 13

    .line 3
    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTemplateAppearance"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "varioqubAdapterProvider"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appAdAnalyticsActivator"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dimensionConverter"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreNativeBannerViewAdapter"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x100

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Lcom/yandex/mobile/ads/impl/zt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/fu;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;Lcom/yandex/mobile/ads/impl/o10;Lcom/yandex/mobile/ads/impl/au;Lcom/yandex/mobile/ads/impl/sp1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/fu;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;Lcom/yandex/mobile/ads/impl/o10;Lcom/yandex/mobile/ads/impl/au;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTemplateAppearance"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "varioqubAdapterProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "appAdAnalyticsActivator"

    invoke-static {p6, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "dimensionConverter"

    invoke-static {p7, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "coreNativeBannerViewAdapter"

    invoke-static {p8, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "reporter"

    invoke-static {p9, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    .line 7
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/zt;->b:Lcom/yandex/mobile/ads/impl/au;

    .line 8
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/zt;->c:Lcom/yandex/mobile/ads/impl/sp1;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p1, p3}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/zt;->d:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p3, 0x41000000    # 8.0f

    invoke-static {p1, p3}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/zt;->e:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/zt;->f:I

    .line 12
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    .line 13
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/zt;->c()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zt;->m:Landroid/widget/ImageView;

    .line 14
    new-instance p1, Lcom/yandex/mobile/ads/impl/zt$b;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/zt$b;-><init>(Lcom/yandex/mobile/ads/impl/zt;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zt;->J:Lcom/yandex/mobile/ads/impl/zt$b;

    .line 15
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/zt;->b()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/fu;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;Lcom/yandex/mobile/ads/impl/o10;Lcom/yandex/mobile/ads/impl/au;Lcom/yandex/mobile/ads/impl/sp1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    .line 16
    new-instance v1, Lcom/yandex/mobile/ads/impl/o10;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/o10;-><init>()V

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    .line 17
    new-instance v1, Lcom/yandex/mobile/ads/impl/au;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/au;-><init>()V

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    move-object v0, p1

    move-object/from16 v1, p5

    move-object/from16 v8, p6

    .line 18
    invoke-static {p1, v1, v8}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object v0, p1

    move-object/from16 v1, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p9

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 19
    invoke-direct/range {v2 .. v11}, Lcom/yandex/mobile/ads/impl/zt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/fu;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;Lcom/yandex/mobile/ads/impl/o10;Lcom/yandex/mobile/ads/impl/au;Lcom/yandex/mobile/ads/impl/sp1;)V

    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/la1;)Lcom/yandex/mobile/ads/impl/ij0;
    .locals 2

    .line 123
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/la1;->getSizeConstraintType()Lcom/yandex/mobile/ads/impl/la1$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/la1$b;->getType()Lcom/yandex/mobile/ads/impl/la1$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/zt$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 124
    new-instance v0, Lcom/yandex/mobile/ads/impl/ij0$c;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/la1;->getValue()F

    move-result p0

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ij0$c;-><init>(F)V

    goto :goto_1

    .line 125
    :cond_1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ij0$c;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/la1;->getValue()F

    move-result p0

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ij0$c;-><init>(F)V

    goto :goto_1

    .line 126
    :cond_2
    new-instance v0, Lcom/yandex/mobile/ads/impl/ij0$b;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/la1;->getValue()F

    move-result p0

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ij0$b;-><init>(F)V

    goto :goto_1

    .line 127
    :cond_3
    new-instance v0, Lcom/yandex/mobile/ads/impl/ij0$a;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/la1;->getValue()F

    move-result p0

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ij0$a;-><init>(F)V

    :goto_1
    return-object v0
.end method

.method private final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/fu;->getBannerAppearance()Lcom/yandex/mobile/ads/impl/ga1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ga1;->getBorderWidth()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v0

    .line 3
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 4
    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 5
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 6
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/fu;->getBannerAppearance()Lcom/yandex/mobile/ads/impl/ga1;

    move-result-object v4

    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/ga1;->getBackgroundColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 9
    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 10
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 11
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v5}, Lcom/yandex/mobile/ads/impl/fu;->getBannerAppearance()Lcom/yandex/mobile/ads/impl/ga1;

    move-result-object v5

    invoke-interface {v5}, Lcom/yandex/mobile/ads/impl/ga1;->getBorderColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    .line 12
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x2

    .line 14
    new-array v6, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    .line 15
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/fu;->getBannerAppearance()Lcom/yandex/mobile/ads/impl/ga1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ga1;->getContentPadding()Lcom/yandex/mobile/ads/impl/ia1;

    move-result-object v0

    const/4 v2, -0x2

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    .line 19
    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ia1;->getLeft()F

    move-result v11

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v9

    .line 20
    iget-object v10, p0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ia1;->getRight()F

    move-result v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v0}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v0

    .line 21
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 22
    iget v11, p0, Lcom/yandex/mobile/ads/impl/zt;->e:I

    iget v12, p0, Lcom/yandex/mobile/ads/impl/zt;->d:I

    invoke-virtual {v10, v9, v11, v0, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 23
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->x:Landroid/widget/LinearLayout;

    const-string v9, "topContainer"

    if-nez v0, :cond_0

    invoke-static {v9}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v8

    :cond_0
    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->x:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    invoke-static {v9}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v8

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/fu;->getBannerAppearance()Lcom/yandex/mobile/ads/impl/ga1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ga1;->getContentPadding()Lcom/yandex/mobile/ads/impl/ia1;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 26
    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ia1;->getLeft()F

    move-result v11

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v9

    .line 27
    iget-object v10, p0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ia1;->getRight()F

    move-result v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v0}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v0

    .line 28
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 29
    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 30
    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 31
    iget v0, p0, Lcom/yandex/mobile/ads/impl/zt;->d:I

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 32
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    const-string v2, "centerContainer"

    if-nez v0, :cond_3

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v8

    :cond_3
    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v8

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 34
    :cond_5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/fu;->getBannerAppearance()Lcom/yandex/mobile/ads/impl/ga1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ga1;->getContentPadding()Lcom/yandex/mobile/ads/impl/ia1;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 35
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ia1;->getLeft()F

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v9}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v2

    .line 36
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ia1;->getRight()F

    move-result v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v0}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v0

    .line 37
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getWarningView()Landroid/widget/TextView;

    move-result-object v6

    iget v9, p0, Lcom/yandex/mobile/ads/impl/zt;->d:I

    invoke-virtual {v6, v2, v9, v0, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 38
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getWarningView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 39
    :cond_6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/fu;->getCallToActionAppearance()Lcom/yandex/mobile/ads/impl/ha1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ha1;->getTextAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ma1;->getTextColor()I

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getCallToActionView()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    :cond_7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/fu;->getCallToActionAppearance()Lcom/yandex/mobile/ads/impl/ha1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ha1;->getTextAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 42
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getCallToActionView()Landroid/widget/Button;

    move-result-object v2

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ma1;->getTextSize()F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getCallToActionView()Landroid/widget/Button;

    move-result-object v2

    .line 44
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v6}, Lcom/yandex/mobile/ads/impl/fu;->getCallToActionAppearance()Lcom/yandex/mobile/ads/impl/ha1;

    move-result-object v6

    invoke-interface {v6}, Lcom/yandex/mobile/ads/impl/ha1;->getTextAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface {v6}, Lcom/yandex/mobile/ads/impl/ma1;->getFontFamilyName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_8
    move-object v6, v8

    :goto_0
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ma1;->getFontStyle()I

    move-result v0

    .line 45
    invoke-static {v6, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    :cond_9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0x8

    .line 47
    new-array v2, v2, [F

    .line 48
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 49
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, v2, v8, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 50
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 51
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v9}, Lcom/yandex/mobile/ads/impl/fu;->getCallToActionAppearance()Lcom/yandex/mobile/ads/impl/ha1;

    move-result-object v9

    invoke-interface {v9}, Lcom/yandex/mobile/ads/impl/ha1;->getPressedColor()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 53
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    iget-object v10, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v10}, Lcom/yandex/mobile/ads/impl/fu;->getCallToActionAppearance()Lcom/yandex/mobile/ads/impl/ha1;

    move-result-object v10

    invoke-interface {v10}, Lcom/yandex/mobile/ads/impl/ha1;->getNormalColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v10, 0x10100a1

    .line 55
    filled-new-array {v10}, [I

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v10, 0x10100a7

    .line 56
    filled-new-array {v10}, [I

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 57
    new-array v2, v7, [I

    invoke-virtual {v9, v2, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/fu;->getCallToActionAppearance()Lcom/yandex/mobile/ads/impl/ha1;

    move-result-object v3

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/ha1;->getBorderWidth()F

    move-result v3

    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v3}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v2

    .line 62
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 63
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 64
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 65
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v6}, Lcom/yandex/mobile/ads/impl/fu;->getCallToActionAppearance()Lcom/yandex/mobile/ads/impl/ha1;

    move-result-object v6

    invoke-interface {v6}, Lcom/yandex/mobile/ads/impl/ha1;->getBorderColor()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v2

    .line 66
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v0, v7

    aput-object v3, v0, v1

    .line 69
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getCallToActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->r:Lcom/yandex/mobile/ads/impl/pn1;

    if-nez v0, :cond_a

    const-string v0, "_ratingView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v8

    :cond_a
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 72
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/fu;->getRatingAppearance()Lcom/yandex/mobile/ads/impl/ka1;

    move-result-object v3

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/ka1;->getProgressStarColor()I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 74
    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/fu;->getRatingAppearance()Lcom/yandex/mobile/ads/impl/ka1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/ka1;->getBackgroundStarColor()I

    move-result v2

    .line 77
    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getRatingAppearance()Lcom/yandex/mobile/ads/impl/ka1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ka1;->getBackgroundStarColor()I

    move-result v1

    .line 80
    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getAgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getAgeAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/fu;->getAgeAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/ma1;->getFontStyle()I

    move-result v2

    .line 83
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getAgeView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getAgeAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getAgeView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getAgeAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getBodyView()Landroid/widget/TextView;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getBodyAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/fu;->getBodyAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/ma1;->getFontStyle()I

    move-result v2

    .line 88
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getBodyView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getBodyAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getBodyView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getBodyAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getDomainView()Landroid/widget/TextView;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getDomainAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/fu;->getDomainAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/ma1;->getFontStyle()I

    move-result v2

    .line 93
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getDomainView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getDomainAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getDomainView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getDomainAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getReviewCountView()Landroid/widget/TextView;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getReviewCountAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/fu;->getReviewCountAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/ma1;->getFontStyle()I

    move-result v2

    .line 99
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getReviewCountView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getReviewCountAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getReviewCountView()Landroid/widget/TextView;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getReviewCountAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextSize()F

    move-result v1

    .line 103
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->n:Lcom/yandex/mobile/ads/impl/e22;

    const-string v1, "_sponsoredView"

    if-nez v0, :cond_b

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v8

    .line 105
    :cond_b
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/fu;->getSponsoredAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/ma1;->getFontFamilyName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/fu;->getSponsoredAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v3

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/ma1;->getFontStyle()I

    move-result v3

    .line 106
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->n:Lcom/yandex/mobile/ads/impl/e22;

    if-nez v0, :cond_c

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v8

    :cond_c
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/fu;->getSponsoredAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/ma1;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->n:Lcom/yandex/mobile/ads/impl/e22;

    if-nez v0, :cond_d

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    move-object v8, v0

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/fu;->getSponsoredAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ma1;->getTextSize()F

    move-result v0

    .line 110
    invoke-virtual {v8, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getTitleAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/fu;->getTitleAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/ma1;->getFontStyle()I

    move-result v2

    .line 113
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getTitleAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getTitleAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 116
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getWarningView()Landroid/widget/TextView;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getWarningAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/fu;->getWarningAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/ma1;->getFontStyle()I

    move-result v2

    .line 118
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getWarningView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getWarningAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getWarningView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getWarningAppearance()Lcom/yandex/mobile/ads/impl/ma1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ma1;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static final synthetic access$getNativeAd$p(Lcom/yandex/mobile/ads/impl/zt;)Lcom/yandex/mobile/ads/impl/q61;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->I:Lcom/yandex/mobile/ads/impl/q61;

    return-object p0
.end method

.method public static final synthetic access$getNativeAdImagesAnimator$p(Lcom/yandex/mobile/ads/impl/zt;)Lcom/yandex/mobile/ads/impl/c61;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->H:Lcom/yandex/mobile/ads/impl/c61;

    return-object p0
.end method

.method private final b()V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->c()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/zt;->u:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->x:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->x:Landroid/widget/LinearLayout;

    const-string v5, "topContainer"

    if-nez v3, :cond_0

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->x:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1
    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v4, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, -0x2

    invoke-direct {v11, v4, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lcom/yandex/mobile/ads/impl/e22;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v14, "getContext(...)"

    invoke-static {v12, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lcom/yandex/mobile/ads/impl/e22;-><init>(Landroid/content/Context;)V

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v8}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v11, v4, v4, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v11, v0, Lcom/yandex/mobile/ads/impl/zt;->n:Lcom/yandex/mobile/ads/impl/e22;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v13, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    const v8, 0x800003

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v8, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v11, v0, Lcom/yandex/mobile/ads/impl/zt;->d:I

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v7, v0, Lcom/yandex/mobile/ads/impl/zt;->h:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getAgeView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/zt;->x:Landroid/widget/LinearLayout;

    if-nez v7, :cond_2

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_2
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zt;->x:Landroid/widget/LinearLayout;

    if-nez v6, :cond_3

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_3
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zt;->x:Landroid/widget/LinearLayout;

    if-nez v6, :cond_4

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_4
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->x:Landroid/widget/LinearLayout;

    if-nez v3, :cond_5

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_5
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    const-string v6, "centerContainer"

    if-nez v5, :cond_6

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_6
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v7, v0, Lcom/yandex/mobile/ads/impl/zt;->d:I

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->c()Landroid/widget/ImageView;

    move-result-object v5

    iput-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->q:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->t:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getIconView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->m:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getFaviconView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->o:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->i:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->k:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getTitleView()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getBodyView()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getDomainView()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v11, v0, Lcom/yandex/mobile/ads/impl/zt;->e:I

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    const-string v15, "callToActionContainer"

    if-nez v11, :cond_7

    invoke-static {v15}, Ly45;->B(Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_7
    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lcom/yandex/mobile/ads/impl/pn1;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x101007d

    const/4 v2, 0x0

    invoke-direct {v11, v10, v2, v4}, Lcom/yandex/mobile/ads/impl/pn1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Landroid/widget/RatingBar;->setNumStars(I)V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v11, v4}, Landroid/widget/RatingBar;->setStepSize(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v10, v0, Lcom/yandex/mobile/ads/impl/zt;->e:I

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v11, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v11, v0, Lcom/yandex/mobile/ads/impl/zt;->r:Lcom/yandex/mobile/ads/impl/pn1;

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/zt;->s:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/zt;->r:Lcom/yandex/mobile/ads/impl/pn1;

    if-nez v4, :cond_8

    const-string v4, "_ratingView"

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_8
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getReviewCountView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v2, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x101032b

    const/4 v13, 0x0

    invoke-direct {v2, v10, v13, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v10, 0x41d00000    # 26.0f

    invoke-static {v11, v10}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setMinHeight(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/zt;->j:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getCallToActionView()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v2, :cond_9

    invoke-static {v15}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v13

    :cond_9
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v2, :cond_a

    invoke-static {v15}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v13

    :cond_a
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v2, :cond_b

    invoke-static {v15}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v13

    :cond_b
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    if-nez v2, :cond_c

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v13

    :cond_c
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    if-nez v2, :cond_d

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v13

    :cond_d
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    if-nez v2, :cond_e

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v13

    :cond_e
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/zt;->B:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/zt;->A:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/zt;->B:Landroid/widget/LinearLayout;

    const-string v5, "largeImageContainer"

    if-nez v4, :cond_f

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v4, v13

    :cond_f
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zt;->A:Landroid/widget/ImageView;

    const-string v7, "largeImageView"

    if-nez v6, :cond_10

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v13

    :cond_10
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/zt;->B:Landroid/widget/LinearLayout;

    if-nez v4, :cond_11

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v4, v13

    :cond_11
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->D:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/monetization/ads/nativeads/CustomizableMediaView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->C:Lcom/monetization/ads/nativeads/CustomizableMediaView;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->D:Landroid/widget/LinearLayout;

    const-string v6, "mediaContainer"

    if-nez v5, :cond_12

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v13

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getMediaView()Lcom/monetization/ads/nativeads/CustomizableMediaView;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->D:Landroid/widget/LinearLayout;

    if-nez v5, :cond_13

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v13

    :cond_13
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/zt;->p:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getWarningView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/zt;->v:Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/fu;->getBannerAppearance()Lcom/yandex/mobile/ads/impl/ga1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ga1;->getContentPadding()Lcom/yandex/mobile/ads/impl/ia1;

    move-result-object v1

    const-string v2, "feedbackContainer"

    if-eqz v1, :cond_16

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ia1;->getRight()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v1}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v1

    iget v3, v0, Lcom/yandex/mobile/ads/impl/zt;->e:I

    sub-int/2addr v1, v3

    new-instance v3, Lcom/yandex/mobile/ads/impl/db0;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/yandex/mobile/ads/impl/db0;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/va0;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/yandex/mobile/ads/impl/va0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/va0;->a()Landroid/widget/FrameLayout;

    move-result-object v4

    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/zt;->w:Landroid/widget/FrameLayout;

    iget v4, v0, Lcom/yandex/mobile/ads/impl/zt;->d:I

    invoke-virtual {v3, v1, v4}, Lcom/yandex/mobile/ads/impl/db0;->a(II)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/zt;->l:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zt;->w:Landroid/widget/FrameLayout;

    if-nez v1, :cond_14

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v13

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getFeedbackView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zt;->w:Landroid/widget/FrameLayout;

    if-nez v1, :cond_15

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v13

    :cond_15
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zt;->u:Landroid/widget/ImageView;

    const-string v3, "adFoxView"

    if-nez v1, :cond_17

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v13

    :cond_17
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zt;->v:Landroid/widget/LinearLayout;

    if-nez v1, :cond_18

    const-string v1, "mainContainer"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v13

    :cond_18
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zt;->w:Landroid/widget/FrameLayout;

    if-nez v1, :cond_19

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v13

    goto :goto_0

    :cond_19
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->hideContent()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/c61;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getFaviconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->m:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zt;->A:Landroid/widget/ImageView;

    if-nez v6, :cond_1a

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v13

    :cond_1a
    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/zt;->u:Landroid/widget/ImageView;

    if-nez v7, :cond_1b

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v7, v13

    :cond_1b
    filled-new-array {v2, v4, v5, v6, v7}, [Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/c61;-><init>([Landroid/widget/ImageView;)V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/zt;->H:Lcom/yandex/mobile/ads/impl/c61;

    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->a()V

    return-void
.end method

.method private final c()Landroid/widget/ImageView;
    .locals 1

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method


# virtual methods
.method public final applyAppearance(Lcom/yandex/mobile/ads/impl/fu;)V
    .locals 1

    const-string v0, "templateAppearance"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/zt;->a()V

    :cond_0
    return-void
.end method

.method public final getAgeView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->h:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "ageView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBodyView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->i:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "bodyView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCallToActionView()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->j:Landroid/widget/Button;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "callToActionView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDomainView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->k:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "domainView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFaviconView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->t:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "faviconView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFeedbackView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->l:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "feedbackView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIconView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->q:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "iconView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->G:Lcom/yandex/mobile/ads/impl/b91;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->E:Lcom/yandex/mobile/ads/impl/rt;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "image"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tt;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fill"

    invoke-static {v3, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->u:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string p0, "adFoxView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    :goto_0
    move-object v0, v3

    goto :goto_1

    :cond_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/b91;->a(Lcom/yandex/mobile/ads/impl/tt;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->A:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string p0, "largeImageView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final getMediaView()Lcom/monetization/ads/nativeads/CustomizableMediaView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->C:Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mediaView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRatingView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->r:Lcom/yandex/mobile/ads/impl/pn1;

    if-nez p0, :cond_0

    const-string p0, "_ratingView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getReviewCountView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->s:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "reviewCountView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSponsoredView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->n:Lcom/yandex/mobile/ads/impl/e22;

    if-nez p0, :cond_0

    const-string p0, "_sponsoredView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->o:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "titleView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWarningView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->p:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "warningView"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hideContent()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->u:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adFoxView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->v:Landroid/widget/LinearLayout;

    if-nez p0, :cond_1

    const-string p0, "mainContainer"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->I:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->J:Lcom/yandex/mobile/ads/impl/zt$b;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/q61;->b(Lcom/yandex/mobile/ads/impl/ut;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->I:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->J:Lcom/yandex/mobile/ads/impl/zt$b;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/q61;->a(Lcom/yandex/mobile/ads/impl/ut;)V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/fu;->getBannerAppearance()Lcom/yandex/mobile/ads/impl/ga1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/ga1;->getBorderWidth()F

    move-result v2

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-gez v1, :cond_0

    move v1, v2

    :cond_0
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->G:Lcom/yandex/mobile/ads/impl/b91;

    const/4 v4, 0x1

    if-eqz v3, :cond_14

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v7}, Lcom/yandex/mobile/ads/impl/fu;->getBannerAppearance()Lcom/yandex/mobile/ads/impl/ga1;

    move-result-object v7

    invoke-interface {v7}, Lcom/yandex/mobile/ads/impl/ga1;->getContentPadding()Lcom/yandex/mobile/ads/impl/ia1;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-static {v8}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/yandex/mobile/ads/impl/ia1;->getLeft()F

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v10}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-interface {v7}, Lcom/yandex/mobile/ads/impl/ia1;->getRight()F

    move-result v7

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "context"

    invoke-static {v8, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v4, v7, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    invoke-static {v7}, Ls86;->c(F)I

    move-result v7

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v11}, Lcom/yandex/mobile/ads/impl/fu;->getBannerAppearance()Lcom/yandex/mobile/ads/impl/ga1;

    move-result-object v11

    invoke-interface {v11}, Lcom/yandex/mobile/ads/impl/ga1;->getImageMargins()Lcom/yandex/mobile/ads/impl/ia1;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/b91;->a()Z

    move-result v12

    const-string v13, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    const-string v14, "centerContainer"

    if-nez v12, :cond_4

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/b91;->b()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/b91;->e()Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getFaviconView()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getIconView()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/zt;->m:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    if-nez v7, :cond_2

    invoke-static {v14}, Ly45;->B(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v7, v13}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    if-nez v8, :cond_3

    invoke-static {v14}, Ly45;->B(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_3
    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_4
    :goto_0
    sub-int v12, v1, v9

    sub-int/2addr v12, v7

    int-to-float v7, v12

    invoke-static {v7}, Ls86;->c(F)I

    move-result v7

    invoke-interface {v11}, Lcom/yandex/mobile/ads/impl/ia1;->getLeft()F

    move-result v12

    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v12}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    int-to-float v9, v9

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v4, v9, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    invoke-static {v8}, Ls86;->c(F)I

    move-result v8

    add-int/2addr v8, v6

    invoke-interface {v11}, Lcom/yandex/mobile/ads/impl/ia1;->getRight()F

    move-result v6

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v6}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v6

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/b91;->a()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/zt;->E:Lcom/yandex/mobile/ads/impl/rt;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/rt;->e()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/tt;->d()I

    move-result v11

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/tt;->b()I

    move-result v10

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v12}, Lcom/yandex/mobile/ads/impl/fu;->getFaviconAppearance()Lcom/yandex/mobile/ads/impl/ja1;

    move-result-object v12

    invoke-interface {v12}, Lcom/yandex/mobile/ads/impl/ja1;->getWidthConstraint()Lcom/yandex/mobile/ads/impl/la1;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-static {v12}, Lcom/yandex/mobile/ads/impl/zt;->a(Lcom/yandex/mobile/ads/impl/la1;)Lcom/yandex/mobile/ads/impl/ij0;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v12, v7, v11, v10}, Lcom/yandex/mobile/ads/impl/ij0;->a(Landroid/content/Context;III)Lcom/yandex/mobile/ads/impl/ij0$d;

    move-result-object v9

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v11, v10}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v10

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/ij0$d;->b()I

    move-result v12

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/ij0$d;->a()I

    move-result v9

    invoke-direct {v11, v12, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v8, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v10, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move-object v9, v11

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getFaviconView()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/b91;->b()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/zt;->E:Lcom/yandex/mobile/ads/impl/rt;

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/rt;->g()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v10

    if-eqz v10, :cond_6

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v11}, Lcom/yandex/mobile/ads/impl/fu;->getImageAppearance()Lcom/yandex/mobile/ads/impl/ja1;

    move-result-object v11

    invoke-interface {v11}, Lcom/yandex/mobile/ads/impl/ja1;->getWidthConstraint()Lcom/yandex/mobile/ads/impl/la1;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/tt;->d()I

    move-result v9

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/tt;->b()I

    move-result v10

    invoke-static {v11}, Lcom/yandex/mobile/ads/impl/zt;->a(Lcom/yandex/mobile/ads/impl/la1;)Lcom/yandex/mobile/ads/impl/ij0;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v7, v9, v10}, Lcom/yandex/mobile/ads/impl/ij0;->a(Landroid/content/Context;III)Lcom/yandex/mobile/ads/impl/ij0$d;

    move-result-object v9

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/ij0$d;->b()I

    move-result v11

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/ij0$d;->a()I

    move-result v9

    invoke-direct {v10, v11, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move-object v9, v10

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getIconView()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/b91;->e()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/zt;->E:Lcom/yandex/mobile/ads/impl/rt;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v10

    if-eqz v10, :cond_7

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v11}, Lcom/yandex/mobile/ads/impl/fu;->getImageAppearance()Lcom/yandex/mobile/ads/impl/ja1;

    move-result-object v11

    invoke-interface {v11}, Lcom/yandex/mobile/ads/impl/ja1;->getWidthConstraint()Lcom/yandex/mobile/ads/impl/la1;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/tt;->d()I

    move-result v9

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/tt;->b()I

    move-result v10

    invoke-static {v11}, Lcom/yandex/mobile/ads/impl/zt;->a(Lcom/yandex/mobile/ads/impl/la1;)Lcom/yandex/mobile/ads/impl/ij0;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v7, v9, v10}, Lcom/yandex/mobile/ads/impl/ij0;->a(Landroid/content/Context;III)Lcom/yandex/mobile/ads/impl/ij0$d;

    move-result-object v7

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ij0$d;->b()I

    move-result v10

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ij0$d;->a()I

    move-result v7

    invoke-direct {v9, v10, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_7
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zt;->m:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    if-nez v6, :cond_8

    invoke-static {v14}, Ly45;->B(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v13}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    if-nez v7, :cond_9

    invoke-static {v14}, Ly45;->B(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_9
    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_1
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/b91;->c()Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->E:Lcom/yandex/mobile/ads/impl/rt;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/tt;->d()I

    move-result v6

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/tt;->b()I

    move-result v7

    const-string v8, "image"

    invoke-static {v3, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/tt;->d()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/tt;->b()I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    cmpg-float v12, v10, v11

    if-nez v12, :cond_b

    goto :goto_2

    :cond_b
    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_c

    int-to-float v9, v1

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ls86;->c(F)I

    move-result v9

    int-to-float v10, v9

    int-to-float v7, v7

    div-float/2addr v10, v7

    int-to-float v6, v6

    mul-float/2addr v10, v6

    invoke-static {v10}, Ls86;->c(F)I

    move-result v6

    goto :goto_3

    :cond_c
    :goto_2
    if-eqz v6, :cond_d

    int-to-float v9, v1

    int-to-float v6, v6

    div-float/2addr v9, v6

    int-to-float v6, v7

    mul-float/2addr v6, v9

    invoke-static {v6}, Ls86;->c(F)I

    move-result v7

    :cond_d
    move v6, v1

    move v9, v7

    :goto_3
    invoke-static {v3, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/tt;->d()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/tt;->b()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v8, v3, v11

    if-nez v8, :cond_e

    goto :goto_4

    :cond_e
    div-float/2addr v7, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    cmpl-float v3, v7, v3

    if-lez v3, :cond_f

    goto :goto_5

    :cond_f
    :goto_4
    int-to-float v3, v9

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v7

    invoke-static {v3}, Ls86;->c(F)I

    move-result v9

    :goto_5
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zt;->F:Lcom/yandex/mobile/ads/impl/m91;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/m91;->a()Z

    move-result v6

    if-ne v6, v4, :cond_10

    goto :goto_6

    :cond_10
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zt;->F:Lcom/yandex/mobile/ads/impl/m91;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/m91;->e()Z

    move-result v6

    if-ne v6, v4, :cond_11

    :goto_6
    iget v6, v0, Lcom/yandex/mobile/ads/impl/zt;->d:I

    goto :goto_7

    :cond_11
    move v6, v2

    :goto_7
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object v6, v3

    :cond_12
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->B:Landroid/widget/LinearLayout;

    if-nez v3, :cond_13

    const-string v3, "largeImageContainer"

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_13
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->G:Lcom/yandex/mobile/ads/impl/b91;

    if-eqz v3, :cond_18

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/zt;->E:Lcom/yandex/mobile/ads/impl/rt;

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/rt;->i()Lcom/yandex/mobile/ads/impl/xt;

    move-result-object v7

    goto :goto_8

    :cond_15
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_16

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/b91;->d()Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Lcom/yandex/mobile/ads/impl/gg;

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/xt;->a()F

    move-result v6

    invoke-direct {v3, v6}, Lcom/yandex/mobile/ads/impl/gg;-><init>(F)V

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/impl/gg;->a(I)I

    move-result v3

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_16
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->D:Landroid/widget/LinearLayout;

    if-nez v3, :cond_17

    const-string v3, "mediaContainer"

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_17
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->F:Lcom/yandex/mobile/ads/impl/m91;

    const/4 v6, -0x1

    const/4 v7, -0x2

    const-string v8, "callToActionContainer"

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/m91;->f()Z

    move-result v3

    if-ne v3, v4, :cond_28

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->F:Lcom/yandex/mobile/ads/impl/m91;

    const-string v9, "null cannot be cast to non-null type android.view.ViewManager"

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/m91;->h()Z

    move-result v3

    if-ne v3, v4, :cond_21

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v3, :cond_19

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_19
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-static {v3, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewManager;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v9, :cond_1a

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_1a
    invoke-interface {v3, v9}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->F:Lcom/yandex/mobile/ads/impl/m91;

    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/m91;->c()Z

    move-result v9

    if-ne v9, v4, :cond_1b

    iget v9, v0, Lcom/yandex/mobile/ads/impl/zt;->f:I

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_9

    :cond_1b
    iget v9, v0, Lcom/yandex/mobile/ads/impl/zt;->d:I

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_9
    iget v9, v0, Lcom/yandex/mobile/ads/impl/zt;->e:I

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v9, :cond_1c

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_1c
    invoke-virtual {v9, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->g:Lcom/yandex/mobile/ads/impl/fu;

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/fu;->getBannerAppearance()Lcom/yandex/mobile/ads/impl/ga1;

    move-result-object v3

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/ga1;->getContentPadding()Lcom/yandex/mobile/ads/impl/ia1;

    move-result-object v3

    if-eqz v3, :cond_26

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/ia1;->getLeft()F

    move-result v11

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/zt;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/ia1;->getRight()F

    move-result v3

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v3}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1d

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_1d
    invoke-virtual {v5, v9, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->v:Landroid/widget/LinearLayout;

    const-string v5, "mainContainer"

    if-nez v3, :cond_1e

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1e
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v9, :cond_1f

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_1f
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/zt;->v:Landroid/widget/LinearLayout;

    if-nez v8, :cond_20

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/16 v16, 0x0

    goto :goto_a

    :cond_20
    move-object/from16 v16, v8

    :goto_a
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_b

    :cond_21
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v3, :cond_22

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_22
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-static {v3, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewManager;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v5, :cond_23

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_23
    invoke-interface {v3, v5}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v3, :cond_24

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_24
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, v0, Lcom/yandex/mobile/ads/impl/zt;->e:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getDomainView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-static {v5, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/ViewManager;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v9, :cond_25

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_25
    invoke-interface {v5, v9, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_26
    :goto_b
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->F:Lcom/yandex/mobile/ads/impl/m91;

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/m91;->g()Z

    move-result v3

    if-ne v3, v4, :cond_27

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_c

    :cond_27
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getCallToActionView()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_28
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->z:Landroid/widget/LinearLayout;

    if-nez v3, :cond_29

    invoke-static {v8}, Ly45;->B(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_29
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_d
    int-to-float v1, v1

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ls86;->c(F)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getCallToActionView()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getCallToActionView()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zt;->F:Lcom/yandex/mobile/ads/impl/m91;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/m91;->i()Z

    move-result v1

    if-ne v1, v4, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getWarningView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zt;->F:Lcom/yandex/mobile/ads/impl/m91;

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/m91;->j()Z

    move-result v3

    if-ne v3, v4, :cond_2a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_e

    :cond_2a
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    const/high16 v3, 0x42b80000    # 92.0f

    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/wh2;->a(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_e
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/zt;->getWarningView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setAd(Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 5

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->I:Lcom/yandex/mobile/ads/impl/q61;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->J:Lcom/yandex/mobile/ads/impl/zt$b;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/q61;->a(Lcom/yandex/mobile/ads/impl/ut;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->J:Lcom/yandex/mobile/ads/impl/zt$b;

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/q61;->b(Lcom/yandex/mobile/ads/impl/ut;)V

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/q61;->getAdType()Lcom/yandex/mobile/ads/impl/gr1;

    move-result-object v0

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/q61;->getAdAssets()Lcom/yandex/mobile/ads/impl/rt;

    move-result-object v1

    new-instance v2, Lcom/yandex/mobile/ads/impl/m91;

    invoke-direct {v2, v1, v0}, Lcom/yandex/mobile/ads/impl/m91;-><init>(Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/gr1;)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->F:Lcom/yandex/mobile/ads/impl/m91;

    new-instance v2, Lcom/yandex/mobile/ads/impl/b91;

    invoke-direct {v2, v1, v0}, Lcom/yandex/mobile/ads/impl/b91;-><init>(Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/gr1;)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->G:Lcom/yandex/mobile/ads/impl/b91;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/zt;->E:Lcom/yandex/mobile/ads/impl/rt;

    new-instance v0, Lcom/yandex/mobile/ads/impl/ra0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/sa0;

    new-instance v4, Lcom/yandex/mobile/ads/impl/li;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/li;-><init>()V

    invoke-direct {v3, v1, v4}, Lcom/yandex/mobile/ads/impl/sa0;-><init>(Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/li;)V

    invoke-direct {v0, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/ra0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/sa0;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getFeedbackView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zt;->w:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    const-string v2, "feedbackContainer"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    iget v3, p0, Lcom/yandex/mobile/ads/impl/zt;->f:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ra0;->a(Landroid/widget/ImageView;Landroid/widget/FrameLayout;I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->b:Lcom/yandex/mobile/ads/impl/au;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/au;->a(Lcom/yandex/mobile/ads/impl/zt;)Lcom/yandex/mobile/ads/impl/k71;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/q61;->b(Lcom/yandex/mobile/ads/impl/k71;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->showContent()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zt;->I:Lcom/yandex/mobile/ads/impl/q61;
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/e61; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->c:Lcom/yandex/mobile/ads/impl/sp1;

    const-string v0, "Failed to set Native Ad"

    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final showContent()V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->E:Lcom/yandex/mobile/ads/impl/rt;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/zt;->G:Lcom/yandex/mobile/ads/impl/b91;

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    const-string v3, "image"

    invoke-static {v0, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tt;->c()Ljava/lang/String;

    move-result-object v3

    const-string v6, "fill"

    invoke-static {v6, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/zt;->u:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    const-string v3, "adFoxView"

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v1

    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move v2, v5

    :cond_1
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/zt;->G:Lcom/yandex/mobile/ads/impl/b91;

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/b91;->a(Lcom/yandex/mobile/ads/impl/tt;)Z

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->F:Lcom/yandex/mobile/ads/impl/m91;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m91;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->y:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    const-string v0, "centerContainer"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->F:Lcom/yandex/mobile/ads/impl/m91;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m91;->e()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt;->x:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    const-string v0, "topContainer"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt;->v:Landroid/widget/LinearLayout;

    if-nez p0, :cond_6

    const-string p0, "mainContainer"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
