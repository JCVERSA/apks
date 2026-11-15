.class public final Lij/x;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lij/x;

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lij/x;

    .line 2
    .line 3
    invoke-direct {v0}, Lij/x;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lij/x;->a:Lij/x;

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    sput-wide v0, Lij/x;->b:J

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

.method private final a()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private final c(J)J
    .locals 3

    .line 1
    invoke-direct {p0}, Lij/x;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :goto_0
    cmp-long v2, v0, p1

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lij/x;->a()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized b()J
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lij/x;->a()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    sget-wide v2, Lij/x;->b:J

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-ltz v4, :cond_2

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    sget-wide v7, Lij/x;->c:J

    .line 19
    .line 20
    const-wide/16 v9, 0x1

    .line 21
    .line 22
    add-long/2addr v7, v9

    .line 23
    const-wide/16 v9, 0xfff

    .line 24
    .line 25
    and-long/2addr v7, v9

    .line 26
    sput-wide v7, Lij/x;->c:J

    .line 27
    .line 28
    cmp-long v4, v7, v5

    .line 29
    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    invoke-direct {p0, v2, v3}, Lij/x;->c(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    sput-wide v5, Lij/x;->c:J

    .line 40
    .line 41
    :cond_1
    :goto_0
    sput-wide v0, Lij/x;->b:J

    .line 42
    .line 43
    const-wide v2, 0x18cc251f400L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    sub-long/2addr v0, v2

    .line 49
    const/16 v2, 0x16

    .line 50
    .line 51
    shl-long/2addr v0, v2

    .line 52
    const-wide/16 v2, 0x1000

    .line 53
    .line 54
    or-long/2addr v0, v2

    .line 55
    sget-wide v2, Lij/x;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    or-long/2addr v0, v2

    .line 58
    monitor-exit p0

    .line 59
    return-wide v0

    .line 60
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v5, "\u7cfb\u7edf\u65f6\u949f\u56de\u62e8\uff0c\u62d2\u7edd\u751f\u6210 ID\uff08lastTimestamp="

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ", now="

    .line 74
    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, "\uff09"

    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw v0
.end method
