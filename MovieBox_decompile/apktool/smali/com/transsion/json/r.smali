.class public Lcom/transsion/json/r;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field final a:[Ljava/lang/String;

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/json/r;->b:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/transsion/json/r;->c:Z

    .line 9
    .line 10
    const-string v2, "\\."

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    .line 17
    .line 18
    const/16 v2, 0x2a

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ltz p1, :cond_0

    .line 25
    .line 26
    move v0, v1

    .line 27
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/json/r;->b:Z

    .line 28
    .line 29
    iput-boolean p2, p0, Lcom/transsion/json/r;->c:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/json/r;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public b(Lcom/transsion/json/q;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/json/q;->c()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    const-string v4, "*"

    .line 9
    .line 10
    if-ge v1, v3, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/json/q;->b()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    .line 23
    .line 24
    array-length v6, v5

    .line 25
    if-ge v2, v6, :cond_0

    .line 26
    .line 27
    aget-object v5, v5, v2

    .line 28
    .line 29
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v5, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    .line 39
    .line 40
    array-length v6, v5

    .line 41
    if-ge v2, v6, :cond_1

    .line 42
    .line 43
    aget-object v5, v5, v2

    .line 44
    .line 45
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    add-int/lit8 v3, v2, -0x1

    .line 55
    .line 56
    if-ltz v3, :cond_2

    .line 57
    .line 58
    iget-object v5, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    .line 59
    .line 60
    aget-object v3, v5, v3

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return v0

    .line 72
    :cond_3
    const/4 v3, 0x1

    .line 73
    if-lez v2, :cond_5

    .line 74
    .line 75
    iget-object v5, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    .line 76
    .line 77
    add-int/lit8 v6, v2, -0x1

    .line 78
    .line 79
    aget-object v5, v5, v6

    .line 80
    .line 81
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/transsion/json/q;->c()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-lt v1, p1, :cond_4

    .line 92
    .line 93
    iget-object p1, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    .line 94
    .line 95
    array-length p1, p1

    .line 96
    if-lt v2, p1, :cond_4

    .line 97
    .line 98
    move v0, v3

    .line 99
    :cond_4
    return v0

    .line 100
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/json/q;->c()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-lt v1, v2, :cond_6

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/json/q;->c()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-lez p1, :cond_6

    .line 111
    .line 112
    move v0, v3

    .line 113
    :cond_6
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/json/r;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lcom/transsion/json/r;

    .line 12
    .line 13
    if-eq v1, v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    check-cast p1, Lcom/transsion/json/r;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    .line 13
    .line 14
    array-length v3, v2

    .line 15
    if-ge v1, v3, :cond_1

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    .line 23
    .line 24
    array-length v2, v2

    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    if-ge v1, v2, :cond_0

    .line 28
    .line 29
    const-string v2, ","

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v1, "]"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
