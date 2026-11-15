.class public final Ln7/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Ln7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln7/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ln7/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ln7/c;->a:Ln7/c;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    sget-object v0, Ln7/b;->a:Ln7/b;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ln7/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final b([B)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    array-length v1, p0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-le v1, v2, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget-byte v1, p0, v1

    .line 11
    .line 12
    const/16 v2, 0x47

    .line 13
    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    sget-object v1, Ln7/c;->a:Ln7/c;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Ln7/c;->c([B)Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget-object v1, Ln7/c;->a:Ln7/c;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Ln7/c;->d([B)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-object p0

    .line 32
    :goto_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "getDrawableFromData failed, error="

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v2, "HisavanaImageRender"

    .line 58
    .line 59
    invoke-virtual {v1, v2, p0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method private final c([B)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    sget-object v0, Ln7/b;->a:Ln7/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln7/b;->c([B)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Ln7/a;->a:Ln7/a;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ln7/a;->a([B)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ln7/c;->d([B)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method

.method private final d([B)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static final e()V
    .locals 1

    .line 1
    sget-object v0, Ln7/b;->a:Ln7/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln7/b;->f()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ln7/a;->a:Ln7/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ln7/a;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
