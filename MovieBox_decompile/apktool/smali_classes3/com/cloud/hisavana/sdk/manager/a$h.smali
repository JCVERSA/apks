.class final Lcom/cloud/hisavana/sdk/manager/a$h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/a;->s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$creatCCTServiceAsyncIfNeeded$1"
    f = "CustomTabsManager.kt"
    l = {
        0x1b0,
        0x1c0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/hisavana/sdk/manager/a$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->c:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->e:Z

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$h;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/cloud/hisavana/sdk/manager/a$h;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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
    new-instance p1, Lcom/cloud/hisavana/sdk/manager/a$h;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->e:Z

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/cloud/hisavana/sdk/manager/a$h;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$h;->a(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
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
    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->b:I

    .line 6
    .line 7
    const-string v2, "CustomTabsManager"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v4, :cond_1

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->a:I

    .line 18
    .line 19
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :try_start_2
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->c:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 44
    .line 45
    iput v4, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->b:I

    .line 46
    .line 47
    invoke-static {p1, v1, v5, p0}, Lcom/cloud/hisavana/sdk/manager/a;->j(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_3

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move p1, v3

    .line 62
    :goto_1
    if-eq p1, v4, :cond_9

    .line 63
    .line 64
    if-eq p1, v3, :cond_8

    .line 65
    .line 66
    const/4 v1, 0x3

    .line 67
    if-eq p1, v1, :cond_6

    .line 68
    .line 69
    const/4 v1, 0x4

    .line 70
    if-eq p1, v1, :cond_5

    .line 71
    .line 72
    const/4 v0, 0x5

    .line 73
    if-eq p1, v0, :cond_4

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "CCT is unenable"

    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 87
    .line 88
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->c:Landroid/content/Context;

    .line 89
    .line 90
    iput p1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->a:I

    .line 91
    .line 92
    iput v3, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->b:I

    .line 93
    .line 94
    invoke-static {v1, v5, v4, p0}, Lcom/cloud/hisavana/sdk/manager/a;->l(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-ne v1, v0, :cond_a

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->d()Landroidx/browser/customtabs/CustomTabsClient;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    const-wide/16 v5, 0x0

    .line 108
    .line 109
    invoke-virtual {v0, v5, v6}, Landroidx/browser/customtabs/CustomTabsClient;->e(J)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_7
    const/4 v4, 0x0

    .line 117
    :goto_2
    invoke-static {v4}, Lcom/cloud/hisavana/sdk/manager/a;->R(Z)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_8
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "CreatCCTServiceAsyncIfNeeded failed now "

    .line 126
    .line 127
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_9
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v1, "CreatCCTServiceAsyncIfNeeded success now "

    .line 136
    .line 137
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_a
    :goto_3
    move v0, p1

    .line 141
    :goto_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v3, "bind service end, checkIsNeedBindServiceOrWarmUp is "

    .line 151
    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p1, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->e:Z

    .line 166
    .line 167
    if-eqz p1, :cond_b

    .line 168
    .line 169
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 170
    .line 171
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->c:Landroid/content/Context;

    .line 172
    .line 173
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/manager/a$h;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 174
    .line 175
    invoke-static {p1, v1, v2, v0}, Lcom/cloud/hisavana/sdk/manager/a;->x(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    .line 177
    .line 178
    :catchall_1
    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 179
    .line 180
    return-object p1
.end method
