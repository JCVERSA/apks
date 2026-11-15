.class public Lcom/hunantv/imgo/safe/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/hunantv/imgo/safe/a;


# instance fields
.field private b:Lcom/hunantv/imgo/safe/SafeInformationInterface;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/imgo/safe/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/safe/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/safe/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/hunantv/imgo/safe/a;->a:Lcom/hunantv/imgo/safe/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/hunantv/imgo/safe/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/hunantv/imgo/safe/a;->a:Lcom/hunantv/imgo/safe/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/hunantv/imgo/safe/a;

    invoke-direct {v1}, Lcom/hunantv/imgo/safe/a;-><init>()V

    sput-object v1, Lcom/hunantv/imgo/safe/a;->a:Lcom/hunantv/imgo/safe/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/hunantv/imgo/safe/a;->a:Lcom/hunantv/imgo/safe/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/safe/SafeInformationInterface;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/hunantv/imgo/safe/a;->b:Lcom/hunantv/imgo/safe/SafeInformationInterface;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hunantv/imgo/safe/a;->b:Lcom/hunantv/imgo/safe/SafeInformationInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/imgo/safe/SafeInformationInterface;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/imgo/safe/a;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "9774d56d682e549c"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    move-object v0, p0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/safe/a;->b:Lcom/hunantv/imgo/safe/SafeInformationInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/imgo/safe/SafeInformationInterface;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hunantv/imgo/safe/a;->b:Lcom/hunantv/imgo/safe/SafeInformationInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/imgo/safe/SafeInformationInterface;->getMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/safe/a;->d:Ljava/lang/String;

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hunantv/imgo/safe/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/imgo/safe/a;->d:Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hunantv/imgo/safe/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/safe/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/hunantv/imgo/safe/a;->d:Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/hunantv/imgo/safe/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/safe/a;->d:Ljava/lang/String;

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/hunantv/imgo/safe/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/safe/a;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object p0, p0, Lcom/hunantv/imgo/safe/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "cat /sys/class/net/wlan0/address "

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/LineNumberReader;

    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p0
.end method
