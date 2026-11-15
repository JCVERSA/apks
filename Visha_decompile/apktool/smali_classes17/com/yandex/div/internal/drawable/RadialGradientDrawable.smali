.class public final Lcom/yandex/div/internal/drawable/RadialGradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;,
        Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;,
        Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;
    }
.end annotation


# static fields
.field public static final g:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;


# instance fields
.field public a:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;

.field public b:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

.field public c:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

.field public d:[I

.field public final e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->g:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;[I)V
    .locals 1

    const-string v0, "radius"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "centerX"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "centerY"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->a:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;

    iput-object p2, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->b:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    iput-object p3, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->c:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    iput-object p4, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->d:[I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->e:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->f:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->f:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8

    const-string v0, "bounds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->e:Landroid/graphics/Paint;

    sget-object v1, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->g:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;

    iget-object v2, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->a:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;

    iget-object v3, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->b:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    iget-object v4, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->c:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    iget-object v5, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->d:[I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->d(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;[III)Landroid/graphics/RadialGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->f:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
