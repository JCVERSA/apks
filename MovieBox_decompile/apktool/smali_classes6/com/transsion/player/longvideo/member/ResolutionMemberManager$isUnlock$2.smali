.class final Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->f(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Z"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.player.longvideo.member.ResolutionMemberManager$isUnlock$2"
    f = "ResolutionMemberManager.kt"
    l = {
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $curBean:Lln/a;

.field I$0:I

.field label:I


# direct methods
.method constructor <init>(Lln/a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln/a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->$curBean:Lln/a;

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
    new-instance p1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->$curBean:Lln/a;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;-><init>(Lln/a;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->I$0:I

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-class p1, Lim/b;

    .line 31
    .line 32
    new-array v1, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {p1, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lim/b;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Lim/b;->m()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move p1, v3

    .line 48
    :goto_0
    sget-object v1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->c(Lcom/transsion/player/longvideo/member/ResolutionMemberManager;)Lcom/transsion/baselib/db/member/MemberResolutionDao;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v4, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->$curBean:Lln/a;

    .line 55
    .line 56
    invoke-virtual {v4}, Lln/a;->o()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v5, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->$curBean:Lln/a;

    .line 61
    .line 62
    invoke-virtual {v5}, Lln/a;->l()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    iget-object v6, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->$curBean:Lln/a;

    .line 67
    .line 68
    invoke-virtual {v6}, Lln/a;->e()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    iput p1, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->I$0:I

    .line 73
    .line 74
    iput v2, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->label:I

    .line 75
    .line 76
    invoke-interface {v1, v4, v5, v6, p0}, Lcom/transsion/baselib/db/member/MemberResolutionDao;->b(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-ne v1, v0, :cond_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    move v0, p1

    .line 84
    move-object p1, v1

    .line 85
    :goto_1
    check-cast p1, Lcom/transsion/baselib/db/member/MemberResolutionBean;

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->isUnlock()Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    move p1, v3

    .line 101
    :goto_2
    sget-object v1, Lcom/transsion/player/longvideo/member/k;->a:Lcom/transsion/player/longvideo/member/k;

    .line 102
    .line 103
    sget-object v4, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    .line 104
    .line 105
    invoke-static {v4}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->b(Lcom/transsion/player/longvideo/member/ResolutionMemberManager;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    move v5, v3

    .line 115
    goto :goto_4

    .line 116
    :cond_6
    :goto_3
    move v5, v2

    .line 117
    :goto_4
    iget-object v6, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->$curBean:Lln/a;

    .line 118
    .line 119
    invoke-virtual {v6}, Lln/a;->o()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    iget-object v7, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->$curBean:Lln/a;

    .line 124
    .line 125
    invoke-virtual {v7}, Lln/a;->l()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    iget-object v8, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;->$curBean:Lln/a;

    .line 130
    .line 131
    invoke-virtual {v8}, Lln/a;->e()I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-eqz v0, :cond_7

    .line 136
    .line 137
    move v9, v2

    .line 138
    goto :goto_5

    .line 139
    :cond_7
    move v9, v3

    .line 140
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v4, " --> isUnlock() --> \u662f\u5426\u5df2\u7ecf\u89e3\u9501\u8fc7 = "

    .line 149
    .line 150
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v4, " --> subjectId = "

    .line 157
    .line 158
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v4, " ep = "

    .line 165
    .line 166
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v4, " se = "

    .line 173
    .line 174
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v4, " --> isUnlock = "

    .line 181
    .line 182
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v4, " --> isMember = "

    .line 189
    .line 190
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v1, v4}, Lcom/transsion/player/longvideo/member/k;->a(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    if-nez v0, :cond_9

    .line 204
    .line 205
    if-eqz p1, :cond_8

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_8
    move v2, v3

    .line 209
    :cond_9
    :goto_6
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    return-object p1
.end method
