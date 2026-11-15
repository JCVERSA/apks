.class public final Lcom/transsion/base/report/athena/sampler/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/base/report/athena/sampler/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/base/report/athena/sampler/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/base/report/athena/sampler/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/base/report/athena/sampler/b;->a:Lcom/transsion/base/report/athena/sampler/b;

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
.method public final a(DLjava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    .line 1
    const-string v0, "deviceId"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "batchKey"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    cmpg-double v0, p1, v0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-gtz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 20
    .line 21
    cmpl-double v0, p1, v2

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-ltz v0, :cond_1

    .line 25
    .line 26
    return v4

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 p3, 0x2d

    .line 36
    .line 37
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    const-string p4, "MD5"

    .line 48
    .line 49
    invoke-static {p4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    sget-object v0, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    const-string v0, "getBytes(...)"

    .line 60
    .line 61
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4, p3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    aget-byte p4, p3, v1

    .line 69
    .line 70
    and-int/lit16 p4, p4, 0xff

    .line 71
    .line 72
    shl-int/lit8 p4, p4, 0x18

    .line 73
    .line 74
    aget-byte v0, p3, v4

    .line 75
    .line 76
    and-int/lit16 v0, v0, 0xff

    .line 77
    .line 78
    shl-int/lit8 v0, v0, 0x10

    .line 79
    .line 80
    or-int/2addr p4, v0

    .line 81
    const/4 v0, 0x2

    .line 82
    aget-byte v0, p3, v0

    .line 83
    .line 84
    and-int/lit16 v0, v0, 0xff

    .line 85
    .line 86
    shl-int/lit8 v0, v0, 0x8

    .line 87
    .line 88
    or-int/2addr p4, v0

    .line 89
    const/4 v0, 0x3

    .line 90
    aget-byte p3, p3, v0

    .line 91
    .line 92
    and-int/lit16 p3, p3, 0xff

    .line 93
    .line 94
    or-int/2addr p3, p4

    .line 95
    const p4, 0x7fffffff

    .line 96
    .line 97
    .line 98
    and-int/2addr p3, p4

    .line 99
    rem-int/2addr p3, p5

    .line 100
    div-double/2addr p1, v2

    .line 101
    int-to-double p4, p5

    .line 102
    mul-double/2addr p1, p4

    .line 103
    invoke-static {p1, p2}, Lkotlin/math/MathKt;->c(D)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-ge p3, p1, :cond_2

    .line 108
    .line 109
    move v1, v4

    .line 110
    :cond_2
    return v1
.end method
