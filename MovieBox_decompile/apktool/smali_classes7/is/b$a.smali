.class public final Lis/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lis/b;
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
    invoke-direct {p0}, Lis/b$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/widget/ImageView;Lcom/bumptech/glide/RequestBuilder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lis/b$a;->h(Landroid/widget/ImageView;Lcom/bumptech/glide/RequestBuilder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lis/b$a;Ljava/lang/String;IIZZZIILjava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    and-int/lit8 v0, p8, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, p2

    .line 9
    :goto_0
    and-int/lit8 v2, p8, 0x4

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move v2, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v2, p3

    .line 16
    :goto_1
    and-int/lit8 v3, p8, 0x8

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move v3, p4

    .line 23
    :goto_2
    and-int/lit8 v4, p8, 0x10

    .line 24
    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    move v4, v1

    .line 28
    goto :goto_3

    .line 29
    :cond_3
    move v4, p5

    .line 30
    :goto_3
    and-int/lit8 v5, p8, 0x20

    .line 31
    .line 32
    if-eqz v5, :cond_4

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_4
    move v1, p6

    .line 36
    :goto_4
    and-int/lit8 v5, p8, 0x40

    .line 37
    .line 38
    if-eqz v5, :cond_5

    .line 39
    .line 40
    const/16 v5, 0x19

    .line 41
    .line 42
    goto :goto_5

    .line 43
    :cond_5
    move v5, p7

    .line 44
    :goto_5
    move-object p2, p0

    .line 45
    move-object p3, p1

    .line 46
    move p4, v0

    .line 47
    move p5, v2

    .line 48
    move p6, v3

    .line 49
    move p7, v4

    .line 50
    move p8, v1

    .line 51
    move p9, v5

    .line 52
    invoke-virtual/range {p2 .. p9}, Lis/b$a;->d(Ljava/lang/String;IIZZZI)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method private final f(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZZILcom/bumptech/glide/Priority;Lkotlin/jvm/functions/Function3;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v14, p6

    move-object/from16 v15, p17

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
    sget-object v2, Lis/c;->a:Lis/c;

    move-object/from16 v13, p3

    invoke-virtual {v2, v13}, Lis/c;->c(Ljava/lang/String;)I

    move-result v5

    const/4 v3, 0x1

    if-gt v3, v5, :cond_1

    add-int/lit8 v3, v14, 0x1

    if-ge v5, v3, :cond_1

    const/16 v12, 0x38

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move-object/from16 v4, p3

    move/from16 v6, p8

    move/from16 v10, p14

    move/from16 v11, p15

    move-object/from16 v13, v16

    .line 3
    invoke-static/range {v3 .. v13}, Lis/c;->b(Lis/c;Ljava/lang/String;IZZIZZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v13, v3

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface/range {p9 .. p9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x60

    if-le v14, v3, :cond_2

    if-gt v5, v14, :cond_2

    const/16 v12, 0x38

    const/4 v13, 0x0

    const/16 v5, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move-object/from16 v4, p3

    move/from16 v6, p8

    move/from16 v10, p14

    move/from16 v11, p15

    .line 5
    invoke-static/range {v3 .. v13}, Lis/c;->b(Lis/c;Ljava/lang/String;IZZIZZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object/from16 v13, p9

    :goto_1
    const/16 v12, 0x40

    const/16 v16, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p10

    move/from16 v7, p7

    move/from16 v8, p13

    move/from16 v10, p14

    move/from16 v11, p15

    move-object v0, v13

    move-object/from16 v13, v16

    .line 6
    invoke-static/range {v2 .. v13}, Lis/c;->e(Lis/c;Ljava/lang/String;IZZIZZZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 8
    const-string v3, "http"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    const/4 v12, -0x1

    if-nez v3, :cond_9

    const-string v3, "data:image"

    invoke-static {v0, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_6

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    const-string v4, "load(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lis/b;->a()Lcom/transsion/shorttv_pugc/base/image/blurhash/BlurHash;

    move-result-object v8

    new-instance v9, Lis/a;

    invoke-direct {v9, v1}, Lis/a;-><init>(Landroid/widget/ImageView;)V

    const/16 v6, 0x14

    const/16 v7, 0x14

    move-object v4, v3

    move-object v5, v0

    invoke-static/range {v4 .. v9}, Lcom/transsion/shorttv_pugc/base/image/blurhash/c;->b(Lcom/bumptech/glide/RequestBuilder;Ljava/lang/String;IILcom/transsion/shorttv_pugc/base/image/blurhash/BlurHash;Lkotlin/jvm/functions/Function1;)V

    .line 12
    invoke-static {}, Lis/b;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 13
    new-instance v4, Lis/b$a$b;

    invoke-direct {v4, v10, v11, v15}, Lis/b$a$b;-><init>(JLkotlin/jvm/functions/Function3;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    if-eqz p12, :cond_4

    move/from16 v4, p7

    goto :goto_2

    :cond_4
    move v4, v12

    :goto_2
    if-eqz p12, :cond_5

    move v12, v14

    :cond_5
    const/4 v5, 0x0

    move-object/from16 p7, p0

    move/from16 p8, v5

    move/from16 p9, p5

    move/from16 p10, v4

    move/from16 p11, v12

    move-object/from16 p12, p16

    .line 14
    invoke-direct/range {p7 .. p12}, Lis/b$a;->o(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_7

    .line 16
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 18
    invoke-static {}, Lis/b;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 19
    new-instance v4, Lis/b$a$c;

    invoke-direct {v4, v10, v11, v15}, Lis/b$a$c;-><init>(JLkotlin/jvm/functions/Function3;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    if-eqz p12, :cond_7

    move/from16 v4, p7

    goto :goto_3

    :cond_7
    move v4, v12

    :goto_3
    if-eqz p12, :cond_8

    move v12, v14

    :cond_8
    move-object/from16 p7, p0

    move/from16 p8, p4

    move/from16 p9, p5

    move/from16 p10, v4

    move/from16 p11, v12

    move-object/from16 p12, p16

    .line 20
    invoke-direct/range {p7 .. p12}, Lis/b$a;->o(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 21
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_7

    :cond_9
    :goto_4
    if-eqz p11, :cond_a

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    goto :goto_5

    .line 23
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 24
    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 26
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    .line 27
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 28
    new-instance v4, Lis/b$a$a;

    invoke-direct {v4, v10, v11, v15}, Lis/b$a$a;-><init>(JLkotlin/jvm/functions/Function3;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 29
    invoke-static {}, Lis/b;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    if-eqz p12, :cond_b

    move/from16 v4, p7

    goto :goto_6

    :cond_b
    move v4, v12

    :goto_6
    if-eqz p12, :cond_c

    move v12, v14

    :cond_c
    move-object/from16 p7, p0

    move/from16 p8, p4

    move/from16 p9, p5

    move/from16 p10, v4

    move/from16 p11, v12

    move-object/from16 p12, p16

    .line 30
    invoke-direct/range {p7 .. p12}, Lis/b$a;->o(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 31
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 32
    :goto_7
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with small "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "ImageHelper"

    const/4 v5, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object/from16 p3, v0

    move/from16 p4, v5

    move/from16 p5, v2

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method static synthetic g(Lis/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZZILcom/bumptech/glide/Priority;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 20

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 1
    sget v1, Lcom/transsion/shorttv/R$color;->image_skeleton:I

    move v6, v1

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    move v10, v3

    goto :goto_4

    :cond_4
    move/from16 v10, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    .line 2
    const-string v1, ""

    move-object v11, v1

    goto :goto_5

    :cond_5
    move-object/from16 v11, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move v12, v3

    goto :goto_6

    :cond_6
    move/from16 v12, p10

    :goto_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    move v13, v3

    goto :goto_7

    :cond_7
    move/from16 v13, p11

    :goto_7
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    move v14, v2

    goto :goto_8

    :cond_8
    move/from16 v14, p12

    :goto_8
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_9

    move v15, v2

    goto :goto_9

    :cond_9
    move/from16 v15, p13

    :goto_9
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_a

    move/from16 v16, v2

    goto :goto_a

    :cond_a
    move/from16 v16, p14

    :goto_a
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_b

    const/16 v1, 0x19

    move/from16 v17, v1

    goto :goto_b

    :cond_b
    move/from16 v17, p15

    :goto_b
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    .line 3
    sget-object v1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    move-object/from16 v18, v1

    goto :goto_c

    :cond_c
    move-object/from16 v18, p16

    :goto_c
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    move-object/from16 v19, v0

    goto :goto_d

    :cond_d
    move-object/from16 v19, p17

    :goto_d
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 4
    invoke-direct/range {v2 .. v19}, Lis/b$a;->f(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZZILcom/bumptech/glide/Priority;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final h(Landroid/widget/ImageView;Lcom/bumptech/glide/RequestBuilder;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static synthetic l(Lis/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V
    .locals 18

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 1
    sget v1, Lcom/transsion/shorttv/R$color;->image_skeleton:I

    move v6, v1

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lis/b$a;->c()I

    move-result v1

    move v7, v1

    goto :goto_1

    :cond_1
    move/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual/range {p0 .. p0}, Lis/b$a;->b()I

    move-result v1

    move v8, v1

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    move v10, v3

    goto :goto_4

    :cond_4
    move/from16 v10, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    .line 4
    const-string v1, ""

    move-object v11, v1

    goto :goto_5

    :cond_5
    move-object/from16 v11, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move v12, v3

    goto :goto_6

    :cond_6
    move/from16 v12, p10

    :goto_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    move v13, v3

    goto :goto_7

    :cond_7
    move/from16 v13, p11

    :goto_7
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    move v14, v2

    goto :goto_8

    :cond_8
    move/from16 v14, p12

    :goto_8
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_9

    move v15, v2

    goto :goto_9

    :cond_9
    move/from16 v15, p13

    :goto_9
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_a

    move/from16 v16, v2

    goto :goto_a

    :cond_a
    move/from16 v16, p14

    :goto_a
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_b

    const/16 v0, 0x19

    move/from16 v17, v0

    goto :goto_b

    :cond_b
    move/from16 v17, p15

    :goto_b
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 5
    invoke-virtual/range {v2 .. v17}, Lis/b$a;->i(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZZI)V

    return-void
.end method

.method public static synthetic m(Lis/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V
    .locals 16

    .line 1
    move/from16 v0, p14

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lis/b$a;->c()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    move v6, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move/from16 v6, p4

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lis/b$a;->b()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    move v7, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move/from16 v7, p5

    .line 26
    .line 27
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    move v8, v2

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move/from16 v8, p6

    .line 35
    .line 36
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    move-object v9, v1

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move-object/from16 v9, p7

    .line 45
    .line 46
    :goto_3
    and-int/lit16 v1, v0, 0x80

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    move v10, v2

    .line 51
    goto :goto_4

    .line 52
    :cond_4
    move/from16 v10, p8

    .line 53
    .line 54
    :goto_4
    and-int/lit16 v1, v0, 0x100

    .line 55
    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    move v11, v2

    .line 59
    goto :goto_5

    .line 60
    :cond_5
    move/from16 v11, p9

    .line 61
    .line 62
    :goto_5
    and-int/lit16 v1, v0, 0x200

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    move v12, v2

    .line 68
    goto :goto_6

    .line 69
    :cond_6
    move/from16 v12, p10

    .line 70
    .line 71
    :goto_6
    and-int/lit16 v1, v0, 0x400

    .line 72
    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    move v13, v2

    .line 76
    goto :goto_7

    .line 77
    :cond_7
    move/from16 v13, p11

    .line 78
    .line 79
    :goto_7
    and-int/lit16 v1, v0, 0x800

    .line 80
    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    move v14, v2

    .line 84
    goto :goto_8

    .line 85
    :cond_8
    move/from16 v14, p12

    .line 86
    .line 87
    :goto_8
    and-int/lit16 v0, v0, 0x1000

    .line 88
    .line 89
    if-eqz v0, :cond_9

    .line 90
    .line 91
    const/16 v0, 0x19

    .line 92
    .line 93
    move v15, v0

    .line 94
    goto :goto_9

    .line 95
    :cond_9
    move/from16 v15, p13

    .line 96
    .line 97
    :goto_9
    move-object/from16 v2, p0

    .line 98
    .line 99
    move-object/from16 v3, p1

    .line 100
    .line 101
    move-object/from16 v4, p2

    .line 102
    .line 103
    move-object/from16 v5, p3

    .line 104
    .line 105
    invoke-virtual/range {v2 .. v15}, Lis/b$a;->j(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZI)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static synthetic n(Lis/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZZZZZZIILjava/lang/Object;)V
    .locals 15

    .line 1
    move/from16 v0, p13

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lis/b$a;->c()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    move v6, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move/from16 v6, p4

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lis/b$a;->b()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    move v7, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move/from16 v7, p5

    .line 26
    .line 27
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    move v8, v2

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move/from16 v8, p6

    .line 35
    .line 36
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    move v9, v2

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    move/from16 v9, p7

    .line 43
    .line 44
    :goto_3
    and-int/lit16 v1, v0, 0x80

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    move v10, v2

    .line 49
    goto :goto_4

    .line 50
    :cond_4
    move/from16 v10, p8

    .line 51
    .line 52
    :goto_4
    and-int/lit16 v1, v0, 0x100

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    move v11, v2

    .line 58
    goto :goto_5

    .line 59
    :cond_5
    move/from16 v11, p9

    .line 60
    .line 61
    :goto_5
    and-int/lit16 v1, v0, 0x200

    .line 62
    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    move v12, v2

    .line 66
    goto :goto_6

    .line 67
    :cond_6
    move/from16 v12, p10

    .line 68
    .line 69
    :goto_6
    and-int/lit16 v1, v0, 0x400

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    move v13, v2

    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move/from16 v13, p11

    .line 76
    .line 77
    :goto_7
    and-int/lit16 v0, v0, 0x800

    .line 78
    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    const/16 v0, 0x19

    .line 82
    .line 83
    move v14, v0

    .line 84
    goto :goto_8

    .line 85
    :cond_8
    move/from16 v14, p12

    .line 86
    .line 87
    :goto_8
    move-object v2, p0

    .line 88
    move-object/from16 v3, p1

    .line 89
    .line 90
    move-object/from16 v4, p2

    .line 91
    .line 92
    move-object/from16 v5, p3

    .line 93
    .line 94
    invoke-virtual/range {v2 .. v14}, Lis/b$a;->k(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZZZZZZI)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private final o(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
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

.method static synthetic p(Lis/b$a;IIIILcom/bumptech/glide/Priority;ILjava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
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
    invoke-direct/range {v0 .. v5}, Lis/b$a;->o(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    invoke-static {}, Lis/b;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    invoke-static {}, Lis/b;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final d(Ljava/lang/String;IIZZZI)Ljava/lang/String;
    .locals 13

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
    sget-object v1, Lis/c;->a:Lis/c;

    .line 8
    .line 9
    const/16 v11, 0x38

    .line 10
    .line 11
    const/4 v12, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    move v3, p2

    .line 16
    move/from16 v4, p4

    .line 17
    .line 18
    move/from16 v8, p5

    .line 19
    .line 20
    move/from16 v9, p6

    .line 21
    .line 22
    move/from16 v10, p7

    .line 23
    .line 24
    invoke-static/range {v1 .. v12}, Lis/c;->e(Lis/c;Ljava/lang/String;IZZIZZZIILjava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final i(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZZI)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    const-string v1, "context"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "imageView"

    .line 11
    .line 12
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "url"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "thumbnail"

    .line 23
    .line 24
    move-object/from16 v10, p9

    .line 25
    .line 26
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, ""

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {}, Lis/b;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, -0x1

    .line 68
    if-eqz p12, :cond_1

    .line 69
    .line 70
    move/from16 v2, p6

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move v2, v1

    .line 74
    :goto_0
    if-eqz p12, :cond_2

    .line 75
    .line 76
    move/from16 v1, p5

    .line 77
    .line 78
    :cond_2
    const/16 v4, 0x10

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    const/4 v6, 0x0

    .line 82
    move-object/from16 p8, p0

    .line 83
    .line 84
    move/from16 p9, p4

    .line 85
    .line 86
    move/from16 p10, p7

    .line 87
    .line 88
    move/from16 p11, v2

    .line 89
    .line 90
    move/from16 p12, v1

    .line 91
    .line 92
    move-object/from16 p13, v6

    .line 93
    .line 94
    move/from16 p14, v4

    .line 95
    .line 96
    move-object/from16 p15, v5

    .line 97
    .line 98
    invoke-static/range {p8 .. p15}, Lis/b$a;->p(Lis/b$a;IIIILcom/bumptech/glide/Priority;ILjava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lis/b$a;->c()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    move/from16 v2, p5

    .line 115
    .line 116
    if-ne v2, v1, :cond_4

    .line 117
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    .line 124
    if-lez v1, :cond_4

    .line 125
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    .line 132
    move v7, v1

    .line 133
    goto :goto_1

    .line 134
    :cond_4
    move v7, v2

    .line 135
    :goto_1
    const v19, 0x18000

    .line 136
    .line 137
    .line 138
    const/16 v20, 0x0

    .line 139
    .line 140
    const/16 v17, 0x0

    .line 141
    .line 142
    const/16 v18, 0x0

    .line 143
    .line 144
    move-object/from16 v1, p0

    .line 145
    .line 146
    move-object/from16 v2, p1

    .line 147
    .line 148
    move-object/from16 v3, p2

    .line 149
    .line 150
    move-object/from16 v4, p3

    .line 151
    .line 152
    move/from16 v5, p4

    .line 153
    .line 154
    move/from16 v6, p7

    .line 155
    .line 156
    move/from16 v8, p6

    .line 157
    .line 158
    move/from16 v9, p8

    .line 159
    .line 160
    move-object/from16 v10, p9

    .line 161
    .line 162
    move/from16 v11, p10

    .line 163
    .line 164
    move/from16 v12, p11

    .line 165
    .line 166
    move/from16 v13, p12

    .line 167
    .line 168
    move/from16 v14, p13

    .line 169
    .line 170
    move/from16 v15, p14

    .line 171
    .line 172
    move/from16 v16, p15

    .line 173
    .line 174
    :try_start_0
    invoke-static/range {v1 .. v20}, Lis/b$a;->g(Lis/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZZILcom/bumptech/glide/Priority;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :catch_0
    move-exception v0

    .line 179
    move-object v1, v0

    .line 180
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    :goto_2
    return-void
.end method

.method public final j(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZI)V
    .locals 17

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "imageView"

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "url"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "thumbnail"

    .line 23
    .line 24
    move-object/from16 v10, p7

    .line 25
    .line 26
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget v5, Lcom/transsion/shorttv/R$color;->image_skeleton:I

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    move-object/from16 v1, p0

    .line 33
    .line 34
    move/from16 v6, p4

    .line 35
    .line 36
    move/from16 v7, p5

    .line 37
    .line 38
    move/from16 v9, p6

    .line 39
    .line 40
    move/from16 v11, p8

    .line 41
    .line 42
    move/from16 v12, p9

    .line 43
    .line 44
    move/from16 v13, p10

    .line 45
    .line 46
    move/from16 v14, p11

    .line 47
    .line 48
    move/from16 v15, p12

    .line 49
    .line 50
    move/from16 v16, p13

    .line 51
    .line 52
    invoke-virtual/range {v1 .. v16}, Lis/b$a;->i(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZZI)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final k(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZZZZZZI)V
    .locals 17

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "imageView"

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "url"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget v5, Lcom/transsion/shorttv/R$color;->image_skeleton:I

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const-string v10, ""

    .line 26
    .line 27
    move-object/from16 v1, p0

    .line 28
    .line 29
    move/from16 v6, p4

    .line 30
    .line 31
    move/from16 v7, p5

    .line 32
    .line 33
    move/from16 v9, p6

    .line 34
    .line 35
    move/from16 v11, p7

    .line 36
    .line 37
    move/from16 v12, p8

    .line 38
    .line 39
    move/from16 v13, p9

    .line 40
    .line 41
    move/from16 v14, p10

    .line 42
    .line 43
    move/from16 v15, p11

    .line 44
    .line 45
    move/from16 v16, p12

    .line 46
    .line 47
    invoke-virtual/range {v1 .. v16}, Lis/b$a;->i(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZZI)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
