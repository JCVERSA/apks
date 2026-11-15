.class public final Lcom/yandex/div/core/DecodeBase64ImageTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0014\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001c\u0010\u001c\u001a\u00020\u0019*\u00020\u000eH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001c\u0010\u001c\u001a\u00020\u001d*\u00020\u0014H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008 \u0010!R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\"R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010#R\"\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00080\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010$\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006%"
    }
    d2 = {
        "Lcom/yandex/div/core/DecodeBase64ImageTask;",
        "Ljava/lang/Runnable;",
        "",
        "rawBase64string",
        "",
        "synchronous",
        "Lkotlin/Function1;",
        "Lby4;",
        "Lzfb;",
        "onDecoded",
        "<init>",
        "(Ljava/lang/String;ZLe74;)V",
        "",
        "bytes",
        "Landroid/graphics/Bitmap;",
        "decodeToBitmap",
        "([B)Landroid/graphics/Bitmap;",
        "base64string",
        "extractFromDataUrl",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Landroid/graphics/drawable/PictureDrawable;",
        "decodeToPictureDrawable",
        "([B)Landroid/graphics/drawable/PictureDrawable;",
        "isSvg",
        "(Ljava/lang/String;)Z",
        "Lby4$a;",
        "asImageRepresentation-Mlk_otY",
        "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;",
        "asImageRepresentation",
        "Lby4$b;",
        "asImageRepresentation-9g2PFUk",
        "(Landroid/graphics/drawable/PictureDrawable;)Landroid/graphics/drawable/PictureDrawable;",
        "run",
        "()V",
        "Ljava/lang/String;",
        "Z",
        "Le74;",
        "div_release"
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
.field private final onDecoded:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field private rawBase64string:Ljava/lang/String;

.field private final synchronous:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLe74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "rawBase64string"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDecoded"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/DecodeBase64ImageTask;->rawBase64string:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/yandex/div/core/DecodeBase64ImageTask;->synchronous:Z

    iput-object p3, p0, Lcom/yandex/div/core/DecodeBase64ImageTask;->onDecoded:Le74;

    return-void
.end method

.method public static final synthetic access$getOnDecoded$p(Lcom/yandex/div/core/DecodeBase64ImageTask;)Le74;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/DecodeBase64ImageTask;->onDecoded:Le74;

    return-object p0
.end method

.method private final asImageRepresentation-9g2PFUk(Landroid/graphics/drawable/PictureDrawable;)Landroid/graphics/drawable/PictureDrawable;
    .locals 0

    invoke-static {p1}, Lby4$b;->b(Landroid/graphics/drawable/PictureDrawable;)Landroid/graphics/drawable/PictureDrawable;

    move-result-object p0

    return-object p0
.end method

.method private final asImageRepresentation-Mlk_otY(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p1}, Lby4$a;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final decodeToBitmap([B)Landroid/graphics/Bitmap;
    .locals 2

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lne5;->a:Lne5;

    sget-object p1, Lcom/yandex/div/logging/Severity;->ERROR:Lcom/yandex/div/logging/Severity;

    invoke-virtual {p0, p1}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    const-string v0, "Problem with decoding base-64 preview image occurred"

    const-string v1, "Div"

    invoke-virtual {p0, p1, v1, v0}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final decodeToPictureDrawable([B)Landroid/graphics/drawable/PictureDrawable;
    .locals 3

    new-instance p0, Lf7a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lf7a;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lf7a;->a(Ljava/io/InputStream;)Landroid/graphics/drawable/PictureDrawable;

    move-result-object p0

    return-object p0
.end method

.method private final extractFromDataUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 p0, 0x2

    const/4 v0, 0x0

    const-string v1, "data:"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p0, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x2c

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lj1a;->l0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method private final isSvg(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x2

    const/4 v0, 0x0

    const-string v1, "data:image/svg"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p0, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/yandex/div/core/DecodeBase64ImageTask;->rawBase64string:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yandex/div/core/DecodeBase64ImageTask;->extractFromDataUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/yandex/div/core/DecodeBase64ImageTask;->rawBase64string:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yandex/div/core/DecodeBase64ImageTask;->isSvg(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "bytes"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/div/core/DecodeBase64ImageTask;->decodeToPictureDrawable([B)Landroid/graphics/drawable/PictureDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/yandex/div/core/DecodeBase64ImageTask;->asImageRepresentation-9g2PFUk(Landroid/graphics/drawable/PictureDrawable;)Landroid/graphics/drawable/PictureDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v0}, Lby4$b;->a(Landroid/graphics/drawable/PictureDrawable;)Lby4$b;

    move-result-object v3

    goto :goto_2

    :cond_1
    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/div/core/DecodeBase64ImageTask;->decodeToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/yandex/div/core/DecodeBase64ImageTask;->asImageRepresentation-Mlk_otY(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v0}, Lby4$a;->a(Landroid/graphics/Bitmap;)Lby4$a;

    move-result-object v3

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/yandex/div/core/DecodeBase64ImageTask;->synchronous:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/yandex/div/core/DecodeBase64ImageTask;->onDecoded:Le74;

    invoke-interface {p0, v3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    sget-object v0, Lpfb;->a:Lpfb;

    new-instance v1, Lcom/yandex/div/core/DecodeBase64ImageTask$run$1;

    invoke-direct {v1, p0, v3}, Lcom/yandex/div/core/DecodeBase64ImageTask$run$1;-><init>(Lcom/yandex/div/core/DecodeBase64ImageTask;Lby4;)V

    invoke-virtual {v0, v1}, Lpfb;->e(Lc74;)Z

    :goto_3
    return-void

    :catch_0
    sget-object p0, Lne5;->a:Lne5;

    sget-object v0, Lcom/yandex/div/logging/Severity;->ERROR:Lcom/yandex/div/logging/Severity;

    invoke-virtual {p0, v0}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    const-string v1, "Bad base-64 image preview"

    const-string v2, "Div"

    invoke-virtual {p0, v0, v2, v1}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
