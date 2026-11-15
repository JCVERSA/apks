.class public final Lcom/tn/tranpay/TranPayClient;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/tn/tranpay/TranPayClient;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tn/tranpay/TranPayClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/tranpay/TranPayClient;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

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

.method public static final synthetic a(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tn/tranpay/TranPayClient;->b:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->q()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    sget-object p1, Llh/a;->a:Llh/a;

    .line 27
    .line 28
    const-string p2, "TranPay must be initialized!"

    .line 29
    .line 30
    invoke-static {p1, p2, v2, v1, v2}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/tn/tranpay/b;

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    invoke-direct {p1, v0, p2}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p3, p1, v2}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/tn/tranpay/helper/b;->a:Lcom/tn/tranpay/helper/b;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/tn/tranpay/helper/b;->a()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    sget-object p1, Llh/a;->a:Llh/a;

    .line 52
    .line 53
    const-string p2, "Network is not available!"

    .line 54
    .line 55
    invoke-static {p1, p2, v2, v1, v2}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/tn/tranpay/b;

    .line 59
    .line 60
    const/4 p2, -0x2

    .line 61
    const-string v0, "Network is not available. Please check your network connection."

    .line 62
    .line 63
    invoke-direct {p1, p2, v0}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p3, p1, v2}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    sget-boolean v0, Lcom/tn/tranpay/TranPayClient;->b:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    sget-object v0, Llh/a;->a:Llh/a;

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v4, "launchBillingFlow with context and params is "

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v0, v3, v2, v1, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->a:Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;

    .line 98
    .line 99
    invoke-virtual {v0, p1, p2, p3}, Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;->a(Landroid/content/Context;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final c(Landroidx/appcompat/app/AppCompatActivity;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V
    .locals 6

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->q()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    sget-object p1, Llh/a;->a:Llh/a;

    .line 27
    .line 28
    const-string p2, "TranPay must be initialized!"

    .line 29
    .line 30
    invoke-static {p1, p2, v3, v2, v3}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/tn/tranpay/b;

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    invoke-direct {p1, v0, p2}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p3, p1, v3}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    sget-object v1, Lcom/tn/tranpay/helper/b;->a:Lcom/tn/tranpay/helper/b;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/tn/tranpay/helper/b;->a()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    sget-object p1, Llh/a;->a:Llh/a;

    .line 52
    .line 53
    const-string p2, "Network is not available!"

    .line 54
    .line 55
    invoke-static {p1, p2, v3, v2, v3}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/tn/tranpay/b;

    .line 59
    .line 60
    const/4 p2, -0x2

    .line 61
    const-string v0, "Network is not available. Please check your network connection."

    .line 62
    .line 63
    invoke-direct {p1, p2, v0}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p3, p1, v3}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    sget-boolean v1, Lcom/tn/tranpay/TranPayClient;->b:Z

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    sget-object v1, Llh/a;->a:Llh/a;

    .line 89
    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v5, "launchBillingFlow and params is "

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v1, v4, v3, v2, v3}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 111
    .line 112
    sget-object v1, Lcom/tn/tranpay/fragment/PayLoadingFragment;->g:Lcom/tn/tranpay/fragment/PayLoadingFragment$a;

    .line 113
    .line 114
    invoke-virtual {v1, p2, p3}, Lcom/tn/tranpay/fragment/PayLoadingFragment$a;->a(Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string v1, "pay_loading_fragment"

    .line 123
    .line 124
    invoke-virtual {p3, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const/4 p1, 0x1

    .line 128
    sput-boolean p1, Lcom/tn/tranpay/TranPayClient;->b:Z

    .line 129
    .line 130
    sget-object p1, Lcom/tn/tranpay/TranPayClient$launchBillingFlow$1$1;->INSTANCE:Lcom/tn/tranpay/TranPayClient$launchBillingFlow$1$1;

    .line 131
    .line 132
    invoke-virtual {p3, p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->i0(Lkotlin/jvm/functions/Function0;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p2}, Lcom/tn/tranpay/TranPayConfiguration;->D(Lcom/tn/tranpay/BillingParams;)V

    .line 136
    .line 137
    .line 138
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 139
    .line 140
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception p1

    .line 145
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 146
    .line 147
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_0
    return-void
.end method
