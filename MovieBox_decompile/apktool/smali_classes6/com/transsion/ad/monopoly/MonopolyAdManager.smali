.class public final Lcom/transsion/ad/monopoly/MonopolyAdManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/monopoly/MonopolyAdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/monopoly/MonopolyAdManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/monopoly/MonopolyAdManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/monopoly/MonopolyAdManager;->a:Lcom/transsion/ad/monopoly/MonopolyAdManager;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/ad/monopoly/MonopolyAdManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/monopoly/MonopolyAdManager;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

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
    iput v1, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;-><init>(Lcom/transsion/ad/monopoly/MonopolyAdManager;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    iget-object p1, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 59
    .line 60
    iget-object p2, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p2, Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    iget-object p1, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$1:Ljava/lang/Object;

    .line 69
    .line 70
    move-object p2, p1

    .line 71
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    iget-object p1, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object p3, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    .line 85
    .line 86
    iput-object p1, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput-object p2, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$1:Ljava/lang/Object;

    .line 89
    .line 90
    iput v5, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

    .line 91
    .line 92
    invoke-virtual {p3, v0}, Lcom/transsion/ad/monopoly/manager/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    if-ne p3, v1, :cond_5

    .line 97
    .line 98
    return-object v1

    .line 99
    :cond_5
    :goto_1
    sget-object p3, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;

    .line 100
    .line 101
    iput-object p1, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object p2, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$1:Ljava/lang/Object;

    .line 104
    .line 105
    iput v4, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

    .line 106
    .line 107
    invoke-virtual {p3, v0}, Lcom/transsion/ad/monopoly/manager/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    if-ne p3, v1, :cond_6

    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_6
    move-object v6, p2

    .line 115
    move-object p2, p1

    .line 116
    move-object p1, v6

    .line 117
    :goto_2
    sget-object p3, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    .line 118
    .line 119
    invoke-virtual {p3}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->n()V

    .line 120
    .line 121
    .line 122
    sget-object p3, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    iput-object v2, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$0:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v2, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$1:Ljava/lang/Object;

    .line 128
    .line 129
    iput v3, v0, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

    .line 130
    .line 131
    invoke-virtual {p3, p2, p1, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->t(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-ne p1, v1, :cond_7

    .line 136
    .line 137
    return-object v1

    .line 138
    :cond_7
    :goto_3
    sget-object p1, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PSActivateManager;->e()V

    .line 141
    .line 142
    .line 143
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p1
.end method
