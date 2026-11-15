.class public final Lcom/transsion/transfer/wifi/util/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/transfer/wifi/util/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/wifi/util/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/util/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/transfer/wifi/util/b;->a:Lcom/transsion/transfer/wifi/util/b;

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
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    const/16 v0, 0x10

    .line 16
    .line 17
    new-array v0, v0, [C

    .line 18
    .line 19
    fill-array-data v0, :array_0

    .line 20
    .line 21
    .line 22
    :try_start_0
    sget-object v2, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v2, "getBytes(...)"

    .line 29
    .line 30
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "MD5"

    .line 34
    .line 35
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    array-length v2, p1

    .line 47
    mul-int/lit8 v2, v2, 0x2

    .line 48
    .line 49
    new-array v2, v2, [C

    .line 50
    .line 51
    array-length v3, p1

    .line 52
    const/4 v4, 0x0

    .line 53
    move v5, v4

    .line 54
    :goto_0
    if-ge v4, v3, :cond_1

    .line 55
    .line 56
    aget-byte v6, p1, v4

    .line 57
    .line 58
    add-int/lit8 v7, v5, 0x1

    .line 59
    .line 60
    ushr-int/lit8 v8, v6, 0x4

    .line 61
    .line 62
    and-int/lit8 v8, v8, 0xf

    .line 63
    .line 64
    aget-char v8, v0, v8

    .line 65
    .line 66
    aput-char v8, v2, v5

    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x2

    .line 69
    .line 70
    and-int/lit8 v6, v6, 0xf

    .line 71
    .line 72
    aget-char v6, v0, v6

    .line 73
    .line 74
    aput-char v6, v2, v7

    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/String;

    .line 82
    .line 83
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-object p1

    .line 87
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    return-object v1

    .line 91
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method
