.class public final Lcom/transsion/shorttv/base/image/blurhash/BlurHash;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:F

.field private c:Landroid/util/LruCache;

.field private final d:Lkotlinx/coroutines/n0;


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->a:Landroid/content/Context;

    .line 10
    .line 11
    iput p3, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->b:F

    .line 12
    .line 13
    new-instance p1, Landroid/util/LruCache;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->c:Landroid/util/LruCache;

    .line 19
    .line 20
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->d:Lkotlinx/coroutines/n0;

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/shorttv/base/image/blurhash/BlurHash;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->e(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lcom/transsion/shorttv/base/image/blurhash/BlurHash;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->g(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/shorttv/base/image/blurhash/BlurHash;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/base/image/blurhash/BlurHash;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->b:F

    .line 2
    .line 3
    return p0
.end method

.method private final e(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->c:Landroid/util/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final g(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->c:Landroid/util/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    return-object p1
.end method


# virtual methods
.method public final f(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .locals 9

    .line 1
    const-string v0, "blurString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->d:Lkotlinx/coroutines/n0;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash$execute$1;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    move-object v2, v0

    .line 17
    move-object v3, p0

    .line 18
    move-object v4, p1

    .line 19
    move-object v5, p4

    .line 20
    move v6, p2

    .line 21
    move v7, p3

    .line 22
    invoke-direct/range {v2 .. v8}, Lcom/transsion/shorttv/base/image/blurhash/BlurHash$execute$1;-><init>(Lcom/transsion/shorttv/base/image/blurhash/BlurHash;Ljava/lang/String;Lkotlin/jvm/functions/Function1;IILkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v4, v0

    .line 30
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 31
    .line 32
    .line 33
    return-void
.end method
