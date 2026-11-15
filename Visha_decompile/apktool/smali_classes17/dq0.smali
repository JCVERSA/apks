.class public Ldq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Landroid/net/Uri;

.field public final c:[B

.field public final d:Lcom/yandex/div/core/images/BitmapSource;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/yandex/div/core/images/BitmapSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p3}, Ldq0;-><init>(Landroid/graphics/Bitmap;[BLandroid/net/Uri;Lcom/yandex/div/core/images/BitmapSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLandroid/net/Uri;Lcom/yandex/div/core/images/BitmapSource;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ldq0;->a:Landroid/graphics/Bitmap;

    .line 4
    iput-object p3, p0, Ldq0;->b:Landroid/net/Uri;

    .line 5
    iput-object p2, p0, Ldq0;->c:[B

    .line 6
    iput-object p4, p0, Ldq0;->d:Lcom/yandex/div/core/images/BitmapSource;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Ldq0;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public b()[B
    .locals 0

    iget-object p0, p0, Ldq0;->c:[B

    return-object p0
.end method

.method public c()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Ldq0;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public d()Lcom/yandex/div/core/images/BitmapSource;
    .locals 0

    iget-object p0, p0, Ldq0;->d:Lcom/yandex/div/core/images/BitmapSource;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ldq0;

    iget-object v2, p0, Ldq0;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Ldq0;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Ldq0;->d:Lcom/yandex/div/core/images/BitmapSource;

    invoke-virtual {p1}, Ldq0;->d()Lcom/yandex/div/core/images/BitmapSource;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Ldq0;->c()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Ldq0;->b:Landroid/net/Uri;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ldq0;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldq0;->d:Lcom/yandex/div/core/images/BitmapSource;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ldq0;->b:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
