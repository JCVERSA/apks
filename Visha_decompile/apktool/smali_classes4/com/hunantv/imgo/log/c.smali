.class public Lcom/hunantv/imgo/log/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Lcom/hunantv/imgo/log/LogConfig;

.field private static d:I

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "baidu.com"

    const-string v1, "qq.com"

    const-string v2, "mobile.api.hunantv.com"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/imgo/log/c;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/hunantv/imgo/log/c;->b:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/hunantv/imgo/log/c;->d:I

    const-wide/16 v0, 0x1e

    sput-wide v0, Lcom/hunantv/imgo/log/c;->e:J

    return-void
.end method

.method public static a()J
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/log/c;->c:Lcom/hunantv/imgo/log/LogConfig;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x100000

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hunantv/imgo/log/LogConfig;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static b()J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public static c()J
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/log/c;->c:Lcom/hunantv/imgo/log/LogConfig;

    if-nez v0, :cond_0

    sget v0, Lcom/hunantv/imgo/log/c;->d:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hunantv/imgo/log/LogConfig;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static d()J
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/log/c;->c:Lcom/hunantv/imgo/log/LogConfig;

    if-nez v0, :cond_0

    sget-wide v0, Lcom/hunantv/imgo/log/c;->e:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hunantv/imgo/log/LogConfig;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
