.class public final Lcom/tn/tranpay/helper/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/tn/tranpay/helper/a;

.field private static b:J

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tn/tranpay/helper/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/tranpay/helper/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tn/tranpay/helper/a;->a:Lcom/tn/tranpay/helper/a;

    .line 7
    .line 8
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
.method public final a(IJ)Z
    .locals 6

    .line 1
    sget v0, Lcom/tn/tranpay/helper/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    sput p1, Lcom/tn/tranpay/helper/a;->c:I

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    sput-wide p1, Lcom/tn/tranpay/helper/a;->b:J

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    sget-wide v4, Lcom/tn/tranpay/helper/a;->b:J

    .line 20
    .line 21
    sub-long/2addr v2, v4

    .line 22
    cmp-long p2, v2, p2

    .line 23
    .line 24
    if-gtz p2, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_1
    sput p1, Lcom/tn/tranpay/helper/a;->c:I

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    sput-wide p1, Lcom/tn/tranpay/helper/a;->b:J

    .line 35
    .line 36
    return v1
.end method
