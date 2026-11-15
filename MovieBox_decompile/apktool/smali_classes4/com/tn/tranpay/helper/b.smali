.class public final Lcom/tn/tranpay/helper/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/tn/tranpay/helper/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tn/tranpay/helper/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/tranpay/helper/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tn/tranpay/helper/b;->a:Lcom/tn/tranpay/helper/b;

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


# virtual methods
.method public final a()Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    .line 5
    .line 6
    invoke-virtual {v3}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "connectivity"

    .line 11
    .line 12
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    instance-of v4, v3, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v3

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move-object v3, v2

    .line 26
    :goto_0
    const/4 v4, 0x0

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    sget-object v3, Llh/a;->a:Llh/a;

    .line 30
    .line 31
    const-string v5, "\u65e0\u6cd5\u83b7\u53d6 ConnectivityManager"

    .line 32
    .line 33
    invoke-static {v3, v5, v2, v1, v2}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return v4

    .line 37
    :cond_1
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    sget-object v3, Llh/a;->a:Llh/a;

    .line 44
    .line 45
    const-string v5, "\u7f51\u7edc\u4e0d\u53ef\u7528: activeNetwork \u4e3a null"

    .line 46
    .line 47
    invoke-static {v3, v5, v2, v1, v2}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return v4

    .line 51
    :cond_2
    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    sget-object v3, Llh/a;->a:Llh/a;

    .line 58
    .line 59
    const-string v5, "\u7f51\u7edc\u4e0d\u53ef\u7528: NetworkCapabilities \u4e3a null"

    .line 60
    .line 61
    invoke-static {v3, v5, v2, v1, v2}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return v4

    .line 65
    :cond_3
    const/16 v5, 0xc

    .line 66
    .line 67
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    const/16 v5, 0x10

    .line 74
    .line 75
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    move v4, v0

    .line 82
    :cond_4
    if-nez v4, :cond_5

    .line 83
    .line 84
    sget-object v3, Llh/a;->a:Llh/a;

    .line 85
    .line 86
    const-string v5, "\u7f51\u7edc\u4e0d\u53ef\u7528: \u65e0Internet\u8fde\u63a5\u6216\u672a\u9a8c\u8bc1"

    .line 87
    .line 88
    invoke-static {v3, v5, v2, v1, v2}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :cond_5
    return v4

    .line 92
    :goto_1
    sget-object v4, Llh/a;->a:Llh/a;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v6, "\u68c0\u67e5\u7f51\u7edc\u72b6\u6001\u5931\u8d25: "

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v4, v3, v2, v1, v2}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return v0
.end method
