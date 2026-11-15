.class public Lorg/mvel2/util/t;
.super Ljava/lang/Object;
.source "source.java"


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

.method public static a([Ljava/lang/Class;[Ljava/lang/Object;Z)[Ljava/lang/Object;
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    array-length p2, p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-lez p2, :cond_1

    .line 7
    .line 8
    array-length p2, p1

    .line 9
    add-int/lit8 p2, p2, -0x1

    .line 10
    .line 11
    aget-object p2, p1, p2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    array-length p2, p0

    .line 15
    add-int/lit8 p2, p2, -0x1

    .line 16
    .line 17
    aget-object p2, p0, p2

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    array-length v1, p0

    .line 28
    array-length v2, p1

    .line 29
    if-ne v1, v2, :cond_3

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    :cond_2
    return-object p1

    .line 44
    :cond_3
    array-length p2, p1

    .line 45
    array-length v1, p0

    .line 46
    sub-int/2addr p2, v1

    .line 47
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    array-length v1, p0

    .line 50
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    aget-object v1, p0, v1

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move v2, v0

    .line 63
    :goto_1
    if-ge v2, p2, :cond_4

    .line 64
    .line 65
    array-length v3, p0

    .line 66
    add-int/lit8 v3, v3, -0x1

    .line 67
    .line 68
    add-int/2addr v3, v2

    .line 69
    aget-object v3, p1, v3

    .line 70
    .line 71
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    array-length p2, p0

    .line 78
    new-array p2, p2, [Ljava/lang/Object;

    .line 79
    .line 80
    :goto_2
    array-length v2, p0

    .line 81
    add-int/lit8 v2, v2, -0x1

    .line 82
    .line 83
    if-ge v0, v2, :cond_5

    .line 84
    .line 85
    aget-object v2, p1, v0

    .line 86
    .line 87
    aput-object v2, p2, v0

    .line 88
    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    array-length p0, p0

    .line 93
    add-int/lit8 p0, p0, -0x1

    .line 94
    .line 95
    aput-object v1, p2, p0

    .line 96
    .line 97
    return-object p2
.end method

.method public static b([Ljava/lang/Class;IZ)Ljava/lang/Class;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    array-length p2, p0

    .line 7
    add-int/lit8 p2, p2, -0x1

    .line 8
    .line 9
    if-ge p1, p2, :cond_1

    .line 10
    .line 11
    aget-object p0, p0, p1

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    array-length p1, p0

    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    aget-object p0, p0, p1

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
