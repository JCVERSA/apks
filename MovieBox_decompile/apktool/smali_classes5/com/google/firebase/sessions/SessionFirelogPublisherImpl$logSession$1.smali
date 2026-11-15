.class final Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->a(Lcom/google/firebase/sessions/t;)V
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
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$logSession$1"
    f = "SessionFirelogPublisher.kt"
    l = {
        0x3f,
        0x40,
        0x46
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $sessionDetails:Lcom/google/firebase/sessions/t;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lcom/google/firebase/sessions/t;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;",
            "Lcom/google/firebase/sessions/t;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->$sessionDetails:Lcom/google/firebase/sessions/t;

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
    new-instance p1, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->$sessionDetails:Lcom/google/firebase/sessions/t;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;-><init>(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lcom/google/firebase/sessions/t;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->label:I

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
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$5:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/google/firebase/sessions/settings/SessionsSettings;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$4:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/google/firebase/sessions/t;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$3:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lcom/google/firebase/f;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$2:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Lcom/google/firebase/sessions/v;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$1:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v4, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v5, Lcom/google/firebase/sessions/InstallationId;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move-object v7, v4

    .line 46
    move-object v8, v3

    .line 47
    move-object v3, v0

    .line 48
    move-object v0, v8

    .line 49
    move-object v9, v2

    .line 50
    move-object v2, v1

    .line 51
    move-object v1, v9

    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    .line 74
    .line 75
    iput v4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->label:I

    .line 76
    .line 77
    invoke-static {p1, p0}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->f(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v0, :cond_4

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_4
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
    if-eqz p1, :cond_7

    .line 91
    .line 92
    sget-object p1, Lcom/google/firebase/sessions/InstallationId;->c:Lcom/google/firebase/sessions/InstallationId$Companion;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    .line 95
    .line 96
    invoke-static {v1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->d(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Llc/e;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput v3, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->label:I

    .line 101
    .line 102
    invoke-virtual {p1, v1, p0}, Lcom/google/firebase/sessions/InstallationId$Companion;->a(Llc/e;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-ne p1, v0, :cond_5

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_5
    :goto_1
    move-object v5, p1

    .line 110
    check-cast v5, Lcom/google/firebase/sessions/InstallationId;

    .line 111
    .line 112
    iget-object v4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    .line 113
    .line 114
    sget-object v3, Lcom/google/firebase/sessions/v;->a:Lcom/google/firebase/sessions/v;

    .line 115
    .line 116
    invoke-static {v4}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->c(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lcom/google/firebase/f;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->$sessionDetails:Lcom/google/firebase/sessions/t;

    .line 121
    .line 122
    iget-object v6, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    .line 123
    .line 124
    invoke-static {v6}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->e(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lcom/google/firebase/sessions/settings/SessionsSettings;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    sget-object v7, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->a:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;

    .line 129
    .line 130
    iput-object v5, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$0:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object v4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$1:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object v3, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$2:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$3:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$4:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object v6, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$5:Ljava/lang/Object;

    .line 141
    .line 142
    iput v2, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->label:I

    .line 143
    .line 144
    invoke-virtual {v7, p0}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-ne v2, v0, :cond_6

    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_6
    move-object v0, v3

    .line 152
    move-object v7, v4

    .line 153
    move-object v3, v6

    .line 154
    move-object v8, v1

    .line 155
    move-object v1, p1

    .line 156
    move-object p1, v2

    .line 157
    move-object v2, v8

    .line 158
    :goto_2
    move-object v4, p1

    .line 159
    check-cast v4, Ljava/util/Map;

    .line 160
    .line 161
    invoke-virtual {v5}, Lcom/google/firebase/sessions/InstallationId;->b()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v5}, Lcom/google/firebase/sessions/InstallationId;->a()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    move-object v5, p1

    .line 170
    invoke-virtual/range {v0 .. v6}, Lcom/google/firebase/sessions/v;->a(Lcom/google/firebase/f;Lcom/google/firebase/sessions/t;Lcom/google/firebase/sessions/settings/SessionsSettings;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/sessions/u;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {v7, p1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->b(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lcom/google/firebase/sessions/u;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 178
    .line 179
    return-object p1
.end method
