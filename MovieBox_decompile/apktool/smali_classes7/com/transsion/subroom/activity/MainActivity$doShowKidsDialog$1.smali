.class final Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/MainActivity;->H0()V
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
    c = "com.transsion.subroom.activity.MainActivity$doShowKidsDialog$1"
    f = "MainActivity.kt"
    l = {
        0x14b,
        0x157
    }
    m = "invokeSuspend"
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
            "Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

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
    new-instance p1, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;-><init>(Lcom/transsion/subroom/activity/MainActivity;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lij/o;->a:Lij/o;

    .line 36
    .line 37
    invoke-virtual {p1}, Lij/o;->j()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_3
    sget-object p1, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsAccountManager;->f()Lcom/transsion/baselib/kids/KidsProfile;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_9

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsAccountManager;->j()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 61
    .line 62
    const/4 v8, 0x4

    .line 63
    const/4 v9, 0x0

    .line 64
    const-string v5, "MainActivity"

    .line 65
    .line 66
    const-string v6, "switchDialogSuppressed."

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_4
    iput v3, p0, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->label:I

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v0, :cond_5

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_6

    .line 91
    .line 92
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_6
    iget-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_8

    .line 102
    .line 103
    iget-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_7
    sget-object p1, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->g:Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;

    .line 113
    .line 114
    invoke-virtual {p1, v3}, Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;->a(Z)Lcom/transsion/usercenter/kids/AccountSwitchDialog;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 119
    .line 120
    const-string v1, "AccountSwitchDialog"

    .line 121
    .line 122
    invoke-virtual {p1, v0, v1}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_8
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 127
    .line 128
    return-object p1

    .line 129
    :cond_9
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsAccountManager;->g()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_a

    .line 134
    .line 135
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 136
    .line 137
    const/4 v7, 0x4

    .line 138
    const/4 v8, 0x0

    .line 139
    const-string v4, "MainActivity"

    .line 140
    .line 141
    const-string v5, "createDialogSuppressed."

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p1

    .line 150
    :cond_a
    iput v2, p0, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->label:I

    .line 151
    .line 152
    invoke-virtual {p1, p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-ne p1, v0, :cond_b

    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_b
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_c

    .line 166
    .line 167
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1

    .line 170
    :cond_c
    iget-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_e

    .line 177
    .line 178
    iget-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_d

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_d
    sget-object v0, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->h:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;

    .line 188
    .line 189
    const/4 v4, 0x1

    .line 190
    const/4 v5, 0x0

    .line 191
    const/4 v1, 0x0

    .line 192
    const/4 v2, 0x1

    .line 193
    const/4 v3, 0x0

    .line 194
    invoke-static/range {v0 .. v5}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;->b(Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;ZZZILjava/lang/Object;)Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/transsion/subroom/activity/MainActivity$doShowKidsDialog$1;->this$0:Lcom/transsion/subroom/activity/MainActivity;

    .line 199
    .line 200
    const-string v1, "CreateKidsProfileDialog"

    .line 201
    .line 202
    invoke-virtual {p1, v0, v1}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 206
    .line 207
    return-object p1

    .line 208
    :cond_e
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 209
    .line 210
    return-object p1
.end method
