.class public Lcom/transsion/athena/taaneh/aatnhe;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/athena/taaneh/aatnhe$aethna;
    }
.end annotation


# static fields
.field private static a:I = -0x1

.field private static b:Lcom/transsion/athena/taaneh/aatnhe$aethna;


# direct methods
.method private static a(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "phone"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 5
    invoke-static {p0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    :cond_1
    invoke-static {v0}, Lyg/a;->a(Landroid/telephony/TelephonyManager;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, ""

    :goto_1
    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TD-SCDMA"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "WCDMA"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CDMA2000"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v2

    :cond_6
    const/16 p0, 0x63

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    return v2

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    sput v0, Lcom/transsion/athena/taaneh/aatnhe;->a:I

    return-void
.end method

.method private static a(Landroid/net/ConnectivityManager;)Z
    .locals 1

    .line 16
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    .line 18
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4

    .line 8
    sget v0, Lcom/transsion/athena/taaneh/aatnhe;->a:I

    const/4 v1, -0x1

    const/16 v2, 0x63

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aatnhe;->b(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    sput v2, Lcom/transsion/athena/taaneh/aatnhe;->a:I

    return v2

    .line 12
    :cond_1
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aatnhe;->c(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    .line 13
    sput p0, Lcom/transsion/athena/taaneh/aatnhe;->a:I

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aatnhe;->a(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x6

    .line 15
    sput p0, Lcom/transsion/athena/taaneh/aatnhe;->a:I

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    :cond_4
    if-eqz v3, :cond_5

    .line 19
    invoke-static {p0}, Lcom/transsion/athena/taaneh/aatnhe;->a(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/transsion/athena/taaneh/aatnhe;->a:I

    goto :goto_0

    :cond_5
    const/16 p0, 0x64

    .line 20
    sput p0, Lcom/transsion/athena/taaneh/aatnhe;->a:I

    .line 21
    :goto_0
    sget p0, Lcom/transsion/athena/taaneh/aatnhe;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v2
.end method

.method private static b(Landroid/net/ConnectivityManager;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    .line 6
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x10

    .line 7
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-static {p0}, Lcom/transsion/athena/taaneh/aatnhe;->b(Landroid/net/ConnectivityManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 4
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroid/net/ConnectivityManager;)Z
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/transsion/athena/taaneh/aatnhe;->c(Landroid/content/Context;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const-string v1, "connectivity"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/transsion/athena/taaneh/aatnhe;->c(Landroid/net/ConnectivityManager;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-static {p0}, Lcom/transsion/athena/taaneh/aatnhe;->a(Landroid/net/ConnectivityManager;)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    :catch_0
    :cond_2
    return v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/transsion/athena/taaneh/aatnhe;->b:Lcom/transsion/athena/taaneh/aatnhe$aethna;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/athena/taaneh/aatnhe$aethna;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcom/transsion/athena/taaneh/aatnhe$aethna;-><init>(Lcom/transsion/athena/taaneh/aatnhe$athena;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/athena/taaneh/aatnhe;->b:Lcom/transsion/athena/taaneh/aatnhe$aethna;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "connectivity"

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    sget-object v1, Lcom/transsion/athena/taaneh/aatnhe;->b:Lcom/transsion/athena/taaneh/aatnhe$aethna;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    sget-object v0, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 42
    .line 43
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_2
    return-void
.end method
