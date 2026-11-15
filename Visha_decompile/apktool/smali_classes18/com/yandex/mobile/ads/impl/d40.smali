.class public final Lcom/yandex/mobile/ads/impl/d40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/d40$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/tl<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mt1;

.field private final b:Lcom/yandex/mobile/ads/impl/wl;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mt1;Lcom/yandex/mobile/ads/impl/wl;)V
    .locals 1

    const-string v0, "scaledDrawableBitmapProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d40;->a:Lcom/yandex/mobile/ads/impl/mt1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/d40;->b:Lcom/yandex/mobile/ads/impl/wl;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Z
    .locals 4

    const-string v0, "drawable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "getBitmap(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d40;->a:Lcom/yandex/mobile/ads/impl/mt1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/mt1;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d40;->b:Lcom/yandex/mobile/ads/impl/wl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "src"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v2, "createScaledBitmap(...)"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d40;->b:Lcom/yandex/mobile/ads/impl/wl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1, v1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/d40$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    invoke-direct {p2, p1}, Lcom/yandex/mobile/ads/impl/d40$a;-><init>(I)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/d40$a;

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/d40$a;-><init>(I)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d40$a;->a()I

    move-result p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/d40$a;->a()I

    move-result v2

    sub-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 v2, 0x14

    if-le p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d40$a;->d()I

    move-result p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/d40$a;->d()I

    move-result v3

    sub-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-le p0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d40$a;->c()I

    move-result p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/d40$a;->c()I

    move-result v3

    sub-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-le p0, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d40$a;->b()I

    move-result p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/d40$a;->b()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gt p0, v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v0

    :goto_2
    return v1
.end method
