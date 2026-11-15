.class public final Lzv8;
.super Lyo8;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lrz4;)V
    .locals 1

    const-string v0, "indicatorOptions"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lyo8;-><init>(Lrz4;)V

    return-void
.end method


# virtual methods
.method public n(Landroid/graphics/Canvas;FF)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyo8;->s()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lda0;->d()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
