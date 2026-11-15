.class public abstract Lkotlinx/serialization/json/internal/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected a:I

.field public final b:Lkotlinx/serialization/json/internal/x;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlinx/serialization/json/internal/x;

    .line 5
    .line 6
    invoke-direct {v0}, Lkotlinx/serialization/json/internal/x;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lkotlinx/serialization/json/internal/a;->b:Lkotlinx/serialization/json/internal/x;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lkotlinx/serialization/json/internal/a;->d:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    return-void
.end method

.method private final B(Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 p2, 0x30

    .line 6
    .line 7
    if-gt p2, p1, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x3a

    .line 10
    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    sub-int/2addr p1, p2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p2, 0x61

    .line 16
    .line 17
    if-gt p2, p1, :cond_1

    .line 18
    .line 19
    const/16 p2, 0x67

    .line 20
    .line 21
    if-ge p1, p2, :cond_1

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x57

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 p2, 0x41

    .line 27
    .line 28
    if-gt p2, p1, :cond_2

    .line 29
    .line 30
    const/16 p2, 0x47

    .line 31
    .line 32
    if-ge p1, p2, :cond_2

    .line 33
    .line 34
    add-int/lit8 p1, p1, -0x37

    .line 35
    .line 36
    :goto_0
    return p1

    .line 37
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v0, "Invalid toHexChar char \'"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, "\' in unicode escape"

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v4, 0x6

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    move-object v0, p0

    .line 64
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 65
    .line 66
    .line 67
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 68
    .line 69
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method private final K()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lkotlinx/serialization/json/internal/a;->c:Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final O()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x22

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    return v2
.end method

.method public static final synthetic a(Lkotlinx/serialization/json/internal/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 2
    .line 3
    return p0
.end method

.method private final b(I)I
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    add-int/lit8 v1, p1, 0x1

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/16 v0, 0x75

    .line 19
    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/a;->d(Ljava/lang/CharSequence;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/b;->b(I)C

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lkotlinx/serialization/json/internal/a;->d:Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "Invalid escaped char \'"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 p1, 0x27

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v5, 0x6

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    move-object v1, p0

    .line 70
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 71
    .line 72
    .line 73
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 74
    .line 75
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_2
    const/4 v4, 0x6

    .line 80
    const/4 v5, 0x0

    .line 81
    const-string v1, "Expected escape sequence to continue, got EOF"

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    const/4 v3, 0x0

    .line 85
    move-object v0, p0

    .line 86
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 87
    .line 88
    .line 89
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 90
    .line 91
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method private final c(II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->e(II)V

    .line 2
    .line 3
    .line 4
    add-int/lit8 p2, p2, 0x1

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lkotlinx/serialization/json/internal/a;->b(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method private final d(Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    add-int/lit8 v0, p2, 0x4

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    iput p2, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->v()V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 15
    .line 16
    add-int/lit8 p2, p2, 0x4

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ge p2, v0, :cond_0

    .line 23
    .line 24
    iget p2, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 25
    .line 26
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->d(Ljava/lang/CharSequence;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    const/4 v4, 0x6

    .line 32
    const/4 v5, 0x0

    .line 33
    const-string v1, "Unexpected EOF during unicode escape"

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v0, p0

    .line 38
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 39
    .line 40
    .line 41
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 42
    .line 43
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->d:Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->B(Ljava/lang/CharSequence;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    shl-int/lit8 v2, v2, 0xc

    .line 54
    .line 55
    add-int/lit8 v3, p2, 0x1

    .line 56
    .line 57
    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/a;->B(Ljava/lang/CharSequence;I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    shl-int/lit8 v3, v3, 0x8

    .line 62
    .line 63
    add-int/2addr v2, v3

    .line 64
    add-int/lit8 v3, p2, 0x2

    .line 65
    .line 66
    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/a;->B(Ljava/lang/CharSequence;I)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    shl-int/lit8 v3, v3, 0x4

    .line 71
    .line 72
    add-int/2addr v2, v3

    .line 73
    add-int/lit8 p2, p2, 0x3

    .line 74
    .line 75
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->B(Ljava/lang/CharSequence;I)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    add-int/2addr v2, p1

    .line 80
    int-to-char p1, v2

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    return v0
.end method

.method private final h(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    add-int/lit8 v1, p1, 0x1

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    or-int/lit8 p1, p1, 0x20

    .line 29
    .line 30
    const/16 v0, 0x66

    .line 31
    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x74

    .line 35
    .line 36
    if-ne p1, v0, :cond_0

    .line 37
    .line 38
    const-string p1, "rue"

    .line 39
    .line 40
    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/a;->j(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v0, "Expected valid boolean literal prefix, but had \'"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v0, 0x27

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v5, 0x6

    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    move-object v1, p0

    .line 76
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 77
    .line 78
    .line 79
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 80
    .line 81
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_1
    const-string p1, "alse"

    .line 86
    .line 87
    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/a;->j(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    :goto_0
    return p1

    .line 92
    :cond_2
    const/4 v4, 0x6

    .line 93
    const/4 v5, 0x0

    .line 94
    const-string v1, "EOF"

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    move-object v0, p0

    .line 99
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 100
    .line 101
    .line 102
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 103
    .line 104
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method private final j(Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sub-int/2addr v0, p2

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lt v0, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    add-int v4, p2, v1

    .line 32
    .line 33
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    or-int/lit8 v3, v3, 0x20

    .line 38
    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string p2, "Expected valid boolean literal prefix, but had \'"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 p2, 0x27

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v4, 0x6

    .line 71
    const/4 v5, 0x0

    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v3, 0x0

    .line 74
    move-object v0, p0

    .line 75
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 76
    .line 77
    .line 78
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 79
    .line 80
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    add-int/2addr p2, p1

    .line 89
    iput p2, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    const/4 v4, 0x6

    .line 93
    const/4 v5, 0x0

    .line 94
    const-string v1, "Unexpected end of boolean literal"

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    move-object v0, p0

    .line 99
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 100
    .line 101
    .line 102
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 103
    .line 104
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method private final u(II)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->e(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lkotlinx/serialization/json/internal/a;->d:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "escapedString.toString()"

    .line 11
    .line 12
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lkotlinx/serialization/json/internal/a;->d:Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public static synthetic y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    iget p2, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    const-string p3, ""

    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/a;->x(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    const-string p1, "Super calls with default arguments not supported in this target, function: fail"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/a;->J(II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v6, 0x6

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v3, p1

    .line 18
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "Encountered an unknown key \'"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 p1, 0x27

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v1, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/serialization/json/internal/a;->x(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    .line 47
    .line 48
    .line 49
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 50
    .line 51
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method protected abstract C()Ljava/lang/CharSequence;
.end method

.method protected final D(C)Z
    .locals 2

    .line 1
    const/16 v0, 0x7d

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v0, 0x5d

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/16 v0, 0x3a

    .line 13
    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    :goto_0
    move p1, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_2
    const/16 v0, 0x2c

    .line 19
    .line 20
    if-ne p1, v0, :cond_3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_3
    const/4 p1, 0x0

    .line 24
    :goto_1
    xor-int/2addr p1, v1

    .line 25
    return p1
.end method

.method public final E()B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v4, 0x20

    .line 21
    .line 22
    if-eq v2, v4, :cond_1

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    const/16 v3, 0xd

    .line 27
    .line 28
    if-eq v2, v3, :cond_1

    .line 29
    .line 30
    const/16 v3, 0x9

    .line 31
    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iput v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 36
    .line 37
    invoke-static {v2}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iput v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 46
    .line 47
    return v3
.end method

.method public final F(Z)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-eq v0, v2, :cond_2

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/a;->c:Ljava/lang/String;

    .line 27
    .line 28
    return-object p1
.end method

.method public abstract G(I)I
.end method

.method public final H(Z)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x6

    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v4, 0x1

    .line 26
    if-ne v1, v4, :cond_2

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->k()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    if-ne v1, v3, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    if-ne v1, v2, :cond_4

    .line 42
    .line 43
    :goto_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/16 v4, 0x9

    .line 52
    .line 53
    if-ne v1, v4, :cond_6

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/Number;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-ne v1, v3, :cond_5

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    iget p1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v1, "found ] instead of } at path: "

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->b:Lkotlinx/serialization/json/internal/x;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {p1, v0, v1}, Lkotlinx/serialization/json/internal/w;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    throw p1

    .line 101
    :cond_6
    const/4 v4, 0x7

    .line 102
    if-ne v1, v4, :cond_8

    .line 103
    .line 104
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-ne v1, v2, :cond_7

    .line 115
    .line 116
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    iget p1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 121
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v1, "found } instead of ] at path: "

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->b:Lkotlinx/serialization/json/internal/x;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {p1, v0, v1}, Lkotlinx/serialization/json/internal/w;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    throw p1

    .line 150
    :cond_8
    const/16 v4, 0xa

    .line 151
    .line 152
    if-eq v1, v4, :cond_9

    .line 153
    .line 154
    :goto_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->m()B

    .line 155
    .line 156
    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_0

    .line 162
    .line 163
    return-void

    .line 164
    :cond_9
    const/4 v8, 0x6

    .line 165
    const/4 v9, 0x0

    .line 166
    const-string v5, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    .line 167
    .line 168
    const/4 v6, 0x0

    .line 169
    const/4 v7, 0x0

    .line 170
    move-object v4, p0

    .line 171
    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 172
    .line 173
    .line 174
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 175
    .line 176
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw p1
.end method

.method public I()I
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x20

    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    const/16 v2, 0xd

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    const/16 v2, 0x9

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 38
    .line 39
    return v0
.end method

.method public J(II)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public abstract L()Z
.end method

.method public final M()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->I()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr v1, v0

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x4

    .line 20
    if-lt v1, v3, :cond_4

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    if-ne v0, v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v4, 0x0

    .line 27
    move v5, v4

    .line 28
    :goto_0
    if-ge v5, v3, :cond_2

    .line 29
    .line 30
    const-string v6, "null"

    .line 31
    .line 32
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    add-int v8, v0, v5

    .line 41
    .line 42
    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eq v6, v7, :cond_1

    .line 47
    .line 48
    return v2

    .line 49
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    if-le v1, v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    add-int/lit8 v5, v0, 0x4

    .line 59
    .line 60
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    return v2

    .line 71
    :cond_3
    add-int/2addr v0, v3

    .line 72
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 73
    .line 74
    return v4

    .line 75
    :cond_4
    :goto_1
    return v2
.end method

.method protected final N(C)V
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x22

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "null"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget p1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x4

    .line 28
    .line 29
    const-string v0, "Use \'coerceInputValues = true\' in \'Json {}` builder to coerce nulls to default values."

    .line 30
    .line 31
    const-string v1, "Expected string literal but \'null\' literal was found"

    .line 32
    .line 33
    invoke-virtual {p0, v1, p1, v0}, Lkotlinx/serialization/json/internal/a;->x(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    .line 34
    .line 35
    .line 36
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 37
    .line 38
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->z(B)Ljava/lang/Void;

    .line 47
    .line 48
    .line 49
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 50
    .line 51
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method protected e(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->d:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public abstract f()Z
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->I()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/a;->h(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final i()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->I()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq v0, v1, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x22

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    move v1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/a;->h(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 40
    .line 41
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eq v1, v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget v4, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 56
    .line 57
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ne v1, v2, :cond_1

    .line 62
    .line 63
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 64
    .line 65
    add-int/2addr v1, v3

    .line 66
    iput v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v6, 0x6

    .line 70
    const/4 v7, 0x0

    .line 71
    const-string v3, "Expected closing quotation mark"

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    move-object v2, p0

    .line 76
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 77
    .line 78
    .line 79
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 80
    .line 81
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    const/4 v5, 0x6

    .line 86
    const/4 v6, 0x0

    .line 87
    const-string v2, "EOF"

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v4, 0x0

    .line 91
    move-object v1, p0

    .line 92
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 93
    .line 94
    .line 95
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 96
    .line 97
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_3
    :goto_1
    return v0

    .line 102
    :cond_4
    const/4 v5, 0x6

    .line 103
    const/4 v6, 0x0

    .line 104
    const-string v2, "EOF"

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    const/4 v4, 0x0

    .line 108
    move-object v1, p0

    .line 109
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 110
    .line 111
    .line 112
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 113
    .line 114
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract m()B
.end method

.method public final n(B)B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->m()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->z(B)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public o(C)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v1, v2, :cond_3

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x1

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v3, 0x20

    .line 24
    .line 25
    if-eq v1, v3, :cond_2

    .line 26
    .line 27
    const/16 v3, 0xa

    .line 28
    .line 29
    if-eq v1, v3, :cond_2

    .line 30
    .line 31
    const/16 v3, 0xd

    .line 32
    .line 33
    if-eq v1, v3, :cond_2

    .line 34
    .line 35
    const/16 v3, 0x9

    .line 36
    .line 37
    if-ne v1, v3, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iput v2, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 41
    .line 42
    if-ne v1, p1, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->N(C)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    move v1, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iput v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->N(C)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final p()J
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->I()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {v6, v0}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_f

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    if-eq v0, v1, :cond_f

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0x22

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eq v0, v1, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v4, 0x6

    .line 51
    const/4 v5, 0x0

    .line 52
    const-string v1, "EOF"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    move-object/from16 v0, p0

    .line 57
    .line 58
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 59
    .line 60
    .line 61
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 62
    .line 63
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_1
    const/4 v1, 0x0

    .line 68
    :goto_0
    const-wide/16 v7, 0x0

    .line 69
    .line 70
    move v9, v0

    .line 71
    move-wide v11, v7

    .line 72
    const/4 v5, 0x1

    .line 73
    const/4 v10, 0x0

    .line 74
    :goto_1
    if-eqz v5, :cond_7

    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    invoke-interface {v13, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    const/16 v14, 0x2d

    .line 85
    .line 86
    if-ne v13, v14, :cond_3

    .line 87
    .line 88
    if-ne v9, v0, :cond_2

    .line 89
    .line 90
    add-int/lit8 v9, v9, 0x1

    .line 91
    .line 92
    const/4 v10, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 v4, 0x6

    .line 95
    const/4 v5, 0x0

    .line 96
    const-string v1, "Unexpected symbol \'-\' in numeric literal"

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    const/4 v3, 0x0

    .line 100
    move-object/from16 v0, p0

    .line 101
    .line 102
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 103
    .line 104
    .line 105
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 106
    .line 107
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_3
    invoke-static {v13}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    if-nez v14, :cond_7

    .line 116
    .line 117
    add-int/lit8 v9, v9, 0x1

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eq v9, v5, :cond_4

    .line 128
    .line 129
    const/4 v5, 0x1

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    const/4 v5, 0x0

    .line 132
    :goto_2
    add-int/lit8 v14, v13, -0x30

    .line 133
    .line 134
    if-ltz v14, :cond_6

    .line 135
    .line 136
    const/16 v15, 0xa

    .line 137
    .line 138
    if-ge v14, v15, :cond_6

    .line 139
    .line 140
    int-to-long v3, v15

    .line 141
    mul-long/2addr v11, v3

    .line 142
    int-to-long v3, v14

    .line 143
    sub-long/2addr v11, v3

    .line 144
    cmp-long v3, v11, v7

    .line 145
    .line 146
    if-gtz v3, :cond_5

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    const/4 v4, 0x6

    .line 150
    const/4 v5, 0x0

    .line 151
    const-string v1, "Numeric value overflow"

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    const/4 v3, 0x0

    .line 155
    move-object/from16 v0, p0

    .line 156
    .line 157
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 158
    .line 159
    .line 160
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 161
    .line 162
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v1, "Unexpected symbol \'"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, "\' in numeric literal"

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const/4 v4, 0x6

    .line 189
    const/4 v5, 0x0

    .line 190
    const/4 v2, 0x0

    .line 191
    const/4 v3, 0x0

    .line 192
    move-object/from16 v0, p0

    .line 193
    .line 194
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 195
    .line 196
    .line 197
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 198
    .line 199
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 200
    .line 201
    .line 202
    throw v0

    .line 203
    :cond_7
    if-eq v0, v9, :cond_e

    .line 204
    .line 205
    if-eqz v10, :cond_8

    .line 206
    .line 207
    add-int/lit8 v3, v9, -0x1

    .line 208
    .line 209
    if-eq v0, v3, :cond_e

    .line 210
    .line 211
    :cond_8
    if-eqz v1, :cond_b

    .line 212
    .line 213
    if-eqz v5, :cond_a

    .line 214
    .line 215
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-ne v0, v2, :cond_9

    .line 224
    .line 225
    add-int/lit8 v9, v9, 0x1

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_9
    const/4 v4, 0x6

    .line 229
    const/4 v5, 0x0

    .line 230
    const-string v1, "Expected closing quotation mark"

    .line 231
    .line 232
    const/4 v2, 0x0

    .line 233
    const/4 v3, 0x0

    .line 234
    move-object/from16 v0, p0

    .line 235
    .line 236
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 237
    .line 238
    .line 239
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 240
    .line 241
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :cond_a
    const/4 v4, 0x6

    .line 246
    const/4 v5, 0x0

    .line 247
    const-string v1, "EOF"

    .line 248
    .line 249
    const/4 v2, 0x0

    .line 250
    const/4 v3, 0x0

    .line 251
    move-object/from16 v0, p0

    .line 252
    .line 253
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 254
    .line 255
    .line 256
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 257
    .line 258
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 259
    .line 260
    .line 261
    throw v0

    .line 262
    :cond_b
    :goto_3
    iput v9, v6, Lkotlinx/serialization/json/internal/a;->a:I

    .line 263
    .line 264
    if-eqz v10, :cond_c

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_c
    const-wide/high16 v0, -0x8000000000000000L

    .line 268
    .line 269
    cmp-long v0, v11, v0

    .line 270
    .line 271
    if-eqz v0, :cond_d

    .line 272
    .line 273
    neg-long v11, v11

    .line 274
    :goto_4
    return-wide v11

    .line 275
    :cond_d
    const/4 v4, 0x6

    .line 276
    const/4 v5, 0x0

    .line 277
    const-string v1, "Numeric value overflow"

    .line 278
    .line 279
    const/4 v2, 0x0

    .line 280
    const/4 v3, 0x0

    .line 281
    move-object/from16 v0, p0

    .line 282
    .line 283
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 284
    .line 285
    .line 286
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 287
    .line 288
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 289
    .line 290
    .line 291
    throw v0

    .line 292
    :cond_e
    const/4 v4, 0x6

    .line 293
    const/4 v5, 0x0

    .line 294
    const-string v1, "Expected numeric literal"

    .line 295
    .line 296
    const/4 v2, 0x0

    .line 297
    const/4 v3, 0x0

    .line 298
    move-object/from16 v0, p0

    .line 299
    .line 300
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 301
    .line 302
    .line 303
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 304
    .line 305
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :cond_f
    const/4 v4, 0x6

    .line 310
    const/4 v5, 0x0

    .line 311
    const-string v1, "EOF"

    .line 312
    .line 313
    const/4 v2, 0x0

    .line 314
    const/4 v3, 0x0

    .line 315
    move-object/from16 v0, p0

    .line 316
    .line 317
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 318
    .line 319
    .line 320
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 321
    .line 322
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 323
    .line 324
    .line 325
    throw v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/a;->K()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method protected final r(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    const/16 v2, 0x22

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v2, :cond_4

    .line 15
    .line 16
    const/16 v2, 0x5c

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p2, p3}, Lkotlinx/serialization/json/internal/a;->c(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p0, p2}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eq v7, v4, :cond_0

    .line 30
    .line 31
    :goto_1
    move v1, v3

    .line 32
    move p2, v7

    .line 33
    move p3, p2

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    const/4 v9, 0x4

    .line 36
    const/4 v10, 0x0

    .line 37
    const-string v6, "EOF"

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    move-object v5, p0

    .line 41
    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 42
    .line 43
    .line 44
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 45
    .line 46
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-lt p3, v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, p2, p3}, Lkotlinx/serialization/json/internal/a;->e(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eq v7, v4, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/4 v9, 0x4

    .line 69
    const/4 v10, 0x0

    .line 70
    const-string v6, "EOF"

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    move-object v5, p0

    .line 74
    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 75
    .line 76
    .line 77
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 78
    .line 79
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_3
    :goto_2
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    if-nez v1, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0, p2, p3}, Lkotlinx/serialization/json/internal/a;->J(II)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    goto :goto_3

    .line 95
    :cond_5
    invoke-direct {p0, p2, p3}, Lkotlinx/serialization/json/internal/a;->u(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_3
    add-int/2addr p3, v3

    .line 100
    iput p3, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 101
    .line 102
    return-object p1
.end method

.method public final s()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/a;->K()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->I()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ge v3, v0, :cond_7

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    if-eq v3, v0, :cond_7

    .line 26
    .line 27
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :cond_1
    if-nez v1, :cond_6

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    move v4, v1

    .line 51
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-static {v5}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_4

    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-lt v3, v5, :cond_2

    .line 76
    .line 77
    iget v4, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 78
    .line 79
    invoke-virtual {p0, v4, v3}, Lkotlinx/serialization/json/internal/a;->e(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v3}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-ne v4, v0, :cond_3

    .line 87
    .line 88
    iput v3, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 89
    .line 90
    invoke-direct {p0, v1, v1}, Lkotlinx/serialization/json/internal/a;->u(II)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    return-object v0

    .line 95
    :cond_3
    move v3, v4

    .line 96
    move v4, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    if-nez v4, :cond_5

    .line 99
    .line 100
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 101
    .line 102
    invoke-virtual {p0, v0, v3}, Lkotlinx/serialization/json/internal/a;->J(II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 108
    .line 109
    invoke-direct {p0, v0, v3}, Lkotlinx/serialization/json/internal/a;->u(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_1
    iput v3, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v1, "Expected beginning of the string, but got "

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const/4 v6, 0x6

    .line 142
    const/4 v7, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    const/4 v5, 0x0

    .line 145
    move-object v2, p0

    .line 146
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 147
    .line 148
    .line 149
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 150
    .line 151
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_7
    const/4 v5, 0x4

    .line 156
    const/4 v6, 0x0

    .line 157
    const-string v2, "EOF"

    .line 158
    .line 159
    const/4 v4, 0x0

    .line 160
    move-object v1, p0

    .line 161
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 162
    .line 163
    .line 164
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 165
    .line 166
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 167
    .line 168
    .line 169
    throw v0
.end method

.method public final t()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/a;->O()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v6, 0x6

    .line 21
    const/4 v7, 0x0

    .line 22
    const-string v3, "Unexpected \'null\' value instead of string literal"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v2, p0

    .line 27
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 28
    .line 29
    .line 30
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 31
    .line 32
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "JsonReader(source=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "\', currentPosition="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x29

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public v()V
    .locals 0

    .line 1
    return-void
.end method

.method public final w()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->m()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Expected EOF after parsing, but had "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v2, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 25
    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " instead"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v6, 0x6

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    move-object v2, p0

    .line 49
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 50
    .line 51
    .line 52
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 53
    .line 54
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public final x(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;
    .locals 2

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "hint"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string p3, ""

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " at path: "

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lkotlinx/serialization/json/internal/a;->b:Lkotlinx/serialization/json/internal/x;

    .line 51
    .line 52
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/x;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-static {p2, p1, p3}, Lkotlinx/serialization/json/internal/w;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    throw p1
.end method

.method public final z(B)Ljava/lang/Void;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const-string p1, "quotation mark \'\"\'"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x4

    .line 8
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    const-string p1, "comma \',\'"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v1, 0x5

    .line 14
    if-ne p1, v1, :cond_2

    .line 15
    .line 16
    const-string p1, "colon \':\'"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v1, 0x6

    .line 20
    if-ne p1, v1, :cond_3

    .line 21
    .line 22
    const-string p1, "start of the object \'{\'"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    const/4 v1, 0x7

    .line 26
    if-ne p1, v1, :cond_4

    .line 27
    .line 28
    const-string p1, "end of the object \'}\'"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_4
    const/16 v1, 0x8

    .line 32
    .line 33
    if-ne p1, v1, :cond_5

    .line 34
    .line 35
    const-string p1, "start of the array \'[\'"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_5
    const/16 v1, 0x9

    .line 39
    .line 40
    if-ne p1, v1, :cond_6

    .line 41
    .line 42
    const-string p1, "end of the array \']\'"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_6
    const-string p1, "valid token"

    .line 46
    .line 47
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 48
    .line 49
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eq v1, v2, :cond_8

    .line 58
    .line 59
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 60
    .line 61
    if-gtz v1, :cond_7

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget v2, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 69
    .line 70
    sub-int/2addr v2, v0

    .line 71
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_2

    .line 80
    :cond_8
    :goto_1
    const-string v1, "EOF"

    .line 81
    .line 82
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, "Expected "

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, ", but had \'"

    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, "\' instead"

    .line 104
    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    iget p1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    .line 113
    .line 114
    add-int/lit8 v5, p1, -0x1

    .line 115
    .line 116
    const/4 v7, 0x4

    .line 117
    const/4 v8, 0x0

    .line 118
    const/4 v6, 0x0

    .line 119
    move-object v3, p0

    .line 120
    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 121
    .line 122
    .line 123
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 124
    .line 125
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 126
    .line 127
    .line 128
    throw p1
.end method
