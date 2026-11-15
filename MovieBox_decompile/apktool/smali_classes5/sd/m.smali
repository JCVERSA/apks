.class public final Lsd/m;
.super Lsd/q;
.source "source.java"


# static fields
.field private static final b:[I

.field private static final c:[I

.field private static final d:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    filled-new-array {v0, v0, v0, v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Lsd/m;->b:[I

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    filled-new-array {v1, v0, v0}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sput-object v2, Lsd/m;->c:[I

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    new-array v2, v2, [[I

    .line 18
    .line 19
    filled-new-array {v0, v0, v1, v1, v0}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v3, v2, v4

    .line 25
    .line 26
    filled-new-array {v1, v0, v0, v0, v1}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aput-object v3, v2, v0

    .line 31
    .line 32
    filled-new-array {v0, v1, v0, v0, v1}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x2

    .line 37
    aput-object v3, v2, v4

    .line 38
    .line 39
    filled-new-array {v1, v1, v0, v0, v0}, [I

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    aput-object v3, v2, v1

    .line 44
    .line 45
    filled-new-array {v0, v0, v1, v0, v1}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x4

    .line 50
    aput-object v3, v2, v4

    .line 51
    .line 52
    filled-new-array {v1, v0, v1, v0, v0}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v4, 0x5

    .line 57
    aput-object v3, v2, v4

    .line 58
    .line 59
    filled-new-array {v0, v1, v1, v0, v0}, [I

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x6

    .line 64
    aput-object v3, v2, v4

    .line 65
    .line 66
    filled-new-array {v0, v0, v0, v1, v1}, [I

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const/4 v4, 0x7

    .line 71
    aput-object v3, v2, v4

    .line 72
    .line 73
    filled-new-array {v1, v0, v0, v1, v0}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/16 v4, 0x8

    .line 78
    .line 79
    aput-object v3, v2, v4

    .line 80
    .line 81
    filled-new-array {v0, v1, v0, v1, v0}, [I

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/16 v1, 0x9

    .line 86
    .line 87
    aput-object v0, v2, v1

    .line 88
    .line 89
    sput-object v2, Lsd/m;->d:[[I

    .line 90
    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsd/q;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)[Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rem-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    const/16 v1, 0x50

    .line 10
    .line 11
    if-gt v0, v1, :cond_2

    .line 12
    .line 13
    invoke-static {p1}, Lsd/q;->c(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    mul-int/lit8 v1, v0, 0x9

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x9

    .line 19
    .line 20
    new-array v1, v1, [Z

    .line 21
    .line 22
    sget-object v2, Lsd/m;->b:[I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-static {v1, v3, v2, v4}, Lsd/q;->b([ZI[IZ)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    move v5, v3

    .line 31
    :goto_0
    if-ge v5, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/16 v7, 0xa

    .line 38
    .line 39
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    add-int/lit8 v8, v5, 0x1

    .line 44
    .line 45
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    new-array v7, v7, [I

    .line 54
    .line 55
    move v9, v3

    .line 56
    :goto_1
    const/4 v10, 0x5

    .line 57
    if-ge v9, v10, :cond_0

    .line 58
    .line 59
    mul-int/lit8 v10, v9, 0x2

    .line 60
    .line 61
    sget-object v11, Lsd/m;->d:[[I

    .line 62
    .line 63
    aget-object v12, v11, v6

    .line 64
    .line 65
    aget v12, v12, v9

    .line 66
    .line 67
    aput v12, v7, v10

    .line 68
    .line 69
    add-int/2addr v10, v4

    .line 70
    aget-object v11, v11, v8

    .line 71
    .line 72
    aget v11, v11, v9

    .line 73
    .line 74
    aput v11, v7, v10

    .line 75
    .line 76
    add-int/lit8 v9, v9, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    invoke-static {v1, v2, v7, v4}, Lsd/q;->b([ZI[IZ)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    add-int/2addr v2, v6

    .line 84
    add-int/lit8 v5, v5, 0x2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    sget-object p1, Lsd/m;->c:[I

    .line 88
    .line 89
    invoke-static {v1, v2, p1, v4}, Lsd/q;->b([ZI[IZ)I

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v2, "Requested contents should be less than 80 digits long, but got "

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    const-string v0, "The length of the input should be even"

    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method

.method protected g()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
