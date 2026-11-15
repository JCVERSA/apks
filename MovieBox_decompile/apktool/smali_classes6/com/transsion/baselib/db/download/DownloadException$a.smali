.class public final Lcom/transsion/baselib/db/download/DownloadException$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/download/DownloadException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baselib/db/download/DownloadException$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/baselib/db/download/DownloadException;->access$getDEFAULT_CODE$cp()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final b(Ljava/lang/Exception;I)I
    .locals 1

    .line 1
    const-string v0, "exception"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Ljava/net/UnknownHostException;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x1f5

    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    instance-of v0, p1, Ljava/net/UnknownServiceException;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 p1, 0x1f6

    .line 18
    .line 19
    return p1

    .line 20
    :cond_1
    instance-of v0, p1, Ljava/net/BindException;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/16 p1, 0x1f8

    .line 25
    .line 26
    return p1

    .line 27
    :cond_2
    instance-of v0, p1, Ljava/net/ConnectException;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    const/16 p1, 0x1f9

    .line 32
    .line 33
    return p1

    .line 34
    :cond_3
    instance-of v0, p1, Ljava/net/NoRouteToHostException;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    const/16 p1, 0x1fa

    .line 39
    .line 40
    return p1

    .line 41
    :cond_4
    instance-of v0, p1, Ljava/net/PortUnreachableException;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    const/16 p1, 0x1fb

    .line 46
    .line 47
    return p1

    .line 48
    :cond_5
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    const/16 p1, 0x1f7

    .line 53
    .line 54
    return p1

    .line 55
    :cond_6
    instance-of v0, p1, Ljava/net/MalformedURLException;

    .line 56
    .line 57
    if-eqz v0, :cond_7

    .line 58
    .line 59
    const/16 p1, 0x1fc

    .line 60
    .line 61
    return p1

    .line 62
    :cond_7
    instance-of v0, p1, Ljava/net/HttpRetryException;

    .line 63
    .line 64
    if-eqz v0, :cond_8

    .line 65
    .line 66
    const/16 p1, 0x1fd

    .line 67
    .line 68
    return p1

    .line 69
    :cond_8
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 70
    .line 71
    if-eqz v0, :cond_9

    .line 72
    .line 73
    const/16 p1, 0x1fe

    .line 74
    .line 75
    return p1

    .line 76
    :cond_9
    instance-of v0, p1, Ljavax/net/ssl/SSLKeyException;

    .line 77
    .line 78
    if-eqz v0, :cond_a

    .line 79
    .line 80
    const/16 p1, 0x1ff

    .line 81
    .line 82
    return p1

    .line 83
    :cond_a
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 84
    .line 85
    if-eqz v0, :cond_b

    .line 86
    .line 87
    const/16 p1, 0x200

    .line 88
    .line 89
    return p1

    .line 90
    :cond_b
    instance-of p1, p1, Ljavax/net/ssl/SSLProtocolException;

    .line 91
    .line 92
    if-eqz p1, :cond_c

    .line 93
    .line 94
    const/16 p1, 0x201

    .line 95
    .line 96
    return p1

    .line 97
    :cond_c
    return p2
.end method

.method public final c(I)Z
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :pswitch_0
    const/4 p1, 0x1

    .line 7
    :goto_0
    return p1

    .line 8
    nop

    .line 9
    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
