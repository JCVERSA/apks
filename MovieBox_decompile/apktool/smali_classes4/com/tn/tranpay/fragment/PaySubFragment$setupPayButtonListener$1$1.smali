.class final Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PaySubFragment;->q0()V
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
    c = "com.tn.tranpay.fragment.PaySubFragment$setupPayButtonListener$1$1"
    f = "PaySubFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/tn/tranpay/fragment/PaySubFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/PaySubFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/tranpay/fragment/PaySubFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

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
    new-instance p1, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;-><init>(Lcom/tn/tranpay/fragment/PaySubFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->c0(Lcom/tn/tranpay/fragment/PaySubFragment;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p1, v0}, Lcom/tn/tranpay/fragment/PaySubFragment;->d0(Lcom/tn/tranpay/fragment/PaySubFragment;Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->a0(Lcom/tn/tranpay/fragment/PaySubFragment;)Lrg/b;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x0

    .line 35
    const-string v1, "viewBinding"

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object p1, v0

    .line 43
    :cond_1
    iget-object p1, p1, Lrg/b;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->a0(Lcom/tn/tranpay/fragment/PaySubFragment;)Lrg/b;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move-object v0, p1

    .line 66
    :goto_0
    iget-object p1, v0, Lrg/b;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    sget-object p1, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "k_phone_number"

    .line 83
    .line 84
    invoke-virtual {v0, v1, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v0, "k_cnic_number"

    .line 92
    .line 93
    invoke-virtual {p1, v0, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->b0(Lcom/tn/tranpay/fragment/PaySubFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->h0()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const/16 v7, 0x8

    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    const/4 v6, 0x0

    .line 112
    invoke-static/range {v2 .. v8}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->k(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 121
    .line 122
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1
.end method
