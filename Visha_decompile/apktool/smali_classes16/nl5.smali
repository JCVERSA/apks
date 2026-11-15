.class public final Lnl5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnl5;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnl5;

    invoke-direct {v0}, Lnl5;-><init>()V

    sput-object v0, Lnl5;->a:Lnl5;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnl5;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lnl5;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p0, p1}, Lnl5;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public static final b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    const-string p1, "inputStream"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lqv0;->b:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lmha;->c(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1, v1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0, v1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-static {p1, v0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p0, p1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final c(FFF)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranPath;->smoothCapsuleEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    cmpg-float p0, p1, p2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    int-to-float p0, p0

    mul-float/2addr p0, p3

    sub-float/2addr p1, p0

    const/4 p3, 0x0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_2

    sub-float/2addr p2, p0

    cmpl-float p0, p2, p3

    if-lez p0, :cond_2

    const/high16 p0, 0x40000000    # 2.0f

    cmpg-float p1, p1, p0

    if-lez p1, :cond_1

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final d(Landroid/graphics/RectF;F)Z
    .locals 1

    const-string p0, "mShadowRect"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranPath;->smoothCapsuleEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p2

    sub-float/2addr p0, v0

    const/4 p2, 0x0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    sub-float/2addr p0, v0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    sub-float/2addr p0, v0

    const/high16 p2, 0x40000000    # 2.0f

    cmpg-float p0, p0, p2

    if-lez p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    sub-float/2addr p0, v0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
