.class public Lcom/mbridge/msdk/foundation/same/net/Aa;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final C_END:Ljava/lang/String; = "_mv_end"

.field private static final C_START:Ljava/lang/String; = "mv_channel_"

.field private static a:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/Aa;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mv_channel_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_mv_end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/same/net/Aa;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/foundation/same/net/Aa;->a:Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_0
    sget-boolean p0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-nez p0, :cond_1

    .line 8
    const-string p0, ""

    sput-object p0, Lcom/mbridge/msdk/foundation/same/net/Aa;->a:Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/Aa;->g()V

    .line 10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "please don\'t update this value"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    const-string v1, "mv_channel_"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "_mv_end"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, -0x1

    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    if-eq v2, v3, :cond_1

    .line 20
    .line 21
    if-le v2, v1, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0xb

    .line 24
    .line 25
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    if-lez v1, :cond_0

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_0
    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_0

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    move-object v4, v0

    .line 45
    move-object v0, p0

    .line 46
    move-object p0, v4

    .line 47
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    move-object v0, p0

    .line 51
    :cond_1
    return-object v0
.end method

.method private static g()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/mbridge/msdk/foundation/same/net/Aa$a;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/net/Aa$a;-><init>()V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0x1f4

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
