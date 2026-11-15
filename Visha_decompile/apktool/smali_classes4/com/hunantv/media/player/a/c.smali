.class public Lcom/hunantv/media/player/a/c;
.super Lcom/hunantv/media/player/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 0

    .line 1
    const p0, 0x30d40

    return p0
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/hunantv/media/player/utils/SocketUtil;->getAllAddressThrowable(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/a/b;->c(Ljava/lang/String;)V

    const/16 v0, 0x64

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/a/b;->a(I)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/a/b;->c(Ljava/lang/String;)V

    const/16 v0, 0x6a

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/a/b;->c(Ljava/lang/String;)V

    const/16 v0, 0x69

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/a/b;->c(Ljava/lang/String;)V

    const/16 v0, 0x68

    goto :goto_0

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
