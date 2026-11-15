.class public Lcom/transsion/widgets/LottieUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DECODE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final MAIN_HANDLER:Landroid/os/Handler;

.field private static final PENDING_REQUESTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final TAG:Ljava/lang/String; = "LottieUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/widgets/LottieUtils;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v0, Lfu5;

    invoke-direct {v0}, Lfu5;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgets/LottieUtils;->DECODE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/transsion/widgets/LottieUtils;->REQUEST_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgets/LottieUtils;->PENDING_REQUESTS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->lambda$setAnimationWithPreDecodedImages$10(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(ILbt5;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->lambda$dynamicModifyAutoPlayingLottieColor$1(ILbt5;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgets/LottieUtils;->lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(ILbt5;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->lambda$dynamicModifyAutoPlayingLottieColor$4(ILbt5;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static decodeEmbeddedImages(Lur5;)V
    .locals 6
    .param p0    # Lur5;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lur5;->j()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v2, 0xa0

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct5;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lct5;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lct5;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "data:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "base64,"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v4, 0x2c

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    array-length v5, v3

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lct5;->f()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v2}, Lct5;->d()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lct5;->f()I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Lct5;->d()I

    move-result v5

    if-eq v4, v5, :cond_7

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v2}, Lct5;->f()I

    move-result v4

    invoke-virtual {v2}, Lct5;->d()I

    move-result v5

    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eq v4, v3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    move-object v3, v4

    :cond_7
    invoke-virtual {v2, v3}, Lct5;->g(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeEmbeddedImages failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lct5;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LottieUtils"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method public static dynamicModifyAutoPlayingLottieColor(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 1

    new-instance v0, Leu5;

    invoke-direct {v0, p0, p1}, Leu5;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lht5;)Z

    return-void
.end method

.method public static synthetic e(Lcom/airbnb/lottie/LottieAnimationView;IZLur5;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgets/LottieUtils;->lambda$setAnimationWithPreDecodedImages$9(Lcom/airbnb/lottie/LottieAnimationView;IZLur5;)V

    return-void
.end method

.method public static synthetic f(ILbt5;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->lambda$dynamicModifyAutoPlayingLottieColor$3(ILbt5;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/airbnb/lottie/LottieAnimationView;ILur5;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgets/LottieUtils;->lambda$dynamicModifyAutoPlayingLottieColor$6(Lcom/airbnb/lottie/LottieAnimationView;ILur5;)V

    return-void
.end method

.method public static synthetic h(ILbt5;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->lambda$dynamicModifyAutoPlayingLottieColor$2(ILbt5;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lur5;Lcom/airbnb/lottie/LottieAnimationView;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgets/LottieUtils;->lambda$setAnimationWithPreDecodedImages$8(Lur5;Lcom/airbnb/lottie/LottieAnimationView;IZ)V

    return-void
.end method

.method private static isCurrentRequest(Lcom/airbnb/lottie/LottieAnimationView;I)Z
    .locals 1
    .param p0    # Lcom/airbnb/lottie/LottieAnimationView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/transsion/widgets/LottieUtils;->PENDING_REQUESTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/airbnb/lottie/LottieAnimationView;ILur5;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgets/LottieUtils;->lambda$setAnimationWithPreDecodedImages$7(Lcom/airbnb/lottie/LottieAnimationView;ILur5;Z)V

    return-void
.end method

.method public static synthetic k(ILbt5;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->lambda$dynamicModifyAutoPlayingLottieColor$5(ILbt5;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$dynamicModifyAutoPlayingLottieColor$1(ILbt5;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$dynamicModifyAutoPlayingLottieColor$2(ILbt5;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$dynamicModifyAutoPlayingLottieColor$3(ILbt5;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$dynamicModifyAutoPlayingLottieColor$4(ILbt5;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$dynamicModifyAutoPlayingLottieColor$5(ILbt5;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$dynamicModifyAutoPlayingLottieColor$6(Lcom/airbnb/lottie/LottieAnimationView;ILur5;)V
    .locals 7

    new-instance p2, Ltf5;

    const-string v0, "1"

    const-string v1, "\u77e9\u5f62"

    const-string v2, "\u586b\u5145 1"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ltf5;-><init>([Ljava/lang/String;)V

    new-instance v0, Ltf5;

    const-string v1, "\u5de62"

    const-string v3, "\u77e9\u5f62\u5907\u4efd 3"

    filled-new-array {v1, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltf5;-><init>([Ljava/lang/String;)V

    new-instance v1, Ltf5;

    const-string v3, "\u53f32"

    const-string v4, "\u77e9\u5f62\u5907\u4efd"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ltf5;-><init>([Ljava/lang/String;)V

    new-instance v3, Ltf5;

    const-string v4, "\u5de63"

    const-string v5, "\u77e9\u5f62\u5907\u4efd 4"

    filled-new-array {v4, v5, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ltf5;-><init>([Ljava/lang/String;)V

    new-instance v4, Ltf5;

    const-string v5, "\u53f33"

    const-string v6, "\u77e9\u5f62\u5907\u4efd 2"

    filled-new-array {v5, v6, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ltf5;-><init>([Ljava/lang/String;)V

    sget-object v2, Lit5;->a:Ljava/lang/Integer;

    new-instance v5, Lut5;

    invoke-direct {v5, p1}, Lut5;-><init>(I)V

    invoke-virtual {p0, p2, v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Ltf5;Ljava/lang/Object;Lgm9;)V

    new-instance p2, Lwt5;

    invoke-direct {p2, p1}, Lwt5;-><init>(I)V

    invoke-virtual {p0, v0, v2, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Ltf5;Ljava/lang/Object;Lgm9;)V

    new-instance p2, Lyt5;

    invoke-direct {p2, p1}, Lyt5;-><init>(I)V

    invoke-virtual {p0, v1, v2, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Ltf5;Ljava/lang/Object;Lgm9;)V

    new-instance p2, Lau5;

    invoke-direct {p2, p1}, Lau5;-><init>(I)V

    invoke-virtual {p0, v3, v2, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Ltf5;Ljava/lang/Object;Lgm9;)V

    new-instance p2, Lcu5;

    invoke-direct {p2, p1}, Lcu5;-><init>(I)V

    invoke-virtual {p0, v4, v2, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Ltf5;Ljava/lang/Object;Lgm9;)V

    return-void
.end method

.method private static synthetic lambda$setAnimationWithPreDecodedImages$10(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LottieUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$setAnimationWithPreDecodedImages$7(Lcom/airbnb/lottie/LottieAnimationView;ILur5;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->isCurrentRequest(Lcom/airbnb/lottie/LottieAnimationView;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lur5;)V

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$setAnimationWithPreDecodedImages$8(Lur5;Lcom/airbnb/lottie/LottieAnimationView;IZ)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/widgets/LottieUtils;->decodeEmbeddedImages(Lur5;)V

    sget-object v0, Lcom/transsion/widgets/LottieUtils;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lpt5;

    invoke-direct {v1, p1, p2, p0, p3}, Lpt5;-><init>(Lcom/airbnb/lottie/LottieAnimationView;ILur5;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$setAnimationWithPreDecodedImages$9(Lcom/airbnb/lottie/LottieAnimationView;IZLur5;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->isCurrentRequest(Lcom/airbnb/lottie/LottieAnimationView;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/widgets/LottieUtils;->DECODE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnt5;

    invoke-direct {v1, p3, p0, p1, p2}, Lnt5;-><init>(Lur5;Lcom/airbnb/lottie/LottieAnimationView;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "lottie-predecode"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method public static setAnimationWithPreDecodedImages(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Z)V
    .locals 3
    .param p0    # Lcom/airbnb/lottie/LottieAnimationView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/widgets/LottieUtils;->REQUEST_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    sget-object v1, Lcom/transsion/widgets/LottieUtils;->PENDING_REQUESTS:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lfs5;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    new-instance v2, Lqt5;

    invoke-direct {v2, p0, v0, p2}, Lqt5;-><init>(Lcom/airbnb/lottie/LottieAnimationView;IZ)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->d(Ldt5;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    new-instance p2, Lst5;

    invoke-direct {p2, p1}, Lst5;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieTask;->c(Ldt5;)Lcom/airbnb/lottie/LottieTask;

    :cond_1
    :goto_0
    return-void
.end method
