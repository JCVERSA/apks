.class public final Lcom/android/net/toolbox/l;
.super Lcom/android/net/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/net/n<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/Object;


# instance fields
.field private final l:Ljava/lang/Object;

.field private m:Lcom/android/net/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/net/p$b<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/graphics/Bitmap$Config;

.field private final o:I

.field private final p:I

.field private final q:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/net/toolbox/l;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/net/p$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/net/p$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/net/p$b<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/net/p$a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p7}, Lcom/android/net/n;-><init>(ILjava/lang/String;Lcom/android/net/p$a;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/net/toolbox/l;->l:Ljava/lang/Object;

    new-instance p1, Lcom/android/net/e;

    const/4 p7, 0x2

    const/high16 v0, 0x40000000    # 2.0f

    const/16 v1, 0x3e8

    invoke-direct {p1, v1, p7, v0}, Lcom/android/net/e;-><init>(IIF)V

    iput-object p1, p0, Lcom/android/net/n;->j:Lcom/android/net/r;

    iput-object p2, p0, Lcom/android/net/toolbox/l;->m:Lcom/android/net/p$b;

    iput-object p6, p0, Lcom/android/net/toolbox/l;->n:Landroid/graphics/Bitmap$Config;

    iput p3, p0, Lcom/android/net/toolbox/l;->o:I

    iput p4, p0, Lcom/android/net/toolbox/l;->p:I

    iput-object p5, p0, Lcom/android/net/toolbox/l;->q:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private static a(IIII)I
    .locals 4

    .line 1
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p3, p2

    float-to-double v0, p3

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    return p0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 4

    .line 2
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return p2

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_2

    if-nez p0, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    if-nez p0, :cond_3

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double/2addr p2, p0

    double-to-int p0, p2

    return p0

    :cond_3
    if-nez p1, :cond_4

    return p0

    :cond_4
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_6

    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_5

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_5
    return p0

    :cond_6
    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_7

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_7
    return p0
.end method


# virtual methods
.method public final a(Lcom/android/net/k;)Lcom/android/net/p;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/k;",
            ")",
            "Lcom/android/net/p<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/net/toolbox/l;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/net/k;->b:[B

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v3, p0, Lcom/android/net/toolbox/l;->o:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/net/toolbox/l;->p:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/net/toolbox/l;->n:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v3, v1

    invoke-static {v1, v4, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v5, v1

    invoke-static {v1, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, p0, Lcom/android/net/toolbox/l;->o:I

    iget v8, p0, Lcom/android/net/toolbox/l;->p:I

    iget-object v9, p0, Lcom/android/net/toolbox/l;->q:Landroid/widget/ImageView$ScaleType;

    invoke-static {v7, v8, v5, v6, v9}, Lcom/android/net/toolbox/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    iget v8, p0, Lcom/android/net/toolbox/l;->p:I

    iget v9, p0, Lcom/android/net/toolbox/l;->o:I

    iget-object v10, p0, Lcom/android/net/toolbox/l;->q:Landroid/widget/ImageView$ScaleType;

    invoke-static {v8, v9, v6, v5, v10}, Lcom/android/net/toolbox/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v8

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v5, v6, v7, v8}, Lcom/android/net/toolbox/l;->a(IIII)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v5, v1

    invoke-static {v1, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v7, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v8, :cond_2

    :cond_1
    invoke-static {v1, v7, v8, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v2

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    new-instance v1, Lcom/android/net/m;

    invoke-direct {v1, p1}, Lcom/android/net/m;-><init>(Lcom/android/net/k;)V

    invoke-static {v1}, Lcom/android/net/p;->a(Lcom/android/net/u;)Lcom/android/net/p;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/android/net/toolbox/g;->a(Lcom/android/net/k;)Lcom/android/net/b$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/net/p;->a(Ljava/lang/Object;Lcom/android/net/b$a;)Lcom/android/net/p;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v0

    return-object p0

    :goto_2
    const-string v2, "Caught OOM for %d byte image, url=%s"

    iget-object p1, p1, Lcom/android/net/k;->b:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/net/n;->b:Ljava/lang/String;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/net/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/android/net/m;

    invoke-direct {p0, v1}, Lcom/android/net/m;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/android/net/p;->a(Lcom/android/net/u;)Lcom/android/net/p;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a()V
    .locals 2

    .line 4
    invoke-super {p0}, Lcom/android/net/n;->a()V

    iget-object v0, p0, Lcom/android/net/toolbox/l;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/net/toolbox/l;->m:Lcom/android/net/p$b;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 5
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/net/toolbox/l;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/net/toolbox/l;->m:Lcom/android/net/p$b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/net/p$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final i()Lcom/android/net/n$b;
    .locals 0

    sget-object p0, Lcom/android/net/n$b;->a:Lcom/android/net/n$b;

    return-object p0
.end method
