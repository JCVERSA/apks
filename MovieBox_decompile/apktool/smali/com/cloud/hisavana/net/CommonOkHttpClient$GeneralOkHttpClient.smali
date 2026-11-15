.class Lcom/cloud/hisavana/net/CommonOkHttpClient$GeneralOkHttpClient;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/CommonOkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeneralOkHttpClient"
.end annotation


# static fields
.field private static final a:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient$GeneralOkHttpClient;->b()Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/cloud/hisavana/net/CommonOkHttpClient$GeneralOkHttpClient;->a:Lokhttp3/OkHttpClient;

    .line 10
    .line 11
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

.method static synthetic a()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/net/CommonOkHttpClient$GeneralOkHttpClient;->a:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    return-object v0
.end method

.method private static b()Lokhttp3/OkHttpClient$Builder;
    .locals 6

    .line 1
    new-instance v0, Lmh/g;

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a()Lokhttp3/EventListener$Factory;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    sget-boolean v3, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a:Z

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Lmh/g;-><init>(Lokhttp3/EventListener$Factory;IZ)V

    .line 11
    .line 12
    .line 13
    sget-boolean v1, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a:Z

    .line 14
    .line 15
    const-wide/16 v2, 0x1e

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 20
    .line 21
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/cloud/hisavana/net/ssl/HttpsTrustManager;->a()Ljavax/net/ssl/SSLSocketFactory;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-instance v5, Lcom/cloud/hisavana/net/ssl/HttpsTrustManager;

    .line 29
    .line 30
    invoke-direct {v5}, Lcom/cloud/hisavana/net/ssl/HttpsTrustManager;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4, v5}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v4, Lcom/cloud/hisavana/net/ssl/HttpsTrustManager$TrustAllHostnameVerifier;

    .line 38
    .line 39
    invoke-direct {v4}, Lcom/cloud/hisavana/net/ssl/HttpsTrustManager$TrustAllHostnameVerifier;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v4}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    .line 48
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->b()Lokhttp3/Dispatcher;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->b()Lokhttp3/Dispatcher;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance v2, Lokhttp3/Dispatcher;

    .line 72
    .line 73
    invoke-direct {v2}, Lokhttp3/Dispatcher;-><init>()V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 86
    .line 87
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 88
    .line 89
    .line 90
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 91
    .line 92
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->b()Lokhttp3/Dispatcher;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->b()Lokhttp3/Dispatcher;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    new-instance v2, Lokhttp3/Dispatcher;

    .line 116
    .line 117
    invoke-direct {v2}, Lokhttp3/Dispatcher;-><init>()V

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v3, "getBuilder: isTestRequest = "

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    sget-boolean v3, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a:Z

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/cloud/hisavana/net/NetGroup;->e()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-static {v1, v0, v2}, Lcom/cloud/hisavana/net/NetGroup;->f(Lokhttp3/OkHttpClient$Builder;Lmh/g;I)Lokhttp3/OkHttpClient$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    return-object v0
.end method
