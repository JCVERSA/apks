.class final Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/MainActivity;->G0()V
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
    c = "com.transsion.subroom.activity.MainActivity$createDelayTask$1"
    f = "MainActivity.kt"
    l = {
        0x472,
        0x473,
        0x47d
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/subroom/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/MainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/subroom/activity/MainActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->h(Lcom/transsion/subroom/activity/MainActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->a:Lcom/transsnet/downloader/notification/DownloadNotificationUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->G()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final h(Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/push/helper/PushPermanentManager;->a:Lcom/transsion/push/helper/PushPermanentManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/push/helper/PushPermanentManager;->o()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 7
    .line 8
    const/16 v6, 0xe

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v2, p0

    .line 15
    invoke-static/range {v1 .. v7}, Lcom/transsion/push/utils/NotificationUtil;->A(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;-><init>(Lcom/transsion/subroom/activity/MainActivity;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput v4, p0, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->label:I

    .line 43
    .line 44
    const-wide/16 v5, 0x7d0

    .line 45
    .line 46
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_4

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_4
    :goto_0
    sget-object p1, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v6, p0, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 60
    .line 61
    iput v3, p0, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->label:I

    .line 62
    .line 63
    const-string v7, "main_page"

    .line 64
    .line 65
    const-string v8, "wefeed-mobile-bff"

    .line 66
    .line 67
    const-string v9, ""

    .line 68
    .line 69
    const/4 v10, 0x0

    .line 70
    const/16 v12, 0x10

    .line 71
    .line 72
    const/4 v13, 0x0

    .line 73
    move-object v11, p0

    .line 74
    invoke-static/range {v5 .. v13}, Lcom/transsion/version/update/UpdateManager;->j(Lcom/transsion/version/update/UpdateManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v0, :cond_5

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    new-instance p1, Lcom/transsion/usercenterapi/UpdateResultEvent;

    .line 90
    .line 91
    invoke-direct {p1, v4}, Lcom/transsion/usercenterapi/UpdateResultEvent;-><init>(Z)V

    .line 92
    .line 93
    .line 94
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 95
    .line 96
    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 103
    .line 104
    const-class v3, Lcom/transsion/usercenterapi/UpdateResultEvent;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string v4, "getName(...)"

    .line 111
    .line 112
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-wide/16 v4, 0x0

    .line 116
    .line 117
    invoke-virtual {v1, v3, p1, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 118
    .line 119
    .line 120
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 121
    .line 122
    const/4 v10, 0x4

    .line 123
    const/4 v11, 0x0

    .line 124
    const-string v7, "update"

    .line 125
    .line 126
    const-string v8, "NeedUpdate"

    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    iput v2, p0, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->label:I

    .line 133
    .line 134
    const-wide/16 v1, 0xbb8

    .line 135
    .line 136
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p1, v0, :cond_7

    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_7
    :goto_2
    sget-object p1, Lcom/tn/lib/thread/b;->a:Lcom/tn/lib/thread/b;

    .line 144
    .line 145
    new-instance v0, Lcom/transsion/subroom/activity/w;

    .line 146
    .line 147
    invoke-direct {v0}, Lcom/transsion/subroom/activity/w;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Lcom/tn/lib/thread/b;->a(Ljava/lang/Runnable;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 154
    .line 155
    new-instance v1, Lcom/transsion/subroom/activity/x;

    .line 156
    .line 157
    invoke-direct {v1, v0}, Lcom/transsion/subroom/activity/x;-><init>(Lcom/transsion/subroom/activity/MainActivity;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v1}, Lcom/tn/lib/thread/b;->a(Ljava/lang/Runnable;)V

    .line 161
    .line 162
    .line 163
    sget-object p1, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->a:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    .line 164
    .line 165
    iget-object v0, p0, Lcom/transsion/subroom/activity/MainActivity$createDelayTask$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v1, "getApplication(...)"

    .line 172
    .line 173
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->h(Landroid/app/Application;)V

    .line 177
    .line 178
    .line 179
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 180
    .line 181
    return-object p1
.end method
