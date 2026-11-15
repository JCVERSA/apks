.class final Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/NotificationUtil;->P(Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V
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
    c = "com.transsion.push.utils.NotificationUtil$loadNotificationMsg$1"
    f = "NotificationUtil.kt"
    l = {
        0x173,
        0x17e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $triggerSource:Lcom/transsion/pushapi/TriggerSource;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/pushapi/TriggerSource;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/pushapi/TriggerSource;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$triggerSource:Lcom/transsion/pushapi/TriggerSource;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance p1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$triggerSource:Lcom/transsion/pushapi/TriggerSource;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;-><init>(Lcom/transsion/pushapi/TriggerSource;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v2, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-eq v2, v4, :cond_1

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    iget-object v0, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/util/List;

    .line 20
    .line 21
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    move-object/from16 v3, p1

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    move-object/from16 v2, p1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :try_start_2
    iget-object v2, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$triggerSource:Lcom/transsion/pushapi/TriggerSource;

    .line 49
    .line 50
    sget-object v5, Lcom/transsion/pushapi/TriggerSource;->NETWORK_CONNECTED:Lcom/transsion/pushapi/TriggerSource;

    .line 51
    .line 52
    if-ne v2, v5, :cond_3

    .line 53
    .line 54
    sget-object v2, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/transsion/baselib/report/k;->q()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    sget-object v2, Lcom/transsion/push/helper/RoomHelper;->a:Lcom/transsion/push/helper/RoomHelper;

    .line 66
    .line 67
    iget-object v5, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$context:Landroid/content/Context;

    .line 68
    .line 69
    iput v4, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->label:I

    .line 70
    .line 71
    invoke-virtual {v2, v5, v1}, Lcom/transsion/push/helper/RoomHelper;->a(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-ne v2, v0, :cond_4

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_4
    :goto_0
    check-cast v2, Ljava/util/List;

    .line 79
    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    iget-object v11, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$context:Landroid/content/Context;

    .line 83
    .line 84
    iget-object v12, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$triggerSource:Lcom/transsion/pushapi/TriggerSource;

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_5

    .line 91
    .line 92
    sget-object v13, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 93
    .line 94
    invoke-virtual {v13}, Lcom/transsion/push/utils/NotificationUtil;->G()Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {v5}, Lcom/transsion/push/utils/NotificationUtil;->i(Lcom/transsion/baselib/db/notification/MsgConfig;)V

    .line 99
    .line 100
    .line 101
    new-instance v14, Lcom/transsion/baselib/db/notification/PullMsgResp;

    .line 102
    .line 103
    invoke-static {}, Lcom/transsion/push/utils/NotificationUtil;->e()Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    const/4 v9, 0x4

    .line 108
    const/4 v10, 0x0

    .line 109
    const/4 v8, 0x0

    .line 110
    move-object v5, v14

    .line 111
    move-object v6, v2

    .line 112
    invoke-direct/range {v5 .. v10}, Lcom/transsion/baselib/db/notification/PullMsgResp;-><init>(Ljava/util/List;Lcom/transsion/baselib/db/notification/MsgConfig;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v13, v11, v14, v12}, Lcom/transsion/push/utils/NotificationUtil;->j(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Lcom/transsion/baselib/db/notification/PullMsgResp;Lcom/transsion/pushapi/TriggerSource;)V

    .line 116
    .line 117
    .line 118
    sget-object v15, Lwf/a;->a:Lwf/a$a;

    .line 119
    .line 120
    const-string v16, "NotificationUtil"

    .line 121
    .line 122
    const-string v17, " show notification from db"

    .line 123
    .line 124
    const/16 v19, 0x4

    .line 125
    .line 126
    const/16 v20, 0x0

    .line 127
    .line 128
    const/16 v18, 0x0

    .line 129
    .line 130
    invoke-static/range {v15 .. v20}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    sget-object v5, Lcom/transsion/push/helper/RoomHelper;->a:Lcom/transsion/push/helper/RoomHelper;

    .line 134
    .line 135
    iget-object v6, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$context:Landroid/content/Context;

    .line 136
    .line 137
    iput-object v2, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->L$0:Ljava/lang/Object;

    .line 138
    .line 139
    iput v3, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->label:I

    .line 140
    .line 141
    invoke-virtual {v5, v6, v1}, Lcom/transsion/push/helper/RoomHelper;->f(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    if-ne v3, v0, :cond_6

    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_6
    move-object v0, v2

    .line 149
    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_7

    .line 156
    .line 157
    if-eqz v0, :cond_8

    .line 158
    .line 159
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 164
    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/transsion/baselib/db/notification/MsgBean;->getBuiltIn()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-ne v0, v4, :cond_8

    .line 172
    .line 173
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 174
    .line 175
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 182
    .line 183
    iget-object v2, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$context:Landroid/content/Context;

    .line 184
    .line 185
    iget-object v3, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$triggerSource:Lcom/transsion/pushapi/TriggerSource;

    .line 186
    .line 187
    invoke-static {v0, v2, v3}, Lcom/transsion/push/utils/NotificationUtil;->f(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 192
    .line 193
    iget-object v2, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$context:Landroid/content/Context;

    .line 194
    .line 195
    iget-object v3, v1, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;->$triggerSource:Lcom/transsion/pushapi/TriggerSource;

    .line 196
    .line 197
    invoke-static {v0, v2, v3}, Lcom/transsion/push/utils/NotificationUtil;->f(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V

    .line 198
    .line 199
    .line 200
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 201
    .line 202
    const-string v5, "NotificationUtil"

    .line 203
    .line 204
    const-string v6, "get notification from network"

    .line 205
    .line 206
    const/4 v8, 0x4

    .line 207
    const/4 v9, 0x0

    .line 208
    const/4 v7, 0x0

    .line 209
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    .line 215
    .line 216
    :cond_8
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 217
    .line 218
    return-object v0
.end method
