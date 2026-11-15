.class public final Lcom/transsion/mbwidget/data/SportWidgetDataManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/mbwidget/data/SportWidgetDataManager;

.field private static volatile b:J

.field private static volatile c:Z

.field private static final d:Lkotlin/Lazy;

.field private static e:Lcom/transsion/mbwidget/data/SportMatch;

.field private static final f:Lkotlinx/coroutines/flow/x0;

.field private static final g:Lkotlinx/coroutines/flow/h1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->a:Lcom/transsion/mbwidget/data/SportWidgetDataManager;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/mbwidget/data/e;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/mbwidget/data/e;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->d:Lkotlin/Lazy;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Lkotlinx/coroutines/flow/i1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/x0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/x0;

    .line 25
    .line 26
    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->g:Lkotlinx/coroutines/flow/h1;

    .line 27
    .line 28
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

.method public static synthetic a()Lcom/transsion/mbwidget/data/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->n()Lcom/transsion/mbwidget/data/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/mbwidget/data/SportWidgetDataManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/mbwidget/data/SportWidgetDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    sput-wide v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->b:J

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 19
    .line 20
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v3, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver;

    .line 23
    .line 24
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const-string v3, "com.transsion.mbwidget.ACTION_MATCH_REFRESH"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const/16 v3, 0x1f

    .line 33
    .line 34
    if-lt v0, v3, :cond_1

    .line 35
    .line 36
    const/high16 v0, 0xc000000

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/high16 v0, 0x8000000

    .line 40
    .line 41
    :goto_1
    const v3, 0xc137a2b

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v3, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v2, "alarm"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    instance-of v2, v1, Landroid/app/AlarmManager;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    check-cast v1, Landroid/app/AlarmManager;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v1, 0x0

    .line 62
    :goto_2
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 68
    .line 69
    const-string v1, "Cancel match refresh alarm"

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    const-string v3, "SportWidget"

    .line 73
    .line 74
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private final f()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v5, Lcom/transsion/mbwidget/data/SportWidgetDataManager$forceRefresh$1;

    .line 13
    .line 14
    invoke-direct {v5, v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager$forceRefresh$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v6, 0x3

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final i()Lcom/transsion/mbwidget/data/SportMatch;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/transsion/mbwidget/d;->k()Lcom/tencent/mmkv/MMKV;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "sport_widget_match_cache"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-class v2, Lcom/transsion/mbwidget/data/SportMatch;

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/transsion/mbwidget/data/SportMatch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    move-object v0, v1

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    move-object v5, v1

    .line 28
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "Get cached match error: "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/16 v7, 0x8

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    const-string v3, "SportWidget"

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    invoke-static/range {v2 .. v8}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_0
    return-object v0
.end method

.method private final j()Lcom/transsion/mbwidget/data/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/mbwidget/data/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final n()Lcom/transsion/mbwidget/data/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/transsion/mbwidget/data/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/mbwidget/data/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private final q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->label:I

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
    iput v3, v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->label:I

    .line 22
    .line 23
    :goto_0
    move-object v6, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;

    .line 26
    .line 27
    invoke-direct {v2, v1, v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;-><init>(Lcom/transsion/mbwidget/data/SportWidgetDataManager;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v3, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->label:I

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    const-string v10, "SportWidget"

    .line 41
    .line 42
    const/4 v11, 0x1

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    if-ne v3, v11, :cond_1

    .line 46
    .line 47
    iget-object v2, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$2:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager;

    .line 50
    .line 51
    iget-object v3, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 54
    .line 55
    iget-object v4, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 58
    .line 59
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-boolean v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->c:Z

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 82
    .line 83
    const/16 v16, 0x4

    .line 84
    .line 85
    const/16 v17, 0x0

    .line 86
    .line 87
    const-string v13, "SportWidget"

    .line 88
    .line 89
    const-string v14, "[Lab] requestMatch started (laboratory trigger)"

    .line 90
    .line 91
    const/4 v15, 0x0

    .line 92
    invoke-static/range {v12 .. v17}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sput-boolean v9, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->c:Z

    .line 96
    .line 97
    :cond_3
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 98
    .line 99
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 100
    .line 101
    .line 102
    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 103
    .line 104
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 105
    .line 106
    .line 107
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 108
    .line 109
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 110
    .line 111
    const-string v3, "Request match from API..."

    .line 112
    .line 113
    invoke-virtual {v0, v10, v3, v11}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->j()Lcom/transsion/mbwidget/data/a;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iput-object v12, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v13, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$1:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object v1, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->L$2:Ljava/lang/Object;

    .line 125
    .line 126
    iput v11, v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager$requestMatch$1;->label:I

    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    const/4 v5, 0x0

    .line 130
    const/4 v7, 0x3

    .line 131
    const/4 v8, 0x0

    .line 132
    invoke-static/range {v3 .. v8}, Lcom/transsion/mbwidget/data/a$a;->a(Lcom/transsion/mbwidget/data/a;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    if-ne v0, v2, :cond_4

    .line 137
    .line 138
    return-object v2

    .line 139
    :cond_4
    move-object v2, v1

    .line 140
    move-object v4, v12

    .line 141
    move-object v3, v13

    .line 142
    :goto_2
    :try_start_2
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const-string v6, "0"

    .line 149
    .line 150
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    const/4 v6, 0x0

    .line 155
    if-eqz v5, :cond_5

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    move-object v0, v6

    .line 159
    :goto_3
    if-eqz v0, :cond_6

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lcom/transsion/mbwidget/data/BffMatchData;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    move-object v0, v6

    .line 169
    :goto_4
    if-eqz v0, :cond_a

    .line 170
    .line 171
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/BffMatchData;->getList()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    if-eqz v7, :cond_7

    .line 178
    .line 179
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v8, "API request success, data list size: "

    .line 189
    .line 190
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v5, v10, v7, v11}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/BffMatchData;->getList()Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/transsion/mbwidget/data/c;->a(Ljava/util/List;)Lcom/transsion/mbwidget/data/ServerMatchItem;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    invoke-static {v0}, Lcom/transsion/mbwidget/data/c;->b(Lcom/transsion/mbwidget/data/ServerMatchItem;)Lcom/transsion/mbwidget/data/SportMatch;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    goto :goto_5

    .line 218
    :cond_8
    move-object v0, v6

    .line 219
    :goto_5
    if-eqz v0, :cond_9

    .line 220
    .line 221
    invoke-direct {v2, v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->r(Lcom/transsion/mbwidget/data/SportMatch;)V

    .line 222
    .line 223
    .line 224
    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    .line 225
    .line 226
    sget-object v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/x0;

    .line 227
    .line 228
    invoke-interface {v6, v0}, Lkotlinx/coroutines/flow/x0;->setValue(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v8, "Request match success: "

    .line 241
    .line 242
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v5, v10, v6, v11}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 253
    .line 254
    .line 255
    invoke-direct {v2, v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->s(Lcom/transsion/mbwidget/data/SportMatch;)V

    .line 256
    .line 257
    .line 258
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_9
    const-string v0, "No valid match from API response (conversion failed or empty list)"

    .line 262
    .line 263
    invoke-virtual {v5, v10, v0, v11}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    .line 265
    .line 266
    sput-object v6, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    .line 267
    .line 268
    sget-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/x0;

    .line 269
    .line 270
    invoke-interface {v0, v6}, Lkotlinx/coroutines/flow/x0;->setValue(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_a
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 275
    .line 276
    const-string v2, "API response failed, need fallback"

    .line 277
    .line 278
    invoke-virtual {v0, v10, v2, v11}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 279
    .line 280
    .line 281
    iput-boolean v11, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 282
    .line 283
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 284
    .line 285
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    goto :goto_8

    .line 290
    :catchall_1
    move-exception v0

    .line 291
    move-object v4, v12

    .line 292
    move-object v3, v13

    .line 293
    :goto_7
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 294
    .line 295
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 304
    .line 305
    .line 306
    move-result-object v15

    .line 307
    if-eqz v15, :cond_b

    .line 308
    .line 309
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 310
    .line 311
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    const-string v5, "Request match error: "

    .line 321
    .line 322
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v14

    .line 332
    const/16 v17, 0x8

    .line 333
    .line 334
    const/16 v18, 0x0

    .line 335
    .line 336
    const-string v13, "SportWidget"

    .line 337
    .line 338
    const/16 v16, 0x0

    .line 339
    .line 340
    invoke-static/range {v12 .. v18}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    iput-boolean v11, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 344
    .line 345
    :cond_b
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 346
    .line 347
    if-nez v0, :cond_c

    .line 348
    .line 349
    iget-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 350
    .line 351
    if-eqz v0, :cond_c

    .line 352
    .line 353
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 354
    .line 355
    const-string v2, "API failed, use fallback data (cache > mock)"

    .line 356
    .line 357
    invoke-virtual {v0, v10, v2, v11}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 358
    .line 359
    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->t()Lcom/transsion/mbwidget/data/SportMatch;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 365
    .line 366
    :cond_c
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 367
    .line 368
    return-object v0
.end method

.method private final r(Lcom/transsion/mbwidget/data/SportMatch;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/mbwidget/d;->k()Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "sport_widget_match_cache"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    move-object v3, p1

    .line 19
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "Save cache error: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/16 v5, 0x8

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const-string v1, "SportWidget"

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static/range {v0 .. v6}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method private final s(Lcom/transsion/mbwidget/data/SportMatch;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/transsion/mbwidget/data/MatchStatus;->NOT_START:Lcom/transsion/mbwidget/data/MatchStatus;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-gtz v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    const-wide/32 v6, 0x493e0

    .line 30
    .line 31
    .line 32
    add-long/2addr v4, v6

    .line 33
    sub-long v6, v4, v0

    .line 34
    .line 35
    cmp-long v2, v6, v2

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    const-string v8, "SportWidget"

    .line 39
    .line 40
    if-gtz v2, :cond_2

    .line 41
    .line 42
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v10, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v11, "Skip scheduleMatchRefresh: triggerAt="

    .line 58
    .line 59
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v4, ", now="

    .line 66
    .line 67
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, ", delta="

    .line 74
    .line 75
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ", matchId="

    .line 82
    .line 83
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, ", status="

    .line 90
    .line 91
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v2, v8, p1, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    sget-wide v9, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->b:J

    .line 106
    .line 107
    const-wide/16 v11, 0x1

    .line 108
    .line 109
    add-long/2addr v0, v11

    .line 110
    cmp-long v0, v0, v9

    .line 111
    .line 112
    if-gtz v0, :cond_3

    .line 113
    .line 114
    cmp-long v0, v9, v4

    .line 115
    .line 116
    if-gez v0, :cond_3

    .line 117
    .line 118
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "Skip scheduleMatchRefresh: keep earlier alarm at "

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v2, ", new trigger "

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v2, " is later, matchId="

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v0, v8, p1, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    .line 163
    const/16 v1, 0x18

    .line 164
    .line 165
    if-lt v0, v1, :cond_4

    .line 166
    .line 167
    sget-object v1, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {v1}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    goto :goto_0

    .line 174
    :cond_4
    sget-object v1, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 175
    .line 176
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 177
    .line 178
    const-class v9, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver;

    .line 179
    .line 180
    invoke-direct {v2, v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .line 182
    .line 183
    const-string v9, "com.transsion.mbwidget.ACTION_MATCH_REFRESH"

    .line 184
    .line 185
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    const/16 v9, 0x1f

    .line 189
    .line 190
    if-lt v0, v9, :cond_5

    .line 191
    .line 192
    const/high16 v0, 0xc000000

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    const/high16 v0, 0x8000000

    .line 196
    .line 197
    :goto_1
    const v9, 0xc137a2b

    .line 198
    .line 199
    .line 200
    invoke-static {v1, v9, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v2, "alarm"

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    instance-of v2, v1, Landroid/app/AlarmManager;

    .line 211
    .line 212
    if-eqz v2, :cond_6

    .line 213
    .line 214
    check-cast v1, Landroid/app/AlarmManager;

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_6
    const/4 v1, 0x0

    .line 218
    :goto_2
    if-eqz v1, :cond_7

    .line 219
    .line 220
    const/4 v2, 0x0

    .line 221
    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 222
    .line 223
    .line 224
    sput-wide v4, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->b:J

    .line 225
    .line 226
    :cond_7
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 227
    .line 228
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v2, "Schedule match refresh at "

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v2, " (in "

    .line 246
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v2, "ms), matchId="

    .line 254
    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v0, v8, p1, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 266
    .line 267
    .line 268
    return-void
.end method

.method private final t()Lcom/transsion/mbwidget/data/SportMatch;
    .locals 7

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const-string v1, "SportWidget"

    .line 4
    .line 5
    const-string v2, "Using fallback data..."

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->i()Lcom/transsion/mbwidget/data/SportMatch;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v6, "Use cached match as fallback: "

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v0, v1, v4, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    .line 42
    .line 43
    sget-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/x0;

    .line 44
    .line 45
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/x0;->setValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v2}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->s(Lcom/transsion/mbwidget/data/SportMatch;)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_0
    const-string v2, "Mock fallback disabled, return null to show Fallback UI"

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/x0;

    .line 5
    .line 6
    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/x0;->setValue(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const-string v1, "Force refresh for match change (periodic or after match start)"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "SportWidget"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public final h()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->c:Z

    .line 3
    .line 4
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    const-string v2, "SportWidget"

    .line 7
    .line 8
    const-string v3, "[Lab] forceRefresh triggered from Laboratory"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3, v0}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    sget-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "Return memory cached match: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x1

    .line 35
    const-string v2, "SportWidget"

    .line 36
    .line 37
    invoke-virtual {p1, v2, v0, v1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final l(Lcom/transsion/mbwidget/data/SportMatch;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/mbwidget/data/d;->a:Lcom/transsion/mbwidget/data/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/mbwidget/data/d;->a(Lcom/transsion/mbwidget/data/SportMatch;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public final m(Lcom/transsion/mbwidget/data/SportMatch;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/mbwidget/data/d;->a:Lcom/transsion/mbwidget/data/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/mbwidget/data/d;->b(Lcom/transsion/mbwidget/data/SportMatch;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public final o()V
    .locals 8

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const-string v1, "All sport widgets removed, clear memory and persistent cache"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "SportWidget"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->d()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->e:Lcom/transsion/mbwidget/data/SportMatch;

    .line 16
    .line 17
    sget-object v1, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->f:Lkotlinx/coroutines/flow/x0;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/x0;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    sget-object v0, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/mbwidget/d;->k()Lcom/tencent/mmkv/MMKV;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "sport_widget_match_cache"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    move-object v4, v0

    .line 36
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "Clear persistent cache error: "

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/16 v6, 0x8

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    const-string v2, "SportWidget"

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-static/range {v1 .. v7}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 7

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const-string v1, "Refresh on user click (likely viewing live match)"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "SportWidget"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v4, Lcom/transsion/mbwidget/data/SportWidgetDataManager$refreshOnUserClick$1;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, v0}, Lcom/transsion/mbwidget/data/SportWidgetDataManager$refreshOnUserClick$1;-><init>(Lkotlin/coroutines/Continuation;)V

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
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 30
    .line 31
    .line 32
    return-void
.end method
