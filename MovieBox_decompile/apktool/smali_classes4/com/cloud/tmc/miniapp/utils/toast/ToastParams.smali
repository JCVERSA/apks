.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final delayMillis:J

.field private drawableResId:I

.field private duration:I

.field private icon:Ljava/io/File;

.field private interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

.field private final mask:Z

.field private showCallBack:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

.field private style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "IJZ",
            "Ljava/io/File;",
            "I",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    .line 4
    iput-wide p3, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    .line 5
    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    .line 6
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    .line 7
    iput p7, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    .line 8
    iput-object p8, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 9
    iput-object p9, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 10
    iput-object p10, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    .line 11
    iput-object p11, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_1
    move-wide v2, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move/from16 v4, p5

    :goto_2
    and-int/lit8 v6, v0, 0x10

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    move-object v6, v7

    goto :goto_3

    :cond_3
    move-object/from16 v6, p6

    :goto_3
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v5, p7

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    move-object v8, v7

    goto :goto_5

    :cond_5
    move-object/from16 v8, p8

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    move-object v9, v7

    goto :goto_6

    :cond_6
    move-object/from16 v9, p9

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    move-object v10, v7

    goto :goto_7

    :cond_7
    move-object/from16 v10, p10

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v7, p11

    :goto_8
    move-object p2, p0

    move-object p3, p1

    move p4, v1

    move-wide/from16 p5, v2

    move/from16 p7, v4

    move-object/from16 p8, v6

    move/from16 p9, v5

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v7

    .line 12
    invoke-direct/range {p2 .. p13}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;-><init>(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p12

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget v3, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-wide v4, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-wide v4, p3

    .line 28
    :goto_2
    and-int/lit8 v6, v1, 0x8

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    iget-boolean v6, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move/from16 v6, p5

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v7, v1, 0x10

    .line 38
    .line 39
    if-eqz v7, :cond_4

    .line 40
    .line 41
    iget-object v7, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-object/from16 v7, p6

    .line 45
    .line 46
    :goto_4
    and-int/lit8 v8, v1, 0x20

    .line 47
    .line 48
    if-eqz v8, :cond_5

    .line 49
    .line 50
    iget v8, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move/from16 v8, p7

    .line 54
    .line 55
    :goto_5
    and-int/lit8 v9, v1, 0x40

    .line 56
    .line 57
    if-eqz v9, :cond_6

    .line 58
    .line 59
    iget-object v9, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move-object/from16 v9, p8

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v10, v1, 0x80

    .line 65
    .line 66
    if-eqz v10, :cond_7

    .line 67
    .line 68
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move-object/from16 v10, p9

    .line 72
    .line 73
    :goto_7
    and-int/lit16 v11, v1, 0x100

    .line 74
    .line 75
    if-eqz v11, :cond_8

    .line 76
    .line 77
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    .line 78
    .line 79
    goto :goto_8

    .line 80
    :cond_8
    move-object/from16 v11, p10

    .line 81
    .line 82
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 83
    .line 84
    if-eqz v1, :cond_9

    .line 85
    .line 86
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    .line 87
    .line 88
    goto :goto_9

    .line 89
    :cond_9
    move-object/from16 v1, p11

    .line 90
    .line 91
    :goto_9
    move-object p1, v2

    .line 92
    move p2, v3

    .line 93
    move-wide p3, v4

    .line 94
    move/from16 p5, v6

    .line 95
    .line 96
    move-object/from16 p6, v7

    .line 97
    .line 98
    move/from16 p7, v8

    .line 99
    .line 100
    move-object/from16 p8, v9

    .line 101
    .line 102
    move-object/from16 p9, v10

    .line 103
    .line 104
    move-object/from16 p10, v11

    .line 105
    .line 106
    move-object/from16 p11, v1

    .line 107
    .line 108
    invoke-virtual/range {p0 .. p11}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->copy(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;)Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;)Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "IJZ",
            "Ljava/io/File;",
            "I",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;"
        }
    .end annotation

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    move v3, p2

    .line 11
    move-wide/from16 v4, p3

    .line 12
    .line 13
    move/from16 v6, p5

    .line 14
    .line 15
    move-object/from16 v7, p6

    .line 16
    .line 17
    move/from16 v8, p7

    .line 18
    .line 19
    move-object/from16 v9, p8

    .line 20
    .line 21
    move-object/from16 v10, p9

    .line 22
    .line 23
    move-object/from16 v11, p10

    .line 24
    .line 25
    move-object/from16 v12, p11

    .line 26
    .line 27
    invoke-direct/range {v1 .. v12}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;-><init>(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    .line 25
    .line 26
    iget v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    .line 32
    .line 33
    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    .line 34
    .line 35
    cmp-long v1, v3, v5

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    .line 41
    .line 42
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    .line 43
    .line 44
    if-eq v1, v3, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    .line 50
    .line 51
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    .line 59
    .line 60
    iget v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    .line 61
    .line 62
    if-eq v1, v3, :cond_7

    .line 63
    .line 64
    return v2

    .line 65
    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 66
    .line 67
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 68
    .line 69
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_8

    .line 74
    .line 75
    return v2

    .line 76
    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 77
    .line 78
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 79
    .line 80
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_9

    .line 85
    .line 86
    return v2

    .line 87
    :cond_9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    .line 90
    .line 91
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_a

    .line 96
    .line 97
    return v2

    .line 98
    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    .line 99
    .line 100
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    .line 101
    .line 102
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_b

    .line 107
    .line 108
    return v2

    .line 109
    :cond_b
    return v0
.end method

.method public final getDelayMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDrawableResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIcon()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInterceptor()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMask()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShowCallBack()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStrategy()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    .line 15
    .line 16
    invoke-static {v2, v3}, Landroidx/collection/s;->a(J)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_0
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    move v1, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_0
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    .line 46
    .line 47
    add-int/2addr v1, v0

    .line 48
    mul-int/lit8 v1, v1, 0x1f

    .line 49
    .line 50
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    move v0, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :goto_1
    add-int/2addr v1, v0

    .line 61
    mul-int/lit8 v1, v1, 0x1f

    .line 62
    .line 63
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    move v0, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    :goto_2
    add-int/2addr v1, v0

    .line 74
    mul-int/lit8 v1, v1, 0x1f

    .line 75
    .line 76
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    .line 77
    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    move v0, v2

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    :goto_3
    add-int/2addr v1, v0

    .line 87
    mul-int/lit8 v1, v1, 0x1f

    .line 88
    .line 89
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    :goto_4
    add-int/2addr v1, v2

    .line 99
    return v1
.end method

.method public final setDrawableResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    .line 2
    .line 3
    return-void
.end method

.method public final setIcon(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    .line 2
    .line 3
    return-void
.end method

.method public final setInterceptor(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowCallBack(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final setStrategy(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 2
    .line 3
    return-void
.end method

.method public final setStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    .line 6
    .line 7
    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    .line 8
    .line 9
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    .line 10
    .line 11
    iget v6, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    .line 12
    .line 13
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 16
    .line 17
    iget-object v9, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    .line 18
    .line 19
    iget-object v10, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    new-instance v11, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v12, "ToastParams(text="

    .line 27
    .line 28
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", duration="

    .line 35
    .line 36
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", delayMillis="

    .line 43
    .line 44
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", mask="

    .line 51
    .line 52
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", icon="

    .line 59
    .line 60
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ", drawableResId="

    .line 67
    .line 68
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", style="

    .line 75
    .line 76
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ", strategy="

    .line 83
    .line 84
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ", interceptor="

    .line 91
    .line 92
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, ", showCallBack="

    .line 99
    .line 100
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ")"

    .line 107
    .line 108
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0
.end method
