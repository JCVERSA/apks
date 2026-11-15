.class final Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/web/fragment/WebFragmentV2;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2;


# direct methods
.method constructor <init>(Lcom/transsion/web/fragment/WebFragmentV2;Ljava/lang/String;Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3;->a:Lcom/transsion/web/fragment/WebFragmentV2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3;->c:Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$emit$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$emit$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$emit$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$emit$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$emit$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$emit$1;-><init>(Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$emit$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$emit$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$emit$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    new-instance v2, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$1;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-direct {v2, v4}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$emit$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    iput v3, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3$emit$1;->label:I

    .line 70
    .line 71
    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-ne p2, v1, :cond_3

    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    sget-object p2, Lwf/a;->a:Lwf/a$a;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3;->c:Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/transsion/web/api/WebJavascriptInterface;->getTAG()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v2, "requestApiData, success :"

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p2, v0, v1, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3;->a:Lcom/transsion/web/fragment/WebFragmentV2;

    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3;->b:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p2, p1, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3;->a:Lcom/transsion/web/fragment/WebFragmentV2;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string p2, ""

    .line 134
    .line 135
    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3;->b:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1, p2, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$request$1$3;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
