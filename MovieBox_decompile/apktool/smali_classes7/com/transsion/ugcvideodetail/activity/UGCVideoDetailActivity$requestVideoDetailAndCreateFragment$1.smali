.class final Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->K0()V
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
    c = "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1"
    f = "UGCVideoDetailActivity.kt"
    l = {
        0xc0,
        0xc6
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

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
    new-instance v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;-><init>(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v8, p0

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->label:I

    .line 7
    .line 8
    const-string v9, "0"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const-string v10, "ugcPbLoading"

    .line 12
    .line 13
    const/4 v11, 0x0

    .line 14
    const/4 v12, 0x2

    .line 15
    const-string v13, "VideoDetailFragment"

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    if-ne v1, v12, :cond_0

    .line 22
    .line 23
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lkotlinx/coroutines/n0;

    .line 26
    .line 27
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    move-object/from16 v1, p1

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto/16 :goto_7

    .line 36
    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lkotlinx/coroutines/n0;

    .line 48
    .line 49
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    move-object/from16 v1, p1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 61
    .line 62
    :try_start_2
    iget-object v3, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 63
    .line 64
    iget-object v3, v3, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->i:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object v3, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 76
    .line 77
    invoke-static {v3}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->E0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;)Lju/a;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v4, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 82
    .line 83
    iget-object v4, v4, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->i:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v5, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 89
    .line 90
    iget-object v5, v5, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->j:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v1, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    iput v2, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->label:I

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v7, 0x4

    .line 98
    const/4 v14, 0x0

    .line 99
    move-object v1, v3

    .line 100
    move-object v2, v4

    .line 101
    move-object v3, v5

    .line 102
    move-object v4, v6

    .line 103
    move-object v5, p0

    .line 104
    move v6, v7

    .line 105
    move-object v7, v14

    .line 106
    invoke-static/range {v1 .. v7}, Lju/a$a;->d(Lju/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-ne v1, v0, :cond_4

    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_4
    :goto_0
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_9

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    move-object v11, v0

    .line 130
    check-cast v11, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    :goto_1
    iget-object v2, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 134
    .line 135
    iget-object v2, v2, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->k:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v2, :cond_8

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_6

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    iget-object v2, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 147
    .line 148
    invoke-static {v2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->E0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;)Lju/a;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    iget-object v3, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 153
    .line 154
    iget-object v3, v3, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->k:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iput-object v1, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    .line 160
    .line 161
    iput v12, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->label:I

    .line 162
    .line 163
    const/4 v4, 0x0

    .line 164
    const/4 v5, 0x2

    .line 165
    const/4 v6, 0x0

    .line 166
    move-object v1, v2

    .line 167
    move-object v2, v3

    .line 168
    move-object v3, v4

    .line 169
    move-object v4, p0

    .line 170
    invoke-static/range {v1 .. v6}, Lju/a$a;->e(Lju/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-ne v1, v0, :cond_7

    .line 175
    .line 176
    return-object v0

    .line 177
    :cond_7
    :goto_2
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_9

    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    move-object v11, v0

    .line 194
    check-cast v11, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_8
    :goto_3
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 198
    .line 199
    const-string v1, "UGCVideoDetailActivity"

    .line 200
    .line 201
    const-string v2, "requestVideoDetailAndCreateFragment: videoId and subjectId are both null"

    .line 202
    .line 203
    const/4 v4, 0x4

    .line 204
    const/4 v5, 0x0

    .line 205
    const/4 v3, 0x0

    .line 206
    invoke-static/range {v0 .. v5}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_9
    :goto_4
    if-nez v11, :cond_a

    .line 210
    .line 211
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 212
    .line 213
    const-string v1, "UGCVideoDetailActivity"

    .line 214
    .line 215
    const-string v2, "requestVideoDetailAndCreateFragment: video is null, use default UGCVideoDetailFragment"

    .line 216
    .line 217
    const/4 v4, 0x4

    .line 218
    const/4 v5, 0x0

    .line 219
    const/4 v3, 0x0

    .line 220
    invoke-static/range {v0 .. v5}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 224
    .line 225
    sget-object v1, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->D:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {v0, v1, v13}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->D0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    .line 236
    :try_start_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Liu/a;

    .line 243
    .line 244
    iget-object v0, v0, Liu/a;->c:Landroid/widget/ProgressBar;

    .line 245
    .line 246
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 250
    .line 251
    .line 252
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 253
    .line 254
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :catchall_1
    move-exception v0

    .line 259
    :try_start_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 260
    .line 261
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 269
    .line 270
    return-object v0

    .line 271
    :cond_a
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 272
    .line 273
    invoke-static {v0, v11}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->F0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_b

    .line 278
    .line 279
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 280
    .line 281
    iget-object v1, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 282
    .line 283
    invoke-virtual {v0, v12, v1}, Lcom/transsion/baselib/report/k;->w(ILandroid/app/Activity;)V

    .line 284
    .line 285
    .line 286
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 287
    .line 288
    sget-object v1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->I:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$a;

    .line 289
    .line 290
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {v0, v1, v13}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->D0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_b
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 299
    .line 300
    sget-object v1, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->D:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;

    .line 301
    .line 302
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-static {v0, v1, v13}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->D0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    :goto_6
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 310
    .line 311
    :try_start_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Liu/a;

    .line 318
    .line 319
    iget-object v0, v0, Liu/a;->c:Landroid/widget/ProgressBar;

    .line 320
    .line 321
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 325
    .line 326
    .line 327
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 328
    .line 329
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 330
    .line 331
    .line 332
    goto :goto_8

    .line 333
    :catchall_2
    move-exception v0

    .line 334
    :try_start_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 335
    .line 336
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 341
    .line 342
    .line 343
    goto :goto_8

    .line 344
    :goto_7
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 345
    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    const-string v3, "requestVideoDetailAndCreateFragment error: "

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    const/4 v5, 0x4

    .line 364
    const/4 v6, 0x0

    .line 365
    const-string v2, "UGCVideoDetailActivity"

    .line 366
    .line 367
    const/4 v4, 0x0

    .line 368
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 372
    .line 373
    sget-object v1, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->D:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;

    .line 374
    .line 375
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {v0, v1, v13}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->D0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 383
    .line 384
    :try_start_7
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 385
    .line 386
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    check-cast v0, Liu/a;

    .line 391
    .line 392
    iget-object v0, v0, Liu/a;->c:Landroid/widget/ProgressBar;

    .line 393
    .line 394
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 398
    .line 399
    .line 400
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 401
    .line 402
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 403
    .line 404
    .line 405
    goto :goto_8

    .line 406
    :catchall_3
    move-exception v0

    .line 407
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 408
    .line 409
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 417
    .line 418
    return-object v0
.end method
