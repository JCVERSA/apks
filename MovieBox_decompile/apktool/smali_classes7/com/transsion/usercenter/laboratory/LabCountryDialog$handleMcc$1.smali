.class final Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/laboratory/LabCountryDialog;->w0(Ljava/lang/String;)V
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
    c = "com.transsion.usercenter.laboratory.LabCountryDialog$handleMcc$1"
    f = "LabCountryDialog.kt"
    l = {
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $text:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/usercenter/laboratory/LabCountryDialog;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/laboratory/LabCountryDialog;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/usercenter/laboratory/LabCountryDialog;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->this$0:Lcom/transsion/usercenter/laboratory/LabCountryDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->$text:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->this$0:Lcom/transsion/usercenter/laboratory/LabCountryDialog;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->$text:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;-><init>(Lcom/transsion/usercenter/laboratory/LabCountryDialog;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->label:I

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
    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

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
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 32
    .line 33
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v3, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1$1;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->this$0:Lcom/transsion/usercenter/laboratory/LabCountryDialog;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->$text:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-direct {v3, v4, v5, p1, v6}, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1$1;-><init>(Lcom/transsion/usercenter/laboratory/LabCountryDialog;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    iput v2, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->label:I

    .line 53
    .line 54
    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-ne v1, v0, :cond_2

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_2
    move-object v0, p1

    .line 62
    :goto_0
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->this$0:Lcom/transsion/usercenter/laboratory/LabCountryDialog;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->$text:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/transsion/ad/db/mcc/LocalMcc;->getMcc()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    :cond_3
    const-string v0, ""

    .line 79
    .line 80
    :cond_4
    invoke-static {p1, v1, v0}, Lcom/transsion/usercenter/laboratory/LabCountryDialog;->u0(Lcom/transsion/usercenter/laboratory/LabCountryDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabCountryDialog$handleMcc$1;->this$0:Lcom/transsion/usercenter/laboratory/LabCountryDialog;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p1
.end method
