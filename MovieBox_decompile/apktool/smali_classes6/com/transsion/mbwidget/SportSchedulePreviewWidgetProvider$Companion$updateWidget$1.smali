.class final Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->q(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.mbwidget.SportSchedulePreviewWidgetProvider$Companion$updateWidget$1"
    f = "SportSchedulePreviewWidgetProvider.kt"
    l = {
        0xb0,
        0xb2,
        0xba,
        0xc5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $appWidgetId:I

.field final synthetic $appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $hDp:I

.field final synthetic $reportExposure:Z

.field final synthetic $wDp:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIIZLandroid/appwidget/AppWidgetManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIIZ",
            "Landroid/appwidget/AppWidgetManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$wDp:I

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$hDp:I

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$reportExposure:Z

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$wDp:I

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$hDp:I

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$reportExposure:Z

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;-><init>(Landroid/content/Context;IIIZLandroid/appwidget/AppWidgetManager;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v8

    .line 7
    iget v0, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->label:I

    .line 8
    .line 9
    const-string v9, "root"

    .line 10
    .line 11
    const/4 v10, 0x4

    .line 12
    const/4 v11, 0x3

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v12, 0x0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    if-eq v0, v2, :cond_3

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    if-eq v0, v11, :cond_1

    .line 23
    .line 24
    if-ne v0, v10, :cond_0

    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object/from16 v16, v0

    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_2
    iget-object v0, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lcom/transsion/mbwidget/data/SportMatch;

    .line 52
    .line 53
    iget-object v1, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Landroid/widget/RemoteViews;

    .line 56
    .line 57
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Landroid/widget/RemoteViews;

    .line 64
    .line 65
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    .line 67
    .line 68
    move-object/from16 v2, p1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :try_start_3
    new-instance v0, Landroid/widget/RemoteViews;

    .line 75
    .line 76
    iget-object v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    sget v4, Lcom/transsion/mbwidget/R$layout;->widget_sport:I

    .line 83
    .line 84
    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sget-object v3, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->a:Lcom/transsion/mbwidget/data/SportWidgetDataManager;

    .line 88
    .line 89
    iput-object v0, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    iput v2, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->label:I

    .line 92
    .line 93
    invoke-virtual {v3, v7}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-ne v2, v8, :cond_5

    .line 98
    .line 99
    return-object v8

    .line 100
    :cond_5
    :goto_0
    move-object v13, v2

    .line 101
    check-cast v13, Lcom/transsion/mbwidget/data/SportMatch;

    .line 102
    .line 103
    sget-object v2, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider;->a:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;

    .line 104
    .line 105
    iget v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$wDp:I

    .line 106
    .line 107
    iget v4, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$hDp:I

    .line 108
    .line 109
    invoke-static {v2, v0, v3, v4}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->a(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/widget/RemoteViews;II)V

    .line 110
    .line 111
    .line 112
    iget-object v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    .line 113
    .line 114
    iget v4, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    .line 115
    .line 116
    iput-object v0, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object v13, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    iput v1, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->label:I

    .line 121
    .line 122
    move-object v1, v2

    .line 123
    move-object v2, v3

    .line 124
    move-object v3, v0

    .line 125
    move-object v5, v13

    .line 126
    move-object/from16 v6, p0

    .line 127
    .line 128
    invoke-static/range {v1 .. v6}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->b(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/transsion/mbwidget/data/SportMatch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-ne v1, v8, :cond_6

    .line 133
    .line 134
    return-object v8

    .line 135
    :cond_6
    move-object v1, v0

    .line 136
    move-object v0, v13

    .line 137
    :goto_1
    iget-boolean v2, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$reportExposure:Z

    .line 138
    .line 139
    if-eqz v2, :cond_a

    .line 140
    .line 141
    sget-object v2, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    .line 142
    .line 143
    if-eqz v0, :cond_7

    .line 144
    .line 145
    const-string v3, "match"

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    move-object v3, v9

    .line 149
    :goto_2
    if-eqz v0, :cond_8

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    goto :goto_3

    .line 156
    :cond_8
    move-object v4, v12

    .line 157
    :goto_3
    if-eqz v0, :cond_9

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/SportMatch;->getDeeplink()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    goto :goto_4

    .line 164
    :cond_9
    move-object v0, v12

    .line 165
    :goto_4
    invoke-virtual {v2, v3, v4, v0}, Lcom/transsion/mbwidget/utils/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v2, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$1;

    .line 173
    .line 174
    iget-object v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 175
    .line 176
    iget v4, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    .line 177
    .line 178
    invoke-direct {v2, v3, v4, v1, v12}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$1;-><init>(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Lkotlin/coroutines/Continuation;)V

    .line 179
    .line 180
    .line 181
    iput-object v12, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    .line 182
    .line 183
    iput-object v12, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$1:Ljava/lang/Object;

    .line 184
    .line 185
    iput v11, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->label:I

    .line 186
    .line 187
    invoke-static {v0, v2, v7}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 191
    if-ne v0, v8, :cond_c

    .line 192
    .line 193
    return-object v8

    .line 194
    :goto_5
    sget-object v13, Lwf/a;->a:Lwf/a$a;

    .line 195
    .line 196
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v2, "updateWidget error: "

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v15

    .line 217
    const/16 v18, 0x8

    .line 218
    .line 219
    const/16 v19, 0x0

    .line 220
    .line 221
    const-string v14, "SportWidget_"

    .line 222
    .line 223
    const/16 v17, 0x0

    .line 224
    .line 225
    invoke-static/range {v13 .. v19}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    new-instance v0, Landroid/widget/RemoteViews;

    .line 229
    .line 230
    iget-object v1, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    sget v2, Lcom/transsion/mbwidget/R$layout;->widget_sport:I

    .line 237
    .line 238
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 239
    .line 240
    .line 241
    sget-object v1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider;->a:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;

    .line 242
    .line 243
    iget v2, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$wDp:I

    .line 244
    .line 245
    iget v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$hDp:I

    .line 246
    .line 247
    invoke-static {v1, v0, v2, v3}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->a(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/widget/RemoteViews;II)V

    .line 248
    .line 249
    .line 250
    iget-object v2, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    .line 251
    .line 252
    iget v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    .line 253
    .line 254
    invoke-static {v1, v2, v0, v3}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->d(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 255
    .line 256
    .line 257
    iget-boolean v1, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$reportExposure:Z

    .line 258
    .line 259
    if-eqz v1, :cond_b

    .line 260
    .line 261
    sget-object v1, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    .line 262
    .line 263
    invoke-virtual {v1, v9, v12, v12}, Lcom/transsion/mbwidget/utils/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :cond_b
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    new-instance v2, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$2;

    .line 271
    .line 272
    iget-object v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 273
    .line 274
    iget v4, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    .line 275
    .line 276
    invoke-direct {v2, v3, v4, v0, v12}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$2;-><init>(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Lkotlin/coroutines/Continuation;)V

    .line 277
    .line 278
    .line 279
    iput-object v12, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    .line 280
    .line 281
    iput-object v12, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$1:Ljava/lang/Object;

    .line 282
    .line 283
    iput v10, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->label:I

    .line 284
    .line 285
    invoke-static {v1, v2, v7}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    if-ne v0, v8, :cond_c

    .line 290
    .line 291
    return-object v8

    .line 292
    :cond_c
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 293
    .line 294
    return-object v0
.end method
