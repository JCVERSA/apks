.class public Lcom/transsion/widgetthemes/drawable/OSShadowDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/ShapeDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget p2, Lcom/transsion/widgetsThemes/R$dimen;->os_popup_menu_bg_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2, p3, p2}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    const/16 p2, 0x8

    new-array v0, p2, [F

    sget v1, Lcom/transsion/widgetsThemes/R$dimen;->os_popup_menu_bg_radius:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    new-array p2, p2, [F

    invoke-direct {v1, v0, v2, p2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/transsion/widgetthemes/util/Utils;->mOsType:[Ljava/lang/String;

    aget-object p3, v0, p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    sget v0, Lcom/transsion/widgetsThemes/R$color;->os_altitude_secondary_color:I

    invoke-virtual {p1, v0, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/widgetsThemes/R$color;->os_shadow_color_level3_hios:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/widgetsThemes/R$color;->os_shadow_color_level3_xos:I

    :goto_0
    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    sget p3, Lcom/transsion/widgetsThemes/R$dimen;->os_shadow_dy_level3:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    sget p4, Lcom/transsion/widgetsThemes/R$dimen;->os_shadow_radius_level3:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    int-to-float p1, p1

    const/4 p4, 0x0

    int-to-float p3, p3

    invoke-virtual {p0, p1, p4, p3, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public setDefaultShadow()V
    .locals 4

    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    const/16 v0, 0x8

    new-array v1, v0, [F

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    new-array v0, v0, [F

    invoke-direct {v2, v1, v3, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-string v0, "#10000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0x18

    int-to-float v2, v2

    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method
