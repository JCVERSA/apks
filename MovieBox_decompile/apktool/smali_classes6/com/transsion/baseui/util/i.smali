.class public final Lcom/transsion/baseui/util/i;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/baseui/util/i;

.field private static b:J

.field private static c:J

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/baseui/util/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baseui/util/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/baseui/util/i;->a:Lcom/transsion/baseui/util/i;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    sput v0, Lcom/transsion/baseui/util/i;->d:I

    .line 11
    .line 12
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
.method public final a(J)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/transsion/baseui/util/i;->c:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const/16 v2, 0x3e8

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    div-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-gtz v4, :cond_0

    .line 17
    .line 18
    const-wide/16 v0, 0x1

    .line 19
    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    sput-wide v4, Lcom/transsion/baseui/util/i;->c:J

    .line 25
    .line 26
    sget-wide v4, Lcom/transsion/baseui/util/i;->b:J

    .line 27
    .line 28
    sub-long v4, p1, v4

    .line 29
    .line 30
    div-long/2addr v4, v0

    .line 31
    sput-wide p1, Lcom/transsion/baseui/util/i;->b:J

    .line 32
    .line 33
    cmp-long p1, v4, v2

    .line 34
    .line 35
    if-gtz p1, :cond_1

    .line 36
    .line 37
    const-string p1, "0KB/s"

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_1
    const/4 p1, 0x1

    .line 41
    invoke-static {v4, v5, p1}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, "/s"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method
