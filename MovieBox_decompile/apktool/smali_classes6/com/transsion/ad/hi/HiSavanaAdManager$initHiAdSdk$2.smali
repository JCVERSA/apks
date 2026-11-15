.class final Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/hi/HiSavanaAdManager;->d(Ljava/lang/String;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/Result;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lkotlin/Result;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ad.hi.HiSavanaAdManager$initHiAdSdk$2"
    f = "HiSavanaAdManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adTestDevice:Z

.field final synthetic $hisavanaAppId:Ljava/lang/String;

.field final synthetic $isDebug:Z

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$hisavanaAppId:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$isDebug:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$adTestDevice:Z

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

.method public static synthetic a(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->d(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v3, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2$1$1$1$1;

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    invoke-direct {v3, p0}, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2$1$1$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
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
    new-instance p1, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$hisavanaAppId:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$isDebug:Z

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$adTestDevice:Z

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;-><init>(Ljava/lang/String;ZZLkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$hisavanaAppId:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$isDebug:Z

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/transsion/ad/hi/HiSavanaAdManager$initHiAdSdk$2;->$adTestDevice:Z

    .line 16
    .line 17
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 18
    .line 19
    sget-object v2, Lkg/c;->e:Lkg/c$a;

    .line 20
    .line 21
    invoke-virtual {v2}, Lkg/c$a;->a()Lkg/c;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lkg/c;->g()Lokhttp3/OkHttpClient;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move-object v2, v3

    .line 40
    :goto_0
    invoke-static {v2}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->r(Lokhttp3/Dispatcher;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    new-instance v3, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setAppId(Ljava/lang/String;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Lcom/blankj/utilcode/util/c;->a()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {p1, v3}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setAppIconId(I)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v4, 0x1

    .line 74
    invoke-virtual {p1, v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setDebug(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    move v3, v4

    .line 83
    :cond_1
    invoke-virtual {p1, v3}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->testDevice(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, v4}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setMuteVideo(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance v0, Lcom/transsion/ad/hi/a;

    .line 92
    .line 93
    invoke-direct {v0}, Lcom/transsion/ad/hi/a;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setCloudCompleteListener(Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->build()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {v2, p1}, Lcom/hisavana/mediation/config/TAdManager;->init(Landroid/content/Context;Lcom/hisavana/mediation/config/TAdManager$AdConfig;)V

    .line 105
    .line 106
    .line 107
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    :cond_2
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    goto :goto_2

    .line 114
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 115
    .line 116
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 132
    .line 133
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
.end method
