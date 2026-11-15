.class public Lcom/cloud/tmc/integration/utils/FastClickUtil;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final DOUBLE_DEVIATE_TIME:J = 0x190L

.field private static mLastChickTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static isFastDoubleClick()Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/cloud/tmc/integration/utils/FastClickUtil;->mLastChickTime:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x190

    .line 10
    .line 11
    cmp-long v4, v2, v4

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-lez v4, :cond_0

    .line 15
    .line 16
    sput-wide v0, Lcom/cloud/tmc/integration/utils/FastClickUtil;->mLastChickTime:J

    .line 17
    .line 18
    return v5

    .line 19
    :cond_0
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    cmp-long v2, v2, v0

    .line 22
    .line 23
    if-gez v2, :cond_1

    .line 24
    .line 25
    sput-wide v0, Lcom/cloud/tmc/integration/utils/FastClickUtil;->mLastChickTime:J

    .line 26
    .line 27
    return v5

    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    return v0
.end method
