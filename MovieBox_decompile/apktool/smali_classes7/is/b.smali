.class public final Lis/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lis/b$a;
    }
.end annotation


# static fields
.field public static final a:Lis/b$a;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static final e:Lcom/transsion/shorttv_pugc/base/image/blurhash/BlurHash;

.field private static final f:Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lis/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lis/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lis/b;->a:Lis/b$a;

    .line 8
    .line 9
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    div-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    sput v0, Lis/b;->b:I

    .line 16
    .line 17
    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    div-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    sput v0, Lis/b;->c:I

    .line 24
    .line 25
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sput v0, Lis/b;->d:I

    .line 30
    .line 31
    new-instance v0, Lcom/transsion/shorttv_pugc/base/image/blurhash/BlurHash;

    .line 32
    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "getApp(...)"

    .line 38
    .line 39
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x5

    .line 43
    const v3, 0x3f19999a    # 0.6f

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/shorttv_pugc/base/image/blurhash/BlurHash;-><init>(Landroid/content/Context;IF)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lis/b;->e:Lcom/transsion/shorttv_pugc/base/image/blurhash/BlurHash;

    .line 50
    .line 51
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    .line 52
    .line 53
    const/16 v1, 0x64

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->setCrossFadeEnabled(Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->with(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "with(...)"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lis/b;->f:Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    .line 77
    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()Lcom/transsion/shorttv_pugc/base/image/blurhash/BlurHash;
    .locals 1

    .line 1
    sget-object v0, Lis/b;->e:Lcom/transsion/shorttv_pugc/base/image/blurhash/BlurHash;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Lis/b;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Lis/b;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    .line 1
    sget-object v0, Lis/b;->f:Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    .line 2
    .line 3
    return-object v0
.end method
