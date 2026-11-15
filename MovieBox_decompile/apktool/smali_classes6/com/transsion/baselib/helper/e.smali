.class public final Lcom/transsion/baselib/helper/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/baselib/helper/e;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/baselib/helper/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/helper/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/baselib/helper/e;->a:Lcom/transsion/baselib/helper/e;

    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x21

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    new-array v0, v0, [Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 20
    .line 21
    aput-object v1, v0, v3

    .line 22
    .line 23
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 24
    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 31
    .line 32
    aput-object v1, v0, v3

    .line 33
    .line 34
    :goto_0
    sput-object v0, Lcom/transsion/baselib/helper/e;->b:[Ljava/lang/String;

    .line 35
    .line 36
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


# virtual methods
.method public final a()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/helper/e;->b:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_3
    :goto_0
    return v0
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/helper/e;->b:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/transsion/baselib/helper/e;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
