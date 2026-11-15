.class public final Lvz/y;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final e:Lvz/y;

.field public static final f:Lvz/y;

.field public static final g:Lvz/y;

.field public static final h:Lvz/y;

.field public static final i:Lvz/y;

.field public static final j:Lvz/y;

.field public static final k:Lvz/y;

.field public static final l:Lvz/y;

.field public static final m:Lvz/y;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lvz/y;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "VZCBSIFJD"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v1, v3}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lvz/y;->e:Lvz/y;

    .line 11
    .line 12
    new-instance v0, Lvz/y;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-direct {v0, v3, v2, v3, v1}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lvz/y;->f:Lvz/y;

    .line 19
    .line 20
    new-instance v0, Lvz/y;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    invoke-direct {v0, v1, v2, v1, v3}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lvz/y;->g:Lvz/y;

    .line 27
    .line 28
    new-instance v0, Lvz/y;

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-direct {v0, v3, v2, v3, v1}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lvz/y;->h:Lvz/y;

    .line 35
    .line 36
    new-instance v0, Lvz/y;

    .line 37
    .line 38
    const/4 v3, 0x5

    .line 39
    invoke-direct {v0, v1, v2, v1, v3}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lvz/y;->i:Lvz/y;

    .line 43
    .line 44
    new-instance v0, Lvz/y;

    .line 45
    .line 46
    const/4 v1, 0x6

    .line 47
    invoke-direct {v0, v3, v2, v3, v1}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lvz/y;->j:Lvz/y;

    .line 51
    .line 52
    new-instance v0, Lvz/y;

    .line 53
    .line 54
    const/4 v3, 0x7

    .line 55
    invoke-direct {v0, v1, v2, v1, v3}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lvz/y;->k:Lvz/y;

    .line 59
    .line 60
    new-instance v0, Lvz/y;

    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    invoke-direct {v0, v3, v2, v3, v1}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lvz/y;->l:Lvz/y;

    .line 68
    .line 69
    new-instance v0, Lvz/y;

    .line 70
    .line 71
    const/16 v3, 0x9

    .line 72
    .line 73
    invoke-direct {v0, v1, v2, v1, v3}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lvz/y;->m:Lvz/y;

    .line 77
    .line 78
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lvz/y;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lvz/y;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lvz/y;->c:I

    .line 9
    .line 10
    iput p4, p0, Lvz/y;->d:I

    .line 11
    .line 12
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x5b

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_a

    .line 22
    .line 23
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    if-ne p0, v0, :cond_1

    .line 26
    .line 27
    const/16 p0, 0x49

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    if-ne p0, v0, :cond_2

    .line 33
    .line 34
    const/16 p0, 0x56

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    if-ne p0, v0, :cond_3

    .line 40
    .line 41
    const/16 p0, 0x5a

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    if-ne p0, v0, :cond_4

    .line 47
    .line 48
    const/16 p0, 0x42

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 52
    .line 53
    if-ne p0, v0, :cond_5

    .line 54
    .line 55
    const/16 p0, 0x43

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 59
    .line 60
    if-ne p0, v0, :cond_6

    .line 61
    .line 62
    const/16 p0, 0x53

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    if-ne p0, v0, :cond_7

    .line 68
    .line 69
    const/16 p0, 0x44

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    if-ne p0, v0, :cond_8

    .line 75
    .line 76
    const/16 p0, 0x46

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    if-ne p0, v0, :cond_9

    .line 82
    .line 83
    const/16 p0, 0x4a

    .line 84
    .line 85
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    .line 90
    .line 91
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_a
    const/16 v0, 0x4c

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/4 v1, 0x0

    .line 109
    :goto_2
    if-ge v1, v0, :cond_c

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    const/16 v3, 0x2e

    .line 116
    .line 117
    if-ne v2, v3, :cond_b

    .line 118
    .line 119
    const/16 v2, 0x2f

    .line 120
    .line 121
    :cond_b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_c
    const/16 p0, 0x3b

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    :goto_3
    return-void
.end method

.method public static b(Ljava/lang/String;)[Lvz/y;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    move v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    const/16 v5, 0x3b

    .line 10
    .line 11
    const/16 v6, 0x4c

    .line 12
    .line 13
    const/16 v7, 0x5b

    .line 14
    .line 15
    const/16 v8, 0x29

    .line 16
    .line 17
    if-eq v4, v8, :cond_2

    .line 18
    .line 19
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ne v4, v7, :cond_0

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ne v2, v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    move v2, v4

    .line 43
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-array v2, v3, [Lvz/y;

    .line 47
    .line 48
    move v3, v1

    .line 49
    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eq v4, v8, :cond_5

    .line 54
    .line 55
    move v4, v3

    .line 56
    :goto_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-ne v9, v7, :cond_3

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_3
    add-int/lit8 v9, v4, 0x1

    .line 66
    .line 67
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-ne v4, v6, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->indexOf(II)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    add-int/lit8 v9, v4, 0x1

    .line 78
    .line 79
    :cond_4
    add-int/lit8 v4, v0, 0x1

    .line 80
    .line 81
    invoke-static {p0, v3, v9}, Lvz/y;->o(Ljava/lang/String;II)Lvz/y;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    aput-object v3, v2, v0

    .line 86
    .line 87
    move v0, v4

    .line 88
    move v3, v9

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    return-object v2
.end method

.method public static c(Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    move v2, v0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    const/16 v4, 0x29

    .line 9
    .line 10
    const/16 v5, 0x44

    .line 11
    .line 12
    const/16 v6, 0x4a

    .line 13
    .line 14
    if-eq v1, v4, :cond_4

    .line 15
    .line 16
    if-eq v1, v6, :cond_3

    .line 17
    .line 18
    if-ne v1, v5, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v4, 0x5b

    .line 26
    .line 27
    if-ne v1, v4, :cond_1

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/16 v4, 0x4c

    .line 39
    .line 40
    if-ne v2, v4, :cond_2

    .line 41
    .line 42
    const/16 v2, 0x3b

    .line 43
    .line 44
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v1, v0

    .line 49
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    move v2, v1

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x2

    .line 56
    .line 57
    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    add-int/2addr v2, v0

    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    const/16 v1, 0x56

    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    if-ne p0, v1, :cond_5

    .line 71
    .line 72
    shl-int/lit8 p0, v3, 0x2

    .line 73
    .line 74
    return p0

    .line 75
    :cond_5
    if-eq p0, v6, :cond_6

    .line 76
    .line 77
    if-ne p0, v5, :cond_7

    .line 78
    .line 79
    :cond_6
    move v0, v2

    .line 80
    :cond_7
    shl-int/lit8 p0, v3, 0x2

    .line 81
    .line 82
    or-int/2addr p0, v0

    .line 83
    return p0
.end method

.method public static d(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x28

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    array-length v1, p0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_0

    .line 18
    .line 19
    aget-object v3, p0, v2

    .line 20
    .line 21
    invoke-static {v3, v0}, Lvz/y;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p0, ")V"

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static f(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lvz/y;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static h(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x2e

    .line 6
    .line 7
    const/16 v1, 0x2f

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static i(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x28

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    invoke-static {v4, v0}, Lvz/y;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v1, 0x29

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0, v0}, Lvz/y;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static j(Ljava/lang/String;)Lvz/y;
    .locals 4

    .line 1
    new-instance v0, Lvz/y;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0xb

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v2, p0, v3, v1}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static k(Ljava/lang/String;)Lvz/y;
    .locals 4

    .line 1
    new-instance v0, Lvz/y;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/16 v3, 0x5b

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    const/16 v2, 0x9

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v2, 0xc

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-direct {v0, v2, p0, v1, v3}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static m(Ljava/lang/Class;)Lvz/y;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lvz/y;->j:Lvz/y;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    if-ne p0, v0, :cond_1

    .line 17
    .line 18
    sget-object p0, Lvz/y;->e:Lvz/y;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    if-ne p0, v0, :cond_2

    .line 24
    .line 25
    sget-object p0, Lvz/y;->f:Lvz/y;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    if-ne p0, v0, :cond_3

    .line 31
    .line 32
    sget-object p0, Lvz/y;->h:Lvz/y;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    if-ne p0, v0, :cond_4

    .line 38
    .line 39
    sget-object p0, Lvz/y;->g:Lvz/y;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    if-ne p0, v0, :cond_5

    .line 45
    .line 46
    sget-object p0, Lvz/y;->i:Lvz/y;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    if-ne p0, v0, :cond_6

    .line 52
    .line 53
    sget-object p0, Lvz/y;->m:Lvz/y;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    if-ne p0, v0, :cond_7

    .line 59
    .line 60
    sget-object p0, Lvz/y;->k:Lvz/y;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 64
    .line 65
    if-ne p0, v0, :cond_8

    .line 66
    .line 67
    sget-object p0, Lvz/y;->l:Lvz/y;

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    .line 71
    .line 72
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_9
    invoke-static {p0}, Lvz/y;->f(Ljava/lang/Class;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lvz/y;->n(Ljava/lang/String;)Lvz/y;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public static n(Ljava/lang/String;)Lvz/y;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p0, v1, v0}, Lvz/y;->o(Ljava/lang/String;II)Lvz/y;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static o(Ljava/lang/String;II)Lvz/y;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x28

    .line 6
    .line 7
    if-eq v0, v1, :cond_8

    .line 8
    .line 9
    const/16 v1, 0x46

    .line 10
    .line 11
    if-eq v0, v1, :cond_7

    .line 12
    .line 13
    const/16 v1, 0x4c

    .line 14
    .line 15
    if-eq v0, v1, :cond_6

    .line 16
    .line 17
    const/16 v1, 0x53

    .line 18
    .line 19
    if-eq v0, v1, :cond_5

    .line 20
    .line 21
    const/16 v1, 0x56

    .line 22
    .line 23
    if-eq v0, v1, :cond_4

    .line 24
    .line 25
    const/16 v1, 0x49

    .line 26
    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    const/16 v1, 0x4a

    .line 30
    .line 31
    if-eq v0, v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x5a

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    const/16 v1, 0x5b

    .line 38
    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    packed-switch v0, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :pswitch_0
    sget-object p0, Lvz/y;->m:Lvz/y;

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_1
    sget-object p0, Lvz/y;->g:Lvz/y;

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_2
    sget-object p0, Lvz/y;->h:Lvz/y;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lvz/y;

    .line 60
    .line 61
    const/16 v1, 0x9

    .line 62
    .line 63
    invoke-direct {v0, v1, p0, p1, p2}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_1
    sget-object p0, Lvz/y;->f:Lvz/y;

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_2
    sget-object p0, Lvz/y;->l:Lvz/y;

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_3
    sget-object p0, Lvz/y;->j:Lvz/y;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_4
    sget-object p0, Lvz/y;->e:Lvz/y;

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_5
    sget-object p0, Lvz/y;->i:Lvz/y;

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_6
    new-instance v0, Lvz/y;

    .line 83
    .line 84
    add-int/lit8 p1, p1, 0x1

    .line 85
    .line 86
    add-int/lit8 p2, p2, -0x1

    .line 87
    .line 88
    const/16 v1, 0xa

    .line 89
    .line 90
    invoke-direct {v0, v1, p0, p1, p2}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_7
    sget-object p0, Lvz/y;->k:Lvz/y;

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_8
    new-instance v0, Lvz/y;

    .line 98
    .line 99
    const/16 v1, 0xb

    .line 100
    .line 101
    invoke-direct {v0, v1, p0, p1, p2}, Lvz/y;-><init>(ILjava/lang/String;II)V

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lvz/y;->a:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lvz/y;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget v1, p0, Lvz/y;->c:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    iget v2, p0, Lvz/y;->d:I

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/16 v1, 0xc

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x4c

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lvz/y;->b:Ljava/lang/String;

    .line 37
    .line 38
    iget v2, p0, Lvz/y;->c:I

    .line 39
    .line 40
    iget v3, p0, Lvz/y;->d:I

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 v1, 0x3b

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :cond_1
    iget-object v0, p0, Lvz/y;->b:Ljava/lang/String;

    .line 56
    .line 57
    iget v1, p0, Lvz/y;->c:I

    .line 58
    .line 59
    iget v2, p0, Lvz/y;->d:I

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lvz/y;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lvz/y;

    .line 12
    .line 13
    iget v1, p0, Lvz/y;->a:I

    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    const/16 v4, 0xc

    .line 18
    .line 19
    if-ne v1, v4, :cond_2

    .line 20
    .line 21
    move v1, v3

    .line 22
    :cond_2
    iget v5, p1, Lvz/y;->a:I

    .line 23
    .line 24
    if-ne v5, v4, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    move v3, v5

    .line 28
    :goto_0
    if-eq v1, v3, :cond_4

    .line 29
    .line 30
    return v2

    .line 31
    :cond_4
    iget v1, p0, Lvz/y;->c:I

    .line 32
    .line 33
    iget v3, p0, Lvz/y;->d:I

    .line 34
    .line 35
    iget v4, p1, Lvz/y;->c:I

    .line 36
    .line 37
    iget v5, p1, Lvz/y;->d:I

    .line 38
    .line 39
    sub-int v6, v3, v1

    .line 40
    .line 41
    sub-int/2addr v5, v4

    .line 42
    if-eq v6, v5, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    :goto_1
    if-ge v1, v3, :cond_7

    .line 46
    .line 47
    iget-object v5, p0, Lvz/y;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    iget-object v6, p1, Lvz/y;->b:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eq v5, v6, :cond_6

    .line 60
    .line 61
    return v2

    .line 62
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_7
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lvz/y;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lvz/y;->c:I

    .line 4
    .line 5
    iget v2, p0, Lvz/y;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lvz/y;->a:I

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    mul-int/lit8 v1, v1, 0xd

    .line 12
    .line 13
    const/16 v2, 0x9

    .line 14
    .line 15
    if-lt v0, v2, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lvz/y;->c:I

    .line 18
    .line 19
    iget v2, p0, Lvz/y;->d:I

    .line 20
    .line 21
    :goto_1
    if-ge v0, v2, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lvz/y;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/2addr v1, v3

    .line 30
    mul-int/lit8 v1, v1, 0x11

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    return v1
.end method

.method public l()I
    .locals 2

    .line 1
    iget v0, p0, Lvz/y;->a:I

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvz/y;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
