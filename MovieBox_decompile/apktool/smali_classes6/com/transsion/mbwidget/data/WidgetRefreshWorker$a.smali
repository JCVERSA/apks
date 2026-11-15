.class public final Lcom/transsion/mbwidget/data/WidgetRefreshWorker$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mbwidget/data/WidgetRefreshWorker;
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
    invoke-direct {p0}, Lcom/transsion/mbwidget/data/WidgetRefreshWorker$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/WidgetDataManager;->y()Z

    .line 13
    .line 14
    .line 15
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const-string v9, "context"

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    .line 22
    .line 23
    sget-object v3, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 24
    .line 25
    const-class v4, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;

    .line 26
    .line 27
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    array-length v2, v11

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    move v2, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v2, v10

    .line 43
    :goto_0
    if-nez v2, :cond_1

    .line 44
    .line 45
    array-length v12, v11

    .line 46
    move v13, v10

    .line 47
    :goto_1
    if-ge v13, v12, :cond_1

    .line 48
    .line 49
    aget v5, v11, v13

    .line 50
    .line 51
    sget-object v2, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;->a:Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;

    .line 52
    .line 53
    sget-object v3, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/16 v7, 0x8

    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    move-object v4, v1

    .line 66
    invoke-static/range {v2 .. v8}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;->f(Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    add-int/2addr v13, v0

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_4

    .line 73
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    .line 74
    .line 75
    sget-object v3, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 76
    .line 77
    const-class v4, Lcom/transsion/mbwidget/PlayWidgetProvider;

    .line 78
    .line 79
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    array-length v3, v2

    .line 90
    if-nez v3, :cond_2

    .line 91
    .line 92
    move v3, v0

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move v3, v10

    .line 95
    :goto_2
    if-nez v3, :cond_3

    .line 96
    .line 97
    array-length v3, v2

    .line 98
    :goto_3
    if-ge v10, v3, :cond_3

    .line 99
    .line 100
    aget v4, v2, v10

    .line 101
    .line 102
    sget-object v5, Lcom/transsion/mbwidget/PlayWidgetProvider;->a:Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;

    .line 103
    .line 104
    sget-object v6, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v6, v1, v4}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;->c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 113
    .line 114
    .line 115
    add-int/2addr v10, v0

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 118
    .line 119
    const-string v2, "DeskWidget_"

    .line 120
    .line 121
    const-string v3, "doWork, refresh completed"

    .line 122
    .line 123
    const/4 v5, 0x4

    .line 124
    const/4 v6, 0x0

    .line 125
    const/4 v4, 0x0

    .line 126
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :goto_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 136
    .line 137
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :goto_5
    return-void
.end method
