.class public Lorg/mvel2/util/r;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/mvel2/util/r;->a:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x30s
        0x31s
        0x32s
        0x30s
        0x30s
        0x32s
        0x32s
        0x34s
        0x35s
        0x35s
        0x30s
        0x31s
        0x32s
        0x36s
        0x32s
        0x33s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x32s
    .end array-data
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

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x3f

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    array-length v3, p0

    .line 18
    const/16 v4, 0x30

    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    if-ge v2, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v3, v5, :cond_2

    .line 28
    .line 29
    aget-char v3, p0, v2

    .line 30
    .line 31
    const/16 v6, 0x2c

    .line 32
    .line 33
    if-eq v3, v6, :cond_2

    .line 34
    .line 35
    const/16 v5, 0x41

    .line 36
    .line 37
    if-lt v3, v5, :cond_1

    .line 38
    .line 39
    const/16 v5, 0x5a

    .line 40
    .line 41
    if-gt v3, v5, :cond_1

    .line 42
    .line 43
    if-eq v3, v1, :cond_1

    .line 44
    .line 45
    sget-object v1, Lorg/mvel2/util/r;->a:[C

    .line 46
    .line 47
    add-int/lit8 v5, v3, -0x41

    .line 48
    .line 49
    aget-char v1, v1, v5

    .line 50
    .line 51
    if-eq v1, v4, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_0
    move v1, v3

    .line 57
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_3

    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return-object p0

    .line 68
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    :goto_1
    if-ge p0, v5, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    add-int/lit8 p0, p0, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method
