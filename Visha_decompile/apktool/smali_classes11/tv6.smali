.class public abstract Ltv6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/graphics/Bitmap;


# direct methods
.method public static a()Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Lhp4;

    invoke-direct {v0}, Lhp4;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x44

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v3}, Lhp4;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method public static b()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Ltv6;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-static {}, Ltv6;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Ltv6;->a:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Ltv6;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static c()V
    .locals 1

    sget-object v0, Ltv6;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    sput-object v0, Ltv6;->a:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
