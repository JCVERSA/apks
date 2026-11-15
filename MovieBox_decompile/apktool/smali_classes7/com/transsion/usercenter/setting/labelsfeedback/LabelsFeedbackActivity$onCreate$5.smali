.class final Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.transsion.usercenter.setting.labelsfeedback.LabelsFeedbackActivity$onCreate$5"
    f = "LabelsFeedbackActivity.kt"
    l = {
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;->this$0:Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;

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
    new-instance p1, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;->this$0:Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;->label:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lkg/c;->e:Lkg/c$a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lkg/c$a;->a()Lkg/c;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-class v1, Lmv/a;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lmv/a;

    .line 42
    .line 43
    :try_start_1
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 44
    .line 45
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput v2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;->label:I

    .line 50
    .line 51
    invoke-interface {p1, v1, p0}, Lmv/a;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity$onCreate$5;->this$0:Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;->i0(Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    const-string v1, "model"

    .line 77
    .line 78
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;->getLabelList()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->setOptions(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;->h0(Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;)Lcom/transsion/usercenter/setting/labelsfeedback/c;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->Companion:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;->d(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p1
.end method
