.class public final Lvd/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/zxing/i;


# static fields
.field private static final a:[Lcom/google/zxing/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/google/zxing/j;

    .line 3
    .line 4
    sput-object v0, Lvd/b;->a:[Lcom/google/zxing/j;

    .line 5
    .line 6
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

.method private static c(Lcom/google/zxing/b;Ljava/util/Map;Z)[Lcom/google/zxing/j;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lxd/a;->d(Lcom/google/zxing/b;Ljava/util/Map;Z)Lxd/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lxd/b;->b()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, [Lcom/google/zxing/k;

    .line 29
    .line 30
    invoke-virtual {p0}, Lxd/b;->a()Lkd/b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x4

    .line 35
    aget-object v2, p2, v2

    .line 36
    .line 37
    const/4 v3, 0x5

    .line 38
    aget-object v3, p2, v3

    .line 39
    .line 40
    const/4 v4, 0x6

    .line 41
    aget-object v4, p2, v4

    .line 42
    .line 43
    const/4 v5, 0x7

    .line 44
    aget-object v5, p2, v5

    .line 45
    .line 46
    invoke-static {p2}, Lvd/b;->f([Lcom/google/zxing/k;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-static {p2}, Lvd/b;->d([Lcom/google/zxing/k;)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/decoder/i;->i(Lkd/b;Lcom/google/zxing/k;Lcom/google/zxing/k;Lcom/google/zxing/k;Lcom/google/zxing/k;II)Lkd/d;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lcom/google/zxing/j;

    .line 59
    .line 60
    invoke-virtual {v1}, Lkd/d;->k()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1}, Lkd/d;->g()[B

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    .line 69
    .line 70
    invoke-direct {v2, v3, v4, p2, v5}, Lcom/google/zxing/j;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/k;Lcom/google/zxing/BarcodeFormat;)V

    .line 71
    .line 72
    .line 73
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    .line 74
    .line 75
    invoke-virtual {v1}, Lkd/d;->b()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, p2, v3}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->ERRORS_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    .line 83
    .line 84
    invoke-virtual {v1}, Lkd/d;->d()Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, p2, v3}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->ERASURES_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    .line 92
    .line 93
    invoke-virtual {v1}, Lkd/d;->c()Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, p2, v3}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lkd/d;->f()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lvd/c;

    .line 105
    .line 106
    if-eqz p2, :cond_0

    .line 107
    .line 108
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->PDF417_EXTRA_METADATA:Lcom/google/zxing/ResultMetadataType;

    .line 109
    .line 110
    invoke-virtual {v2, v3, p2}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    .line 114
    .line 115
    invoke-virtual {p0}, Lxd/b;->c()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v2, p2, v3}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    .line 127
    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v4, "]L"

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Lkd/d;->j()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v2, p2, v1}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_1
    sget-object p0, Lvd/b;->a:[Lcom/google/zxing/j;

    .line 158
    .line 159
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    check-cast p0, [Lcom/google/zxing/j;

    .line 164
    .line 165
    return-object p0
.end method

.method private static d([Lcom/google/zxing/k;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v0, p0, v0

    .line 3
    .line 4
    const/4 v1, 0x4

    .line 5
    aget-object v1, p0, v1

    .line 6
    .line 7
    invoke-static {v0, v1}, Lvd/b;->e(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x6

    .line 12
    aget-object v1, p0, v1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    aget-object v2, p0, v2

    .line 16
    .line 17
    invoke-static {v1, v2}, Lvd/b;->e(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    mul-int/lit8 v1, v1, 0x11

    .line 22
    .line 23
    div-int/lit8 v1, v1, 0x12

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    aget-object v1, p0, v1

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aget-object v2, p0, v2

    .line 34
    .line 35
    invoke-static {v1, v2}, Lvd/b;->e(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x7

    .line 40
    aget-object v2, p0, v2

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    aget-object p0, p0, v3

    .line 44
    .line 45
    invoke-static {v2, p0}, Lvd/b;->e(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    mul-int/lit8 p0, p0, 0x11

    .line 50
    .line 51
    div-int/lit8 p0, p0, 0x12

    .line 52
    .line 53
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0
.end method

.method private static e(Lcom/google/zxing/k;Lcom/google/zxing/k;)I
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/k;->c()F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {p1}, Lcom/google/zxing/k;->c()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    sub-float/2addr p0, p1

    .line 15
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    float-to-int p0, p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method private static f([Lcom/google/zxing/k;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v0, p0, v0

    .line 3
    .line 4
    const/4 v1, 0x4

    .line 5
    aget-object v1, p0, v1

    .line 6
    .line 7
    invoke-static {v0, v1}, Lvd/b;->g(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x6

    .line 12
    aget-object v1, p0, v1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    aget-object v2, p0, v2

    .line 16
    .line 17
    invoke-static {v1, v2}, Lvd/b;->g(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    mul-int/lit8 v1, v1, 0x11

    .line 22
    .line 23
    div-int/lit8 v1, v1, 0x12

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    aget-object v1, p0, v1

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aget-object v2, p0, v2

    .line 34
    .line 35
    invoke-static {v1, v2}, Lvd/b;->g(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x7

    .line 40
    aget-object v2, p0, v2

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    aget-object p0, p0, v3

    .line 44
    .line 45
    invoke-static {v2, p0}, Lvd/b;->g(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    mul-int/lit8 p0, p0, 0x11

    .line 50
    .line 51
    div-int/lit8 p0, p0, 0x12

    .line 52
    .line 53
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0
.end method

.method private static g(Lcom/google/zxing/k;Lcom/google/zxing/k;)I
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/k;->c()F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {p1}, Lcom/google/zxing/k;->c()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    sub-float/2addr p0, p1

    .line 15
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    float-to-int p0, p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const p0, 0x7fffffff

    .line 22
    .line 23
    .line 24
    return p0
.end method


# virtual methods
.method public a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0}, Lvd/b;->c(Lcom/google/zxing/b;Ljava/util/Map;Z)[Lcom/google/zxing/j;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    array-length p2, p1

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    aget-object p1, p1, v0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    throw p1
.end method

.method public b(Lcom/google/zxing/b;)Lcom/google/zxing/j;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lvd/b;->a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method
