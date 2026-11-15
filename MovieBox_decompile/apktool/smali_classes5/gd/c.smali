.class public final Lgd/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/zxing/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lkd/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p5, p6, p4}, Lcom/google/zxing/aztec/encoder/c;->d(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p2, p3}, Lgd/c;->c(Lcom/google/zxing/aztec/encoder/a;II)Lkd/b;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string p3, "Can only encode AZTEC, but got "

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method private static c(Lcom/google/zxing/aztec/encoder/a;II)Lkd/b;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/a;->a()Lkd/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lkd/b;->n()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lkd/b;->k()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    div-int v2, p1, v0

    .line 24
    .line 25
    div-int v3, p2, v1

    .line 26
    .line 27
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    mul-int v3, v0, v2

    .line 32
    .line 33
    sub-int v3, p1, v3

    .line 34
    .line 35
    div-int/lit8 v3, v3, 0x2

    .line 36
    .line 37
    mul-int v4, v1, v2

    .line 38
    .line 39
    sub-int v4, p2, v4

    .line 40
    .line 41
    div-int/lit8 v4, v4, 0x2

    .line 42
    .line 43
    new-instance v5, Lkd/b;

    .line 44
    .line 45
    invoke-direct {v5, p1, p2}, Lkd/b;-><init>(II)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    move p2, p1

    .line 50
    :goto_0
    if-ge p2, v1, :cond_2

    .line 51
    .line 52
    move v6, p1

    .line 53
    move v7, v3

    .line 54
    :goto_1
    if-ge v6, v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0, v6, p2}, Lkd/b;->h(II)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_0

    .line 61
    .line 62
    invoke-virtual {v5, v7, v4, v2, v2}, Lkd/b;->s(IIII)V

    .line 63
    .line 64
    .line 65
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 66
    .line 67
    add-int/2addr v7, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 70
    .line 71
    add-int/2addr v4, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return-object v5

    .line 74
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 77
    .line 78
    .line 79
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lkd/b;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x21

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p5, :cond_2

    .line 6
    .line 7
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 8
    .line 9
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    .line 28
    .line 29
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :cond_1
    sget-object v3, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    .line 48
    .line 49
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p5

    .line 63
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    :cond_2
    move-object v7, v0

    .line 68
    move v8, v1

    .line 69
    move v9, v2

    .line 70
    move-object v3, p1

    .line 71
    move-object v4, p2

    .line 72
    move v5, p3

    .line 73
    move v6, p4

    .line 74
    invoke-static/range {v3 .. v9}, Lgd/c;->b(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lkd/b;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method
