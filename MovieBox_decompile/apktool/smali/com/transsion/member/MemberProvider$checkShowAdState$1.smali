.class final Lcom/transsion/member/MemberProvider$checkShowAdState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberProvider;->A(Lkotlin/jvm/functions/Function0;)V
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
    c = "com.transsion.member.MemberProvider$checkShowAdState$1"
    f = "MemberProvider.kt"
    l = {
        0xd5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/member/MemberProvider;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/member/MemberProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/member/MemberProvider$checkShowAdState$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->this$0:Lcom/transsion/member/MemberProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->$callback:Lkotlin/jvm/functions/Function0;

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

.method public static synthetic a(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberCheckResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->d(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberCheckResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberCheckResult;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/transsion/member/MemberProvider;->I(Lcom/transsion/member/MemberProvider;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v1, Lmg/a;->a:Lmg/a$a;

    .line 8
    .line 9
    invoke-virtual {v1}, Lmg/a$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, ""

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v3, "sp_code"

    .line 18
    .line 19
    invoke-virtual {v1, v3, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v1

    .line 27
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, " --> checkShowAdState() --> SP_CODE = "

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, " --> it = "

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberCheckResult;->isPassed()Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "kv_is_skip_ad"

    .line 77
    .line 78
    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    .line 80
    .line 81
    sget-object v0, Lrh/b;->a:Lrh/b;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Lrh/b;->c(Z)V

    .line 84
    .line 85
    .line 86
    :cond_2
    if-eqz p2, :cond_3

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberCheckResult;->getVipEnable()Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v1, "kv_is_enable_member"

    .line 105
    .line 106
    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 107
    .line 108
    .line 109
    :cond_3
    if-eqz p2, :cond_4

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberCheckResult;->getVipPayEnable()Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-eqz p0, :cond_4

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v1, "kv_is_pay_enable_member"

    .line 128
    .line 129
    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    .line 131
    .line 132
    :cond_4
    if-eqz p2, :cond_5

    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberCheckResult;->getInviteRewardDays()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    if-eqz p0, :cond_5

    .line 139
    .line 140
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v1, "kv_invite_Reward_Days"

    .line 147
    .line 148
    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    .line 150
    .line 151
    :cond_5
    if-eqz p2, :cond_6

    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberCheckResult;->getInviteH5Url()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-eqz p0, :cond_6

    .line 158
    .line 159
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "kv_invite_H5_Url"

    .line 166
    .line 167
    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    .line 169
    .line 170
    :cond_6
    if-eqz p2, :cond_7

    .line 171
    .line 172
    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberCheckResult;->getMultiDownloadLimit()Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    if-eqz p0, :cond_7

    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const-string v1, "kv_parallel_download_task_num"

    .line 189
    .line 190
    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    .line 192
    .line 193
    :cond_7
    if-eqz p2, :cond_8

    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberCheckResult;->getPointUrl()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    if-eqz p0, :cond_8

    .line 200
    .line 201
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const-string v1, "kv_point_url"

    .line 208
    .line 209
    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    .line 211
    .line 212
    :cond_8
    if-eqz p2, :cond_9

    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberCheckResult;->getVipAdScenes()Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    if-eqz p0, :cond_9

    .line 219
    .line 220
    sget-object p2, Lrh/b;->a:Lrh/b;

    .line 221
    .line 222
    invoke-virtual {p2, p0}, Lrh/b;->a(Ljava/util/List;)V

    .line 223
    .line 224
    .line 225
    :cond_9
    if-eqz p1, :cond_a

    .line 226
    .line 227
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    check-cast p0, Lkotlin/Unit;

    .line 232
    .line 233
    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 234
    .line 235
    return-object p0
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
    new-instance p1, Lcom/transsion/member/MemberProvider$checkShowAdState$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->this$0:Lcom/transsion/member/MemberProvider;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/member/MemberProvider$checkShowAdState$1;-><init>(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/member/MemberProvider$checkShowAdState$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->this$0:Lcom/transsion/member/MemberProvider;

    .line 28
    .line 29
    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_AD:Lcom/transsion/memberapi/MemberSceneType;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v4, p0, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->this$0:Lcom/transsion/member/MemberProvider;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 39
    .line 40
    new-instance v6, Lcom/transsion/member/c0;

    .line 41
    .line 42
    invoke-direct {v6, v4, v5}, Lcom/transsion/member/c0;-><init>(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    iput v2, p0, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->label:I

    .line 46
    .line 47
    invoke-virtual {p1, v1, v3, v6, p0}, Lcom/transsion/member/MemberProvider;->b(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p1
.end method
