.class final Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;->d()V
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
    c = "com.transsion.usercenter.setting.viewmodel.LocaleLanguageViewModel$getList$1"
    f = "LocaleLanguageViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;->this$0:Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;

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
    new-instance p1, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;->this$0:Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;-><init>(Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/transsion/baselib/locale/d;->f:Lcom/transsion/baselib/locale/d$b;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/baselib/locale/d$b;->e()Lcom/transsion/baselib/locale/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/transsion/baselib/locale/d;->j()Ljava/util/Locale;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-object v1, p0, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel$getList$1;->this$0:Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/baselib/locale/d$b;->e()Lcom/transsion/baselib/locale/d;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v0}, Lcom/transsion/baselib/locale/d;->q(Ljava/util/Locale;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/transsion/baselib/locale/d$b;->g()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p1}, Lcom/transsion/baselib/locale/d$b;->f()[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    array-length v5, v3

    .line 51
    const/4 v6, 0x0

    .line 52
    move v7, v6

    .line 53
    :goto_0
    if-ge v7, v5, :cond_2

    .line 54
    .line 55
    new-instance v8, Ljv/a;

    .line 56
    .line 57
    invoke-direct {v8}, Ljv/a;-><init>()V

    .line 58
    .line 59
    .line 60
    aget-object v9, v3, v7

    .line 61
    .line 62
    invoke-virtual {v8, v9}, Ljv/a;->c(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    aget-object v9, p1, v7

    .line 66
    .line 67
    invoke-virtual {v8, v9}, Ljv/a;->e(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    if-nez v7, :cond_0

    .line 73
    .line 74
    const/4 v9, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    move v9, v6

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    aget-object v9, p1, v7

    .line 79
    .line 80
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    :goto_1
    invoke-virtual {v8, v9}, Ljv/a;->d(Z)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v1}, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;->e()Landroidx/lifecycle/b0;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, v4}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    return-object p1

    .line 103
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 106
    .line 107
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method
