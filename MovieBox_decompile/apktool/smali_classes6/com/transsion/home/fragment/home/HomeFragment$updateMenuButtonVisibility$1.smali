.class final Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/home/HomeFragment;->w1()V
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
    c = "com.transsion.home.fragment.home.HomeFragment$updateMenuButtonVisibility$1"
    f = "HomeFragment.kt"
    l = {
        0x19a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field label:I

.field final synthetic this$0:Lcom/transsion/home/fragment/home/HomeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/home/HomeFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/fragment/home/HomeFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->this$0:Lcom/transsion/home/fragment/home/HomeFragment;

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
    new-instance p1, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->this$0:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;-><init>(Lcom/transsion/home/fragment/home/HomeFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    iget v2, v0, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->I$1:I

    .line 15
    .line 16
    iget v4, v0, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->I$0:I

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v4, 0x3

    .line 35
    move/from16 v17, v4

    .line 36
    .line 37
    move v4, v2

    .line 38
    move/from16 v2, v17

    .line 39
    .line 40
    :goto_0
    if-ge v4, v2, :cond_6

    .line 41
    .line 42
    iput v4, v0, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->I$0:I

    .line 43
    .line 44
    iput v2, v0, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->I$1:I

    .line 45
    .line 46
    iput v3, v0, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->label:I

    .line 47
    .line 48
    const-wide/16 v5, 0xdac

    .line 49
    .line 50
    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-ne v5, v1, :cond_2

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_2
    :goto_1
    sget-object v5, Lcm/f;->c:Lcm/f$a;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcm/f$a;->a()Lcm/f;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v6, "home_tab_menu_show"

    .line 64
    .line 65
    invoke-virtual {v5, v6, v3}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const/4 v5, 0x0

    .line 77
    :goto_2
    if-eqz v5, :cond_5

    .line 78
    .line 79
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_4

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    iget-object v1, v0, Lcom/transsion/home/fragment/home/HomeFragment$updateMenuButtonVisibility$1;->this$0:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 87
    .line 88
    invoke-static {v1, v5}, Lcom/transsion/home/fragment/home/HomeFragment;->A0(Lcom/transsion/home/fragment/home/HomeFragment;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_5
    :goto_3
    add-int/2addr v4, v3

    .line 95
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 96
    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v7, "Cloud config retry #"

    .line 103
    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v7, ", value still null"

    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    const/4 v9, 0x4

    .line 120
    const/4 v10, 0x0

    .line 121
    const-string v6, "HomeFragment"

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 129
    .line 130
    const/4 v15, 0x4

    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    const-string v12, "HomeFragment"

    .line 134
    .line 135
    const-string v13, "Cloud config max retries reached, using default (hidden)"

    .line 136
    .line 137
    const/4 v14, 0x0

    .line 138
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 142
    .line 143
    return-object v1
.end method
