.class public final Lcom/transsion/base/image/blurhash/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/base/image/blurhash/e;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/base/image/blurhash/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/base/image/blurhash/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/base/image/blurhash/e;->a:Lcom/transsion/base/image/blurhash/e;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/base/image/blurhash/d;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/base/image/blurhash/d;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/base/image/blurhash/e;->b:Lkotlin/Lazy;

    .line 18
    .line 19
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

.method public static synthetic a()Lcom/transsion/base/image/blurhash/BlurHash;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/base/image/blurhash/e;->b()Lcom/transsion/base/image/blurhash/BlurHash;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final b()Lcom/transsion/base/image/blurhash/BlurHash;
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/base/image/blurhash/BlurHash;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    const v3, 0x3f19999a    # 0.6f

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/base/image/blurhash/BlurHash;-><init>(Landroid/content/Context;IF)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static synthetic d(Lcom/transsion/base/image/blurhash/e;Ljava/lang/String;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/16 v0, 0x14

    .line 4
    .line 5
    if-eqz p6, :cond_0

    .line 6
    .line 7
    move p2, v0

    .line 8
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    .line 12
    move p3, v0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/base/image/blurhash/e;->c(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final e()Lcom/transsion/base/image/blurhash/BlurHash;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/base/image/blurhash/e;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/base/image/blurhash/BlurHash;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .locals 1

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
    invoke-direct {p0}, Lcom/transsion/base/image/blurhash/e;->e()Lcom/transsion/base/image/blurhash/BlurHash;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/base/image/blurhash/BlurHash;->f(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
