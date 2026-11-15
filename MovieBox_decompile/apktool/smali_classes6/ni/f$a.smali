.class public final Lni/f$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lni/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lni/f$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/widget/ImageView;Lcom/bumptech/glide/RequestBuilder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lni/f$a;->g(Landroid/widget/ImageView;Lcom/bumptech/glide/RequestBuilder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lni/f$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p16}, Lni/f$a;->h(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move p2, v0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x1

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    move p4, v0

    .line 17
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lni/f$a;->d(Ljava/lang/String;IZZ)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private final f(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v11, p6

    move-object/from16 v12, p16

    .line 1
    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v2, Lni/g;->a:Lni/g;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lni/g;->c(Ljava/lang/String;)I

    move-result v15

    const/4 v4, 0x1

    if-gt v4, v15, :cond_1

    add-int/lit8 v4, v11, 0x1

    if-ge v15, v4, :cond_1

    const/16 v21, 0x78

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v14, p3

    move/from16 v16, p8

    .line 3
    invoke-static/range {v13 .. v22}, Lni/g;->b(Lni/g;Ljava/lang/String;IZZIZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v13, v4

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface/range {p9 .. p9}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x60

    if-le v11, v4, :cond_2

    if-gt v15, v11, :cond_2

    const/16 v21, 0x78

    const/16 v22, 0x0

    const/16 v15, 0x20

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v14, p3

    move/from16 v16, p8

    .line 5
    invoke-static/range {v13 .. v22}, Lni/g;->b(Lni/g;Ljava/lang/String;IZZIZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object/from16 v13, p9

    :goto_1
    const/4 v9, 0x0

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p10

    move/from16 v7, p7

    move/from16 v8, p13

    move/from16 v10, p15

    .line 6
    invoke-virtual/range {v2 .. v10}, Lni/g;->d(Ljava/lang/String;IZZIZZI)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 8
    const-string v5, "http"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v13, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    const/4 v14, -0x1

    if-nez v5, :cond_9

    const-string v5, "data:image"

    invoke-static {v13, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_4

    .line 9
    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_6

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const-string v5, "load(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lni/f;->a()Lcom/transsion/base/image/blurhash/BlurHash;

    move-result-object v9

    new-instance v10, Lni/e;

    invoke-direct {v10, v1}, Lni/e;-><init>(Landroid/widget/ImageView;)V

    const/16 v7, 0x14

    const/16 v8, 0x14

    move-object v5, v0

    move-object v6, v13

    invoke-static/range {v5 .. v10}, Lcom/transsion/base/image/blurhash/c;->b(Lcom/bumptech/glide/RequestBuilder;Ljava/lang/String;IILcom/transsion/base/image/blurhash/BlurHash;Lkotlin/jvm/functions/Function1;)V

    .line 12
    invoke-static {}, Lni/f;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 13
    new-instance v5, Lni/f$a$b;

    invoke-direct {v5, v3, v4, v12}, Lni/f$a$b;-><init>(JLkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    if-eqz p12, :cond_4

    move/from16 v3, p7

    goto :goto_2

    :cond_4
    move v3, v14

    :goto_2
    if-eqz p12, :cond_5

    move v14, v11

    :cond_5
    const/4 v4, 0x0

    move-object/from16 p7, p0

    move/from16 p8, v4

    move/from16 p9, p5

    move/from16 p10, v3

    move/from16 p11, v14

    move-object/from16 p12, p14

    .line 14
    invoke-direct/range {p7 .. p12}, Lni/f$a;->k(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_7

    .line 16
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 18
    invoke-static {}, Lni/f;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 19
    new-instance v5, Lni/f$a$c;

    invoke-direct {v5, v3, v4, v12}, Lni/f$a$c;-><init>(JLkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    if-eqz p12, :cond_7

    move/from16 v3, p7

    goto :goto_3

    :cond_7
    move v3, v14

    :goto_3
    if-eqz p12, :cond_8

    move v14, v11

    :cond_8
    move-object/from16 p7, p0

    move/from16 p8, p4

    move/from16 p9, p5

    move/from16 p10, v3

    move/from16 p11, v14

    move-object/from16 p12, p14

    .line 20
    invoke-direct/range {p7 .. p12}, Lni/f$a;->k(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_7

    :cond_9
    :goto_4
    if-eqz p11, :cond_a

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/RequestBuilder;

    goto :goto_5

    .line 23
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    .line 24
    :goto_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 28
    new-instance v5, Lni/f$a$a;

    invoke-direct {v5, v3, v4, v12}, Lni/f$a$a;-><init>(JLkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 29
    invoke-static {}, Lni/f;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    if-eqz p12, :cond_b

    move/from16 v3, p7

    goto :goto_6

    :cond_b
    move v3, v14

    :goto_6
    if-eqz p12, :cond_c

    move v14, v11

    :cond_c
    move-object/from16 p7, p0

    move/from16 p8, p4

    move/from16 p9, p5

    move/from16 p10, v3

    move/from16 p11, v14

    move-object/from16 p12, p14

    .line 30
    invoke-direct/range {p7 .. p12}, Lni/f$a;->k(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 32
    :goto_7
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " use "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with small "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "ImageHelper"

    const/4 v5, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v4

    move-object/from16 p3, v1

    move/from16 p4, v5

    move/from16 p5, v2

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final g(Landroid/widget/ImageView;Lcom/bumptech/glide/RequestBuilder;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final h(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, ""

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lni/f;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, -0x1

    .line 42
    if-eqz p12, :cond_1

    .line 43
    .line 44
    move/from16 v2, p6

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v2, v1

    .line 48
    :goto_0
    if-eqz p12, :cond_2

    .line 49
    .line 50
    move/from16 v1, p5

    .line 51
    .line 52
    :cond_2
    const/16 v3, 0x10

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    move-object/from16 p8, p0

    .line 57
    .line 58
    move/from16 p9, p4

    .line 59
    .line 60
    move/from16 p10, p7

    .line 61
    .line 62
    move/from16 p11, v2

    .line 63
    .line 64
    move/from16 p12, v1

    .line 65
    .line 66
    move-object/from16 p13, v5

    .line 67
    .line 68
    move/from16 p14, v3

    .line 69
    .line 70
    move-object/from16 p15, v4

    .line 71
    .line 72
    invoke-static/range {p8 .. p15}, Lni/f$a;->l(Lni/f$a;IIIILcom/bumptech/glide/Priority;ILjava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    move-object/from16 v3, p2

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    move-object/from16 v3, p2

    .line 87
    .line 88
    invoke-static {}, Lni/f;->c()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    move/from16 v2, p5

    .line 93
    .line 94
    if-ne v2, v1, :cond_4

    .line 95
    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    .line 102
    if-lez v1, :cond_4

    .line 103
    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 109
    .line 110
    move v7, v1

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    move v7, v2

    .line 113
    :goto_1
    move-object/from16 v1, p0

    .line 114
    .line 115
    move-object/from16 v2, p1

    .line 116
    .line 117
    move-object/from16 v3, p2

    .line 118
    .line 119
    move-object/from16 v4, p3

    .line 120
    .line 121
    move/from16 v5, p4

    .line 122
    .line 123
    move/from16 v6, p7

    .line 124
    .line 125
    move/from16 v8, p6

    .line 126
    .line 127
    move/from16 v9, p8

    .line 128
    .line 129
    move-object/from16 v10, p9

    .line 130
    .line 131
    move/from16 v11, p10

    .line 132
    .line 133
    move/from16 v12, p11

    .line 134
    .line 135
    move/from16 v13, p12

    .line 136
    .line 137
    move/from16 v14, p13

    .line 138
    .line 139
    move-object/from16 v15, p14

    .line 140
    .line 141
    move/from16 v16, p15

    .line 142
    .line 143
    move-object/from16 v17, p16

    .line 144
    .line 145
    :try_start_0
    invoke-direct/range {v1 .. v17}, Lni/f$a;->f(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    move-object v1, v0

    .line 151
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    :goto_2
    return-void
.end method

.method public static synthetic j(Lni/f$a;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lni/f$a;->i(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final k(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p5}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 7
    .line 8
    .line 9
    move-result-object p5

    .line 10
    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    .line 11
    .line 12
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 13
    .line 14
    invoke-virtual {p5, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 15
    .line 16
    .line 17
    move-result-object p5

    .line 18
    const-string v0, "diskCacheStrategy(...)"

    .line 19
    .line 20
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p5, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p5, "placeholder(...)"

    .line 32
    .line 33
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object p5, p1

    .line 37
    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    .line 38
    .line 39
    :cond_0
    if-lez p2, :cond_1

    .line 40
    .line 41
    new-instance p1, Lcom/bumptech/glide/load/MultiTransformation;

    .line 42
    .line 43
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .line 49
    .line 50
    invoke-direct {v1, p2}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 51
    .line 52
    .line 53
    const/4 p2, 0x2

    .line 54
    new-array p2, p2, [Lcom/bumptech/glide/load/Transformation;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    aput-object v0, p2, v2

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    aput-object v1, p2, v0

    .line 61
    .line 62
    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p5, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string p2, "transform(...)"

    .line 70
    .line 71
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object p5, p1

    .line 75
    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    if-gez p2, :cond_2

    .line 79
    .line 80
    invoke-static {}, Lcom/bumptech/glide/request/RequestOptions;->circleCropTransform()Lcom/bumptech/glide/request/RequestOptions;

    .line 81
    .line 82
    .line 83
    move-result-object p5

    .line 84
    const-string p1, "circleCropTransform(...)"

    .line 85
    .line 86
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 90
    if-ne p3, p1, :cond_3

    .line 91
    .line 92
    if-eq p4, p1, :cond_4

    .line 93
    .line 94
    :cond_3
    invoke-virtual {p5, p4, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string p2, "override(...)"

    .line 99
    .line 100
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    move-object p5, p1

    .line 104
    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    .line 105
    .line 106
    :cond_4
    return-object p5
.end method

.method static synthetic l(Lni/f$a;IIIILcom/bumptech/glide/Priority;ILjava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x10

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    sget-object p5, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 6
    .line 7
    :cond_0
    move-object v5, p5

    .line 8
    move-object v0, p0

    .line 9
    move v1, p1

    .line 10
    move v2, p2

    .line 11
    move v3, p3

    .line 12
    move v4, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lni/f$a;->k(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 1
    invoke-static {}, Lni/f;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final d(Ljava/lang/String;IZZ)Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lni/g;->a:Lni/g;

    .line 8
    .line 9
    const/16 v10, 0xb8

    .line 10
    .line 11
    const/4 v11, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    move v3, p2

    .line 17
    move v4, p3

    .line 18
    move/from16 v8, p4

    .line 19
    .line 20
    invoke-static/range {v1 .. v11}, Lni/g;->e(Lni/g;Ljava/lang/String;IZZIZZIILjava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "originUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 30
    .line 31
    new-instance v0, Lni/f$a$d;

    .line 32
    .line 33
    invoke-direct {v0, p4, p2, p3}, Lni/f$a$d;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final m(Landroid/content/Context;)Lni/f$b;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lni/f$b;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lni/f$b;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
