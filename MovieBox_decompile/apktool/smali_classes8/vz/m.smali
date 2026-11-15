.class final Lvz/m;
.super Lvz/l;
.source "source.java"


# instance fields
.field private final c:Lvz/x;

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:I

.field private h:I

.field private i:Lvz/b;

.field private j:Lvz/b;

.field private k:Lvz/b;

.field private l:Lvz/b;

.field private m:Lvz/c;


# direct methods
.method constructor <init>(Lvz/x;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/high16 v0, 0x70000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lvz/l;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lvz/m;->c:Lvz/x;

    .line 7
    .line 8
    iput p2, p0, Lvz/m;->d:I

    .line 9
    .line 10
    invoke-virtual {p1, p3}, Lvz/x;->D(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput p2, p0, Lvz/m;->e:I

    .line 15
    .line 16
    invoke-virtual {p1, p4}, Lvz/x;->D(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iput p2, p0, Lvz/m;->f:I

    .line 21
    .line 22
    if-eqz p5, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, p5}, Lvz/x;->D(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iput p2, p0, Lvz/m;->g:I

    .line 29
    .line 30
    :cond_0
    if-eqz p6, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, p6}, Lvz/x;->d(Ljava/lang/Object;)Lvz/w;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget p1, p1, Lvz/w;->a:I

    .line 37
    .line 38
    iput p1, p0, Lvz/m;->h:I

    .line 39
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lvz/a;
    .locals 2

    .line 1
    new-instance v0, Lvz/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lvz/d;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lvz/m;->c:Lvz/x;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lvz/x;->D(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Lvz/d;->k(I)Lvz/d;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v1}, Lvz/d;->k(I)Lvz/d;

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    new-instance p1, Lvz/b;

    .line 23
    .line 24
    iget-object p2, p0, Lvz/m;->c:Lvz/x;

    .line 25
    .line 26
    iget-object v1, p0, Lvz/m;->i:Lvz/b;

    .line 27
    .line 28
    invoke-direct {p1, p2, v0, v1}, Lvz/b;-><init>(Lvz/x;Lvz/d;Lvz/b;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lvz/m;->i:Lvz/b;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    new-instance p1, Lvz/b;

    .line 35
    .line 36
    iget-object p2, p0, Lvz/m;->c:Lvz/x;

    .line 37
    .line 38
    iget-object v1, p0, Lvz/m;->j:Lvz/b;

    .line 39
    .line 40
    invoke-direct {p1, p2, v0, v1}, Lvz/b;-><init>(Lvz/x;Lvz/d;Lvz/b;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lvz/m;->j:Lvz/b;

    .line 44
    .line 45
    return-object p1
.end method

.method public b(Lvz/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/m;->m:Lvz/c;

    .line 2
    .line 3
    iput-object v0, p1, Lvz/c;->c:Lvz/c;

    .line 4
    .line 5
    iput-object p1, p0, Lvz/m;->m:Lvz/c;

    .line 6
    .line 7
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d(ILvz/z;Ljava/lang/String;Z)Lvz/a;
    .locals 1

    .line 1
    new-instance v0, Lvz/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lvz/d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lvz/a0;->a(ILvz/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lvz/z;->d(Lvz/z;Lvz/d;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lvz/m;->c:Lvz/x;

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Lvz/x;->D(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Lvz/d;->k(I)Lvz/d;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p2}, Lvz/d;->k(I)Lvz/d;

    .line 24
    .line 25
    .line 26
    if-eqz p4, :cond_0

    .line 27
    .line 28
    new-instance p1, Lvz/b;

    .line 29
    .line 30
    iget-object p2, p0, Lvz/m;->c:Lvz/x;

    .line 31
    .line 32
    iget-object p3, p0, Lvz/m;->k:Lvz/b;

    .line 33
    .line 34
    invoke-direct {p1, p2, v0, p3}, Lvz/b;-><init>(Lvz/x;Lvz/d;Lvz/b;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lvz/m;->k:Lvz/b;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_0
    new-instance p1, Lvz/b;

    .line 41
    .line 42
    iget-object p2, p0, Lvz/m;->c:Lvz/x;

    .line 43
    .line 44
    iget-object p3, p0, Lvz/m;->l:Lvz/b;

    .line 45
    .line 46
    invoke-direct {p1, p2, v0, p3}, Lvz/b;-><init>(Lvz/x;Lvz/d;Lvz/b;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lvz/m;->l:Lvz/b;

    .line 50
    .line 51
    return-object p1
.end method

.method final e(Lvz/c$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/m;->m:Lvz/c;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lvz/c$a;->b(Lvz/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method f()I
    .locals 3

    .line 1
    iget v0, p0, Lvz/m;->h:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lvz/m;->c:Lvz/x;

    .line 6
    .line 7
    const-string v1, "ConstantValue"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lvz/x;->D(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x10

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v0, 0x8

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Lvz/m;->d:I

    .line 18
    .line 19
    and-int/lit16 v1, v1, 0x1000

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lvz/m;->c:Lvz/x;

    .line 24
    .line 25
    invoke-virtual {v1}, Lvz/x;->R()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v2, 0x31

    .line 30
    .line 31
    if-ge v1, v2, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lvz/m;->c:Lvz/x;

    .line 34
    .line 35
    const-string v2, "Synthetic"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lvz/x;->D(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x6

    .line 41
    .line 42
    :cond_1
    iget v1, p0, Lvz/m;->g:I

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lvz/m;->c:Lvz/x;

    .line 47
    .line 48
    const-string v2, "Signature"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lvz/x;->D(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x8

    .line 54
    .line 55
    :cond_2
    iget v1, p0, Lvz/m;->d:I

    .line 56
    .line 57
    const/high16 v2, 0x20000

    .line 58
    .line 59
    and-int/2addr v1, v2

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    iget-object v1, p0, Lvz/m;->c:Lvz/x;

    .line 63
    .line 64
    const-string v2, "Deprecated"

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lvz/x;->D(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x6

    .line 70
    .line 71
    :cond_3
    iget-object v1, p0, Lvz/m;->i:Lvz/b;

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    const-string v2, "RuntimeVisibleAnnotations"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lvz/b;->f(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/2addr v0, v1

    .line 82
    :cond_4
    iget-object v1, p0, Lvz/m;->j:Lvz/b;

    .line 83
    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    const-string v2, "RuntimeInvisibleAnnotations"

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lvz/b;->f(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr v0, v1

    .line 93
    :cond_5
    iget-object v1, p0, Lvz/m;->k:Lvz/b;

    .line 94
    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    const-string v2, "RuntimeVisibleTypeAnnotations"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lvz/b;->f(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    add-int/2addr v0, v1

    .line 104
    :cond_6
    iget-object v1, p0, Lvz/m;->l:Lvz/b;

    .line 105
    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    const-string v2, "RuntimeInvisibleTypeAnnotations"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lvz/b;->f(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    :cond_7
    iget-object v1, p0, Lvz/m;->m:Lvz/c;

    .line 116
    .line 117
    if-eqz v1, :cond_8

    .line 118
    .line 119
    iget-object v2, p0, Lvz/m;->c:Lvz/x;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lvz/c;->a(Lvz/x;)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    add-int/2addr v0, v1

    .line 126
    :cond_8
    return v0
.end method

.method g(Lvz/d;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lvz/m;->c:Lvz/x;

    invoke-virtual {v0}, Lvz/x;->R()I

    move-result v0

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v1, 0x1000

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 2
    :goto_1
    iget v5, p0, Lvz/m;->d:I

    not-int v4, v4

    and-int/2addr v4, v5

    invoke-virtual {p1, v4}, Lvz/d;->k(I)Lvz/d;

    move-result-object v4

    iget v5, p0, Lvz/m;->e:I

    invoke-virtual {v4, v5}, Lvz/d;->k(I)Lvz/d;

    move-result-object v4

    iget v5, p0, Lvz/m;->f:I

    invoke-virtual {v4, v5}, Lvz/d;->k(I)Lvz/d;

    .line 3
    iget v4, p0, Lvz/m;->h:I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    .line 4
    :goto_2
    iget v4, p0, Lvz/m;->d:I

    and-int/lit16 v5, v4, 0x1000

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 5
    :cond_3
    iget v5, p0, Lvz/m;->g:I

    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 6
    :cond_5
    iget-object v4, p0, Lvz/m;->i:Lvz/b;

    if-eqz v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 7
    :cond_6
    iget-object v4, p0, Lvz/m;->j:Lvz/b;

    if-eqz v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 8
    :cond_7
    iget-object v4, p0, Lvz/m;->k:Lvz/b;

    if-eqz v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    .line 9
    :cond_8
    iget-object v4, p0, Lvz/m;->l:Lvz/b;

    if-eqz v4, :cond_9

    add-int/lit8 v3, v3, 0x1

    .line 10
    :cond_9
    iget-object v4, p0, Lvz/m;->m:Lvz/c;

    if-eqz v4, :cond_a

    .line 11
    invoke-virtual {v4}, Lvz/c;->c()I

    move-result v4

    add-int/2addr v3, v4

    .line 12
    :cond_a
    invoke-virtual {p1, v3}, Lvz/d;->k(I)Lvz/d;

    .line 13
    iget v3, p0, Lvz/m;->h:I

    const/4 v4, 0x2

    if-eqz v3, :cond_b

    .line 14
    iget-object v3, p0, Lvz/m;->c:Lvz/x;

    const-string v6, "ConstantValue"

    invoke-virtual {v3, v6}, Lvz/x;->D(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lvz/d;->k(I)Lvz/d;

    move-result-object v3

    invoke-virtual {v3, v4}, Lvz/d;->i(I)Lvz/d;

    move-result-object v3

    iget v6, p0, Lvz/m;->h:I

    invoke-virtual {v3, v6}, Lvz/d;->k(I)Lvz/d;

    .line 15
    :cond_b
    iget v3, p0, Lvz/m;->d:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    .line 16
    iget-object v0, p0, Lvz/m;->c:Lvz/x;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lvz/x;->D(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lvz/d;->k(I)Lvz/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lvz/d;->i(I)Lvz/d;

    .line 17
    :cond_c
    iget v0, p0, Lvz/m;->g:I

    if-eqz v0, :cond_d

    .line 18
    iget-object v0, p0, Lvz/m;->c:Lvz/x;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lvz/x;->D(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lvz/d;->k(I)Lvz/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lvz/d;->i(I)Lvz/d;

    move-result-object v0

    iget v1, p0, Lvz/m;->g:I

    invoke-virtual {v0, v1}, Lvz/d;->k(I)Lvz/d;

    .line 19
    :cond_d
    iget v0, p0, Lvz/m;->d:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_e

    .line 20
    iget-object v0, p0, Lvz/m;->c:Lvz/x;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lvz/x;->D(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lvz/d;->k(I)Lvz/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lvz/d;->i(I)Lvz/d;

    .line 21
    :cond_e
    iget-object v0, p0, Lvz/m;->i:Lvz/b;

    if-eqz v0, :cond_f

    .line 22
    iget-object v1, p0, Lvz/m;->c:Lvz/x;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lvz/x;->D(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lvz/b;->h(ILvz/d;)V

    .line 23
    :cond_f
    iget-object v0, p0, Lvz/m;->j:Lvz/b;

    if-eqz v0, :cond_10

    .line 24
    iget-object v1, p0, Lvz/m;->c:Lvz/x;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lvz/x;->D(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lvz/b;->h(ILvz/d;)V

    .line 25
    :cond_10
    iget-object v0, p0, Lvz/m;->k:Lvz/b;

    if-eqz v0, :cond_11

    .line 26
    iget-object v1, p0, Lvz/m;->c:Lvz/x;

    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lvz/x;->D(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lvz/b;->h(ILvz/d;)V

    .line 27
    :cond_11
    iget-object v0, p0, Lvz/m;->l:Lvz/b;

    if-eqz v0, :cond_12

    .line 28
    iget-object v1, p0, Lvz/m;->c:Lvz/x;

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lvz/x;->D(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lvz/b;->h(ILvz/d;)V

    .line 29
    :cond_12
    iget-object v0, p0, Lvz/m;->m:Lvz/c;

    if-eqz v0, :cond_13

    .line 30
    iget-object v1, p0, Lvz/m;->c:Lvz/x;

    invoke-virtual {v0, v1, p1}, Lvz/c;->e(Lvz/x;Lvz/d;)V

    :cond_13
    return-void
.end method
