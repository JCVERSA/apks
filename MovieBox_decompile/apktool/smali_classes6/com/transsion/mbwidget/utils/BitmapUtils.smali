.class public final Lcom/transsion/mbwidget/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/mbwidget/utils/BitmapUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/mbwidget/utils/BitmapUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/mbwidget/utils/BitmapUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/mbwidget/utils/BitmapUtils;->a:Lcom/transsion/mbwidget/utils/BitmapUtils;

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

.method public static final synthetic a(Lcom/transsion/mbwidget/utils/BitmapUtils;Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/mbwidget/utils/BitmapUtils;->e(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p4, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;-><init>(Lcom/transsion/mbwidget/utils/BitmapUtils;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p1, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->I$1:I

    .line 39
    .line 40
    iget p2, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->I$0:I

    .line 41
    .line 42
    iget-object p3, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->L$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p3, Ljava/lang/String;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Landroid/content/Context;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :catch_0
    move-exception p4

    .line 55
    move-object v7, v0

    .line 56
    move v0, p2

    .line 57
    move-object p2, v2

    .line 58
    :goto_1
    move-object v2, v7

    .line 59
    goto :goto_4

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/4 p4, 0x0

    .line 72
    move-object v7, p2

    .line 73
    move-object p2, p1

    .line 74
    move p1, p4

    .line 75
    move p4, p3

    .line 76
    move-object p3, v7

    .line 77
    :goto_2
    const/4 v2, 0x0

    .line 78
    if-ge p1, p4, :cond_5

    .line 79
    .line 80
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    new-instance v5, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$2;

    .line 85
    .line 86
    invoke-direct {v5, p2, p3, v2}, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 87
    .line 88
    .line 89
    iput-object p2, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    iput-object p3, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    iput p4, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->I$0:I

    .line 94
    .line 95
    iput p1, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->I$1:I

    .line 96
    .line 97
    iput v3, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->label:I

    .line 98
    .line 99
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    if-ne p4, v1, :cond_3

    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_3
    :goto_3
    return-object p4

    .line 107
    :catch_1
    move-exception v2

    .line 108
    move-object v7, v0

    .line 109
    move v0, p4

    .line 110
    move-object p4, v2

    .line 111
    goto :goto_1

    .line 112
    :goto_4
    add-int/2addr p1, v3

    .line 113
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 114
    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v6, "load Bitmap Failed-attempt-"

    .line 121
    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v6, " :"

    .line 129
    .line 130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    const-string v6, "DeskWidget_"

    .line 141
    .line 142
    invoke-virtual {v4, v6, v5, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    if-ne p1, v0, :cond_4

    .line 146
    .line 147
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :cond_4
    move p4, v0

    .line 151
    move-object v0, v2

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    return-object v2
.end method

.method static synthetic f(Lcom/transsion/mbwidget/utils/BitmapUtils;Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x2

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/mbwidget/utils/BitmapUtils;->e(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final b(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "decodeResource(...)"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public final c()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget v0, Lcom/transsion/mbwidget/R$mipmap;->ic_default_cover:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/mbwidget/utils/BitmapUtils;->b(I)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    instance-of v2, v1, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->label:I

    .line 22
    .line 23
    move-object/from16 v3, p0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;

    .line 27
    .line 28
    move-object/from16 v3, p0

    .line 29
    .line 30
    invoke-direct {v2, v3, v1}, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;-><init>(Lcom/transsion/mbwidget/utils/BitmapUtils;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget v5, v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->label:I

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    const/4 v7, 0x0

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    if-ne v5, v6, :cond_1

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    if-eqz p2, :cond_6

    .line 63
    .line 64
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    if-gtz v0, :cond_4

    .line 80
    .line 81
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    :goto_1
    move v11, v0

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    goto :goto_1

    .line 96
    :goto_2
    sget-object v9, Lni/g;->a:Lni/g;

    .line 97
    .line 98
    const/16 v17, 0x7c

    .line 99
    .line 100
    const/16 v18, 0x0

    .line 101
    .line 102
    const/4 v12, 0x0

    .line 103
    const/4 v13, 0x0

    .line 104
    const/4 v14, 0x0

    .line 105
    const/4 v15, 0x0

    .line 106
    const/16 v16, 0x0

    .line 107
    .line 108
    move-object/from16 v10, p2

    .line 109
    .line 110
    invoke-static/range {v9 .. v18}, Lni/g;->b(Lni/g;Ljava/lang/String;IZZIZIILjava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v11, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$bitmap$1;

    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    .line 118
    invoke-direct {v11, v1, v0, v7}, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$bitmap$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 119
    .line 120
    .line 121
    const/4 v12, 0x3

    .line 122
    const/4 v13, 0x0

    .line 123
    const/4 v9, 0x0

    .line 124
    const/4 v10, 0x0

    .line 125
    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput v6, v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->label:I

    .line 130
    .line 131
    invoke-interface {v0, v2}, Lkotlinx/coroutines/r0;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-ne v1, v4, :cond_5

    .line 136
    .line 137
    return-object v4

    .line 138
    :cond_5
    :goto_3
    check-cast v1, Landroid/graphics/Bitmap;

    .line 139
    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_6

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    invoke-virtual {v1, v0, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    :cond_6
    :goto_4
    return-object v7
.end method
