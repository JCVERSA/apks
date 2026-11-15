.class final Lvz/x;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvz/x$a;
    }
.end annotation


# instance fields
.field final a:Lvz/g;

.field private final b:Lvz/e;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:[Lvz/x$a;

.field private g:I

.field private h:Lvz/d;

.field private i:I

.field private j:Lvz/d;

.field private k:I

.field private l:[Lvz/x$a;


# direct methods
.method constructor <init>(Lvz/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lvz/x;->a:Lvz/g;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lvz/x;->b:Lvz/e;

    const/16 p1, 0x100

    .line 4
    new-array p1, p1, [Lvz/x$a;

    iput-object p1, p0, Lvz/x;->f:[Lvz/x$a;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lvz/x;->g:I

    .line 6
    new-instance p1, Lvz/d;

    invoke-direct {p1}, Lvz/d;-><init>()V

    iput-object p1, p0, Lvz/x;->h:Lvz/d;

    return-void
.end method

.method constructor <init>(Lvz/g;Lvz/e;)V
    .locals 13

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lvz/x;->a:Lvz/g;

    .line 9
    iput-object p2, p0, Lvz/x;->b:Lvz/e;

    .line 10
    iget-object p1, p2, Lvz/e;->a:[B

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p2, v0}, Lvz/e;->f(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 12
    iget v2, p2, Lvz/e;->g:I

    sub-int/2addr v2, v1

    .line 13
    invoke-virtual {p2}, Lvz/e;->g()I

    move-result v3

    iput v3, p0, Lvz/x;->g:I

    .line 14
    new-instance v3, Lvz/d;

    invoke-direct {v3, v2}, Lvz/d;-><init>(I)V

    iput-object v3, p0, Lvz/x;->h:Lvz/d;

    .line 15
    invoke-virtual {v3, p1, v1, v2}, Lvz/d;->h([BII)Lvz/d;

    .line 16
    iget v1, p0, Lvz/x;->g:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    new-array v1, v1, [Lvz/x$a;

    iput-object v1, p0, Lvz/x;->f:[Lvz/x$a;

    .line 17
    invoke-virtual {p2}, Lvz/e;->h()I

    move-result v1

    new-array v1, v1, [C

    const/4 v3, 0x0

    move v10, v0

    .line 18
    :goto_0
    iget v4, p0, Lvz/x;->g:I

    if-ge v10, v4, :cond_2

    .line 19
    invoke-virtual {p2, v10}, Lvz/e;->f(I)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    .line 20
    aget-byte v11, p1, v5

    packed-switch v11, :pswitch_data_0

    .line 21
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_1
    add-int/lit8 v3, v4, 0x2

    .line 22
    invoke-virtual {p2, v3}, Lvz/e;->H(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lvz/e;->f(I)I

    move-result v3

    .line 23
    invoke-virtual {p2, v3, v1}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v3, v2

    invoke-virtual {p2, v3, v1}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v4}, Lvz/e;->H(I)I

    move-result v9

    move-object v4, p0

    move v5, v11

    move v6, v10

    invoke-direct/range {v4 .. v9}, Lvz/x;->i(IILjava/lang/String;Ljava/lang/String;I)V

    move v3, v0

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v5, v4, 0x1

    .line 24
    invoke-virtual {p2, v5}, Lvz/e;->H(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lvz/e;->f(I)I

    move-result v5

    add-int/lit8 v6, v5, 0x2

    .line 25
    invoke-virtual {p2, v6}, Lvz/e;->H(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lvz/e;->f(I)I

    move-result v6

    .line 26
    invoke-virtual {p2, v4}, Lvz/e;->l(I)I

    move-result v7

    invoke-virtual {p2, v5, v1}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v6, v1}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v6, v2

    invoke-virtual {p2, v6, v1}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v12

    move-object v4, p0

    move v5, v10

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v4 .. v9}, Lvz/x;->v(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 27
    :pswitch_3
    invoke-virtual {p2, v4, v1}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p2, v4, v1}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v5, v4}, Lvz/x;->A(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    add-int/lit8 v5, v4, 0x2

    .line 28
    invoke-virtual {p2, v5}, Lvz/e;->H(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lvz/e;->f(I)I

    move-result v5

    .line 29
    invoke-virtual {p2, v4, v1}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v5, v1}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v5, v2

    invoke-virtual {p2, v5, v1}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move v5, v10

    move v6, v11

    invoke-direct/range {v4 .. v9}, Lvz/x;->t(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :pswitch_5
    invoke-virtual {p2, v4, v1}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v11, v4}, Lvz/x;->G(IILjava/lang/String;)V

    goto :goto_1

    .line 31
    :pswitch_6
    invoke-virtual {p2, v4}, Lvz/e;->v(I)J

    move-result-wide v4

    invoke-direct {p0, v10, v11, v4, v5}, Lvz/x;->r(IIJ)V

    goto :goto_1

    .line 32
    :pswitch_7
    invoke-virtual {p2, v4}, Lvz/e;->t(I)I

    move-result v4

    invoke-direct {p0, v10, v11, v4}, Lvz/x;->n(III)V

    goto :goto_1

    .line 33
    :pswitch_8
    invoke-virtual {p2, v10, v1}, Lvz/e;->J(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v4}, Lvz/x;->E(ILjava/lang/String;)V

    :goto_1
    const/4 v4, 0x5

    if-eq v11, v4, :cond_1

    const/4 v4, 0x6

    if-ne v11, v4, :cond_0

    goto :goto_2

    :cond_0
    move v4, v0

    goto :goto_3

    :cond_1
    :goto_2
    move v4, v2

    :goto_3
    add-int/2addr v10, v4

    goto/16 :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 34
    invoke-direct {p0, p2, v1}, Lvz/x;->M(Lvz/e;[C)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private A(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lvz/x$a;

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    invoke-static {v0, p2, p3}, Lvz/x;->Y(ILjava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    const/16 v2, 0xc

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move v1, p1

    .line 13
    move-object v3, p2

    .line 14
    move-object v4, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lvz/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v6}, Lvz/x;->a(Lvz/x$a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private E(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lvz/x$a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, p2}, Lvz/x;->W(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-direct {v0, p1, v1, p2, v2}, Lvz/x$a;-><init>(IILjava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lvz/x;->a(Lvz/x$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private F(ILjava/lang/String;)Lvz/w;
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lvz/x;->W(ILjava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lvz/x;->N(I)Lvz/x$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget v2, v1, Lvz/w;->b:I

    .line 12
    .line 13
    if-ne v2, p1, :cond_0

    .line 14
    .line 15
    iget v2, v1, Lvz/x$a;->h:I

    .line 16
    .line 17
    if-ne v2, v0, :cond_0

    .line 18
    .line 19
    iget-object v2, v1, Lvz/w;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    iget-object v1, v1, Lvz/x$a;->i:Lvz/x$a;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p0, Lvz/x;->h:Lvz/d;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lvz/x;->D(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, p1, v2}, Lvz/d;->e(II)Lvz/d;

    .line 38
    .line 39
    .line 40
    new-instance v1, Lvz/x$a;

    .line 41
    .line 42
    iget v2, p0, Lvz/x;->g:I

    .line 43
    .line 44
    add-int/lit8 v3, v2, 0x1

    .line 45
    .line 46
    iput v3, p0, Lvz/x;->g:I

    .line 47
    .line 48
    invoke-direct {v1, v2, p1, p2, v0}, Lvz/x$a;-><init>(IILjava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v1}, Lvz/x;->c0(Lvz/x$a;)Lvz/x$a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method private G(IILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lvz/x$a;

    .line 2
    .line 3
    invoke-static {p2, p3}, Lvz/x;->W(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, p1, p2, p3, v1}, Lvz/x$a;-><init>(IILjava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lvz/x;->a(Lvz/x$a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private J(Lvz/x$a;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lvz/x;->l:[Lvz/x$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    new-array v0, v0, [Lvz/x$a;

    .line 8
    .line 9
    iput-object v0, p0, Lvz/x;->l:[Lvz/x$a;

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lvz/x;->k:I

    .line 12
    .line 13
    iget-object v1, p0, Lvz/x;->l:[Lvz/x$a;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    array-length v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    new-array v0, v0, [Lvz/x$a;

    .line 22
    .line 23
    array-length v2, v1

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lvz/x;->l:[Lvz/x$a;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lvz/x;->l:[Lvz/x$a;

    .line 31
    .line 32
    iget v1, p0, Lvz/x;->k:I

    .line 33
    .line 34
    add-int/lit8 v2, v1, 0x1

    .line 35
    .line 36
    iput v2, p0, Lvz/x;->k:I

    .line 37
    .line 38
    aput-object p1, v0, v1

    .line 39
    .line 40
    invoke-direct {p0, p1}, Lvz/x;->c0(Lvz/x$a;)Lvz/x$a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget p1, p1, Lvz/w;->a:I

    .line 45
    .line 46
    return p1
.end method

.method private M(Lvz/e;[C)V
    .locals 10

    .line 1
    iget-object v0, p1, Lvz/e;->a:[B

    .line 2
    .line 3
    invoke-virtual {p1}, Lvz/e;->e()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v2, v1, -0x2

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Lvz/e;->H(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    :goto_0
    if-lez v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v1, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "BootstrapMethods"

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    add-int/lit8 v2, v1, 0x6

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lvz/e;->H(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, p0, Lvz/x;->i:I

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v3, v1, 0x2

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Lvz/e;->t(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    add-int/lit8 v3, v3, 0x6

    .line 43
    .line 44
    add-int/2addr v1, v3

    .line 45
    add-int/lit8 v2, v2, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    iget v2, p0, Lvz/x;->i:I

    .line 49
    .line 50
    if-lez v2, :cond_3

    .line 51
    .line 52
    add-int/lit8 v2, v1, 0x8

    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x2

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lvz/e;->t(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/lit8 v1, v1, -0x2

    .line 61
    .line 62
    new-instance v3, Lvz/d;

    .line 63
    .line 64
    invoke-direct {v3, v1}, Lvz/d;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object v3, p0, Lvz/x;->j:Lvz/d;

    .line 68
    .line 69
    invoke-virtual {v3, v0, v2, v1}, Lvz/d;->h([BII)Lvz/d;

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    move v1, v2

    .line 74
    :goto_2
    iget v3, p0, Lvz/x;->i:I

    .line 75
    .line 76
    if-ge v0, v3, :cond_3

    .line 77
    .line 78
    sub-int v3, v1, v2

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Lvz/e;->H(I)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    add-int/lit8 v5, v1, 0x2

    .line 85
    .line 86
    invoke-virtual {p1, v5}, Lvz/e;->H(I)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    add-int/lit8 v1, v1, 0x4

    .line 91
    .line 92
    invoke-virtual {p1, v4, p2}, Lvz/e;->o(I[C)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    :goto_3
    add-int/lit8 v6, v5, -0x1

    .line 101
    .line 102
    if-lez v5, :cond_2

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lvz/e;->H(I)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    add-int/lit8 v1, v1, 0x2

    .line 109
    .line 110
    invoke-virtual {p1, v5, p2}, Lvz/e;->o(I[C)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    xor-int/2addr v4, v5

    .line 119
    move v5, v6

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    new-instance v9, Lvz/x$a;

    .line 122
    .line 123
    int-to-long v6, v3

    .line 124
    const v3, 0x7fffffff

    .line 125
    .line 126
    .line 127
    and-int v8, v4, v3

    .line 128
    .line 129
    const/16 v5, 0x40

    .line 130
    .line 131
    move-object v3, v9

    .line 132
    move v4, v0

    .line 133
    invoke-direct/range {v3 .. v8}, Lvz/x$a;-><init>(IIJI)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, v9}, Lvz/x;->a(Lvz/x$a;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    return-void
.end method

.method private N(I)Lvz/x$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lvz/x;->f:[Lvz/x$a;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    rem-int/2addr p1, v1

    .line 5
    aget-object p1, v0, p1

    .line 6
    .line 7
    return-object p1
.end method

.method private static U(II)I
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    add-int/2addr p0, p1

    .line 5
    and-int/2addr p0, v0

    .line 6
    return p0
.end method

.method private static V(IJ)I
    .locals 1

    .line 1
    long-to-int v0, p1

    .line 2
    add-int/2addr p0, v0

    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    ushr-long/2addr p1, v0

    .line 6
    long-to-int p1, p1

    .line 7
    add-int/2addr p0, p1

    .line 8
    const p1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    and-int/2addr p0, p1

    .line 12
    return p0
.end method

.method private static W(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p0, p1

    .line 6
    const p1, 0x7fffffff

    .line 7
    .line 8
    .line 9
    and-int/2addr p0, p1

    .line 10
    return p0
.end method

.method private static X(ILjava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    const p1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p1

    .line 11
    return p0
.end method

.method private static Y(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    mul-int/2addr p1, p2

    .line 10
    add-int/2addr p0, p1

    .line 11
    const p1, 0x7fffffff

    .line 12
    .line 13
    .line 14
    and-int/2addr p0, p1

    .line 15
    return p0
.end method

.method private static Z(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    mul-int/2addr p1, p2

    .line 10
    add-int/lit8 p3, p3, 0x1

    .line 11
    .line 12
    mul-int/2addr p1, p3

    .line 13
    add-int/2addr p0, p1

    .line 14
    const p1, 0x7fffffff

    .line 15
    .line 16
    .line 17
    and-int/2addr p0, p1

    .line 18
    return p0
.end method

.method private a(Lvz/x$a;)V
    .locals 3

    .line 1
    iget v0, p0, Lvz/x;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lvz/x;->e:I

    .line 6
    .line 7
    iget v0, p1, Lvz/x$a;->h:I

    .line 8
    .line 9
    iget-object v1, p0, Lvz/x;->f:[Lvz/x$a;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    rem-int/2addr v0, v2

    .line 13
    aget-object v2, v1, v0

    .line 14
    .line 15
    iput-object v2, p1, Lvz/x$a;->i:Lvz/x$a;

    .line 16
    .line 17
    aput-object p1, v1, v0

    .line 18
    .line 19
    return-void
.end method

.method private static a0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    mul-int/2addr p1, p2

    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    mul-int/2addr p1, p2

    .line 15
    add-int/2addr p0, p1

    .line 16
    const p1, 0x7fffffff

    .line 17
    .line 18
    .line 19
    and-int/2addr p0, p1

    .line 20
    return p0
.end method

.method private b(III)Lvz/w;
    .locals 8

    .line 1
    iget-object v0, p0, Lvz/x;->j:Lvz/d;

    .line 2
    .line 3
    iget-object v0, v0, Lvz/d;->a:[B

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lvz/x;->N(I)Lvz/x$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget v2, v1, Lvz/w;->b:I

    .line 12
    .line 13
    const/16 v3, 0x40

    .line 14
    .line 15
    if-ne v2, v3, :cond_2

    .line 16
    .line 17
    iget v2, v1, Lvz/x$a;->h:I

    .line 18
    .line 19
    if-ne v2, p3, :cond_2

    .line 20
    .line 21
    iget-wide v2, v1, Lvz/w;->f:J

    .line 22
    .line 23
    long-to-int v2, v2

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_1
    if-ge v3, p2, :cond_1

    .line 26
    .line 27
    add-int v4, p1, v3

    .line 28
    .line 29
    aget-byte v4, v0, v4

    .line 30
    .line 31
    add-int v5, v2, v3

    .line 32
    .line 33
    aget-byte v5, v0, v5

    .line 34
    .line 35
    if-eq v4, v5, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object p2, p0, Lvz/x;->j:Lvz/d;

    .line 42
    .line 43
    iput p1, p2, Lvz/d;->b:I

    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_2
    :goto_2
    iget-object v1, v1, Lvz/x$a;->i:Lvz/x$a;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    new-instance p2, Lvz/x$a;

    .line 50
    .line 51
    iget v3, p0, Lvz/x;->i:I

    .line 52
    .line 53
    add-int/lit8 v0, v3, 0x1

    .line 54
    .line 55
    iput v0, p0, Lvz/x;->i:I

    .line 56
    .line 57
    const/16 v4, 0x40

    .line 58
    .line 59
    int-to-long v5, p1

    .line 60
    move-object v2, p2

    .line 61
    move v7, p3

    .line 62
    invoke-direct/range {v2 .. v7}, Lvz/x$a;-><init>(IIJI)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p2}, Lvz/x;->c0(Lvz/x$a;)Lvz/x$a;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method private static b0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    mul-int/2addr p1, p2

    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    mul-int/2addr p1, p2

    .line 15
    mul-int/2addr p1, p4

    .line 16
    add-int/2addr p0, p1

    .line 17
    const p1, 0x7fffffff

    .line 18
    .line 19
    .line 20
    and-int/2addr p0, p1

    .line 21
    return p0
.end method

.method private c0(Lvz/x$a;)Lvz/x$a;
    .locals 7

    .line 1
    iget v0, p0, Lvz/x;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Lvz/x;->f:[Lvz/x$a;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    mul-int/lit8 v2, v2, 0x3

    .line 7
    .line 8
    div-int/lit8 v2, v2, 0x4

    .line 9
    .line 10
    if-le v0, v2, :cond_2

    .line 11
    .line 12
    array-length v0, v1

    .line 13
    mul-int/lit8 v1, v0, 0x2

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    new-array v2, v1, [Lvz/x$a;

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v0, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lvz/x;->f:[Lvz/x$a;

    .line 24
    .line 25
    aget-object v3, v3, v0

    .line 26
    .line 27
    :goto_1
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget v4, v3, Lvz/x$a;->h:I

    .line 30
    .line 31
    rem-int/2addr v4, v1

    .line 32
    iget-object v5, v3, Lvz/x$a;->i:Lvz/x$a;

    .line 33
    .line 34
    aget-object v6, v2, v4

    .line 35
    .line 36
    iput-object v6, v3, Lvz/x$a;->i:Lvz/x$a;

    .line 37
    .line 38
    aput-object v3, v2, v4

    .line 39
    .line 40
    move-object v3, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput-object v2, p0, Lvz/x;->f:[Lvz/x$a;

    .line 46
    .line 47
    :cond_2
    iget v0, p0, Lvz/x;->e:I

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    iput v0, p0, Lvz/x;->e:I

    .line 52
    .line 53
    iget v0, p1, Lvz/x$a;->h:I

    .line 54
    .line 55
    iget-object v1, p0, Lvz/x;->f:[Lvz/x$a;

    .line 56
    .line 57
    array-length v2, v1

    .line 58
    rem-int/2addr v0, v2

    .line 59
    aget-object v2, v1, v0

    .line 60
    .line 61
    iput-object v2, p1, Lvz/x$a;->i:Lvz/x$a;

    .line 62
    .line 63
    aput-object p1, v1, v0

    .line 64
    .line 65
    return-object p1
.end method

.method private h(ILjava/lang/String;Ljava/lang/String;I)Lvz/w;
    .locals 10

    .line 1
    invoke-static {p1, p2, p3, p4}, Lvz/x;->Z(ILjava/lang/String;Ljava/lang/String;I)I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    invoke-direct {p0, v8}, Lvz/x;->N(I)Lvz/x$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lvz/w;->b:I

    .line 12
    .line 13
    if-ne v1, p1, :cond_0

    .line 14
    .line 15
    iget v1, v0, Lvz/x$a;->h:I

    .line 16
    .line 17
    if-ne v1, v8, :cond_0

    .line 18
    .line 19
    iget-wide v1, v0, Lvz/w;->f:J

    .line 20
    .line 21
    int-to-long v3, p4

    .line 22
    cmp-long v1, v1, v3

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, v0, Lvz/w;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, v0, Lvz/w;->e:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_0
    iget-object v0, v0, Lvz/x$a;->i:Lvz/x$a;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lvz/x;->h:Lvz/d;

    .line 47
    .line 48
    invoke-virtual {p0, p2, p3}, Lvz/x;->z(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, p1, p4, v1}, Lvz/d;->f(III)Lvz/d;

    .line 53
    .line 54
    .line 55
    new-instance v9, Lvz/x$a;

    .line 56
    .line 57
    iget v1, p0, Lvz/x;->g:I

    .line 58
    .line 59
    add-int/lit8 v0, v1, 0x1

    .line 60
    .line 61
    iput v0, p0, Lvz/x;->g:I

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    int-to-long v6, p4

    .line 65
    move-object v0, v9

    .line 66
    move v2, p1

    .line 67
    move-object v4, p2

    .line 68
    move-object v5, p3

    .line 69
    invoke-direct/range {v0 .. v8}, Lvz/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v9}, Lvz/x;->c0(Lvz/x$a;)Lvz/x$a;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method

.method private i(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 1
    invoke-static {p1, p3, p4, p5}, Lvz/x;->Z(ILjava/lang/String;Ljava/lang/String;I)I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    new-instance v9, Lvz/x$a;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    int-to-long v6, p5

    .line 9
    move-object v0, v9

    .line 10
    move v1, p2

    .line 11
    move v2, p1

    .line 12
    move-object v4, p3

    .line 13
    move-object v5, p4

    .line 14
    invoke-direct/range {v0 .. v8}, Lvz/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v9}, Lvz/x;->a(Lvz/x$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private m(II)Lvz/w;
    .locals 7

    .line 1
    invoke-static {p1, p2}, Lvz/x;->U(II)I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    invoke-direct {p0, v5}, Lvz/x;->N(I)Lvz/x$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lvz/w;->b:I

    .line 12
    .line 13
    if-ne v1, p1, :cond_0

    .line 14
    .line 15
    iget v1, v0, Lvz/x$a;->h:I

    .line 16
    .line 17
    if-ne v1, v5, :cond_0

    .line 18
    .line 19
    iget-wide v1, v0, Lvz/w;->f:J

    .line 20
    .line 21
    int-to-long v3, p2

    .line 22
    cmp-long v1, v1, v3

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    iget-object v0, v0, Lvz/x$a;->i:Lvz/x$a;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lvz/x;->h:Lvz/d;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lvz/d;->g(I)Lvz/d;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p2}, Lvz/d;->i(I)Lvz/d;

    .line 37
    .line 38
    .line 39
    new-instance v6, Lvz/x$a;

    .line 40
    .line 41
    iget v1, p0, Lvz/x;->g:I

    .line 42
    .line 43
    add-int/lit8 v0, v1, 0x1

    .line 44
    .line 45
    iput v0, p0, Lvz/x;->g:I

    .line 46
    .line 47
    int-to-long v3, p2

    .line 48
    move-object v0, v6

    .line 49
    move v2, p1

    .line 50
    invoke-direct/range {v0 .. v5}, Lvz/x$a;-><init>(IIJI)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v6}, Lvz/x;->c0(Lvz/x$a;)Lvz/x$a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method private n(III)V
    .locals 7

    .line 1
    new-instance v6, Lvz/x$a;

    .line 2
    .line 3
    int-to-long v3, p3

    .line 4
    invoke-static {p2, p3}, Lvz/x;->U(II)I

    .line 5
    .line 6
    .line 7
    move-result v5

    .line 8
    move-object v0, v6

    .line 9
    move v1, p1

    .line 10
    move v2, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lvz/x$a;-><init>(IIJI)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v6}, Lvz/x;->a(Lvz/x$a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private q(IJ)Lvz/w;
    .locals 7

    .line 1
    invoke-static {p1, p2, p3}, Lvz/x;->V(IJ)I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    invoke-direct {p0, v5}, Lvz/x;->N(I)Lvz/x$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lvz/w;->b:I

    .line 12
    .line 13
    if-ne v1, p1, :cond_0

    .line 14
    .line 15
    iget v1, v0, Lvz/x$a;->h:I

    .line 16
    .line 17
    if-ne v1, v5, :cond_0

    .line 18
    .line 19
    iget-wide v1, v0, Lvz/w;->f:J

    .line 20
    .line 21
    cmp-long v1, v1, p2

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-object v0, v0, Lvz/x$a;->i:Lvz/x$a;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget v1, p0, Lvz/x;->g:I

    .line 30
    .line 31
    iget-object v0, p0, Lvz/x;->h:Lvz/d;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lvz/d;->g(I)Lvz/d;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p2, p3}, Lvz/d;->j(J)Lvz/d;

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lvz/x;->g:I

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x2

    .line 43
    .line 44
    iput v0, p0, Lvz/x;->g:I

    .line 45
    .line 46
    new-instance v6, Lvz/x$a;

    .line 47
    .line 48
    move-object v0, v6

    .line 49
    move v2, p1

    .line 50
    move-wide v3, p2

    .line 51
    invoke-direct/range {v0 .. v5}, Lvz/x$a;-><init>(IIJI)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v6}, Lvz/x;->c0(Lvz/x$a;)Lvz/x$a;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method private r(IIJ)V
    .locals 7

    .line 1
    new-instance v6, Lvz/x$a;

    .line 2
    .line 3
    invoke-static {p2, p3, p4}, Lvz/x;->V(IJ)I

    .line 4
    .line 5
    .line 6
    move-result v5

    .line 7
    move-object v0, v6

    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move-wide v3, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lvz/x$a;-><init>(IIJI)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v6}, Lvz/x;->a(Lvz/x$a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private s(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lvz/x$a;
    .locals 10

    .line 1
    invoke-static {p1, p2, p3, p4}, Lvz/x;->a0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    invoke-direct {p0, v8}, Lvz/x;->N(I)Lvz/x$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lvz/w;->b:I

    .line 12
    .line 13
    if-ne v1, p1, :cond_0

    .line 14
    .line 15
    iget v1, v0, Lvz/x$a;->h:I

    .line 16
    .line 17
    if-ne v1, v8, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lvz/w;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Lvz/w;->d:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, v0, Lvz/w;->e:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    iget-object v0, v0, Lvz/x$a;->i:Lvz/x$a;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lvz/x;->h:Lvz/d;

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lvz/x;->e(Ljava/lang/String;)Lvz/w;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget v1, v1, Lvz/w;->a:I

    .line 54
    .line 55
    invoke-virtual {p0, p3, p4}, Lvz/x;->z(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, p1, v1, v2}, Lvz/d;->f(III)Lvz/d;

    .line 60
    .line 61
    .line 62
    new-instance v9, Lvz/x$a;

    .line 63
    .line 64
    iget v1, p0, Lvz/x;->g:I

    .line 65
    .line 66
    add-int/lit8 v0, v1, 0x1

    .line 67
    .line 68
    iput v0, p0, Lvz/x;->g:I

    .line 69
    .line 70
    const-wide/16 v6, 0x0

    .line 71
    .line 72
    move-object v0, v9

    .line 73
    move v2, p1

    .line 74
    move-object v3, p2

    .line 75
    move-object v4, p3

    .line 76
    move-object v5, p4

    .line 77
    invoke-direct/range {v0 .. v8}, Lvz/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v9}, Lvz/x;->c0(Lvz/x$a;)Lvz/x$a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method

.method private t(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v9, Lvz/x$a;

    .line 2
    .line 3
    const-wide/16 v6, 0x0

    .line 4
    .line 5
    invoke-static {p2, p3, p4, p5}, Lvz/x;->a0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    move-object v0, v9

    .line 10
    move v1, p1

    .line 11
    move v2, p2

    .line 12
    move-object v3, p3

    .line 13
    move-object v4, p4

    .line 14
    move-object v5, p5

    .line 15
    invoke-direct/range {v0 .. v8}, Lvz/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v9}, Lvz/x;->a(Lvz/x$a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private v(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-static {v0, p3, p4, p5, p2}, Lvz/x;->b0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result v9

    .line 7
    new-instance v0, Lvz/x$a;

    .line 8
    .line 9
    const/16 v3, 0xf

    .line 10
    .line 11
    int-to-long v7, p2

    .line 12
    move-object v1, v0

    .line 13
    move v2, p1

    .line 14
    move-object v4, p3

    .line 15
    move-object v5, p4

    .line 16
    move-object v6, p5

    .line 17
    invoke-direct/range {v1 .. v9}, Lvz/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lvz/x;->a(Lvz/x$a;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method B(Ljava/lang/String;)Lvz/w;
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lvz/x;->F(ILjava/lang/String;)Lvz/w;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method C(Ljava/lang/String;)Lvz/w;
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lvz/x;->F(ILjava/lang/String;)Lvz/w;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method D(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1}, Lvz/x;->W(ILjava/lang/String;)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-direct {p0, v1}, Lvz/x;->N(I)Lvz/x$a;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    :goto_0
    if-eqz v2, :cond_1

    .line 11
    .line 12
    iget v3, v2, Lvz/w;->b:I

    .line 13
    .line 14
    if-ne v3, v0, :cond_0

    .line 15
    .line 16
    iget v3, v2, Lvz/x$a;->h:I

    .line 17
    .line 18
    if-ne v3, v1, :cond_0

    .line 19
    .line 20
    iget-object v3, v2, Lvz/w;->e:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget p1, v2, Lvz/w;->a:I

    .line 29
    .line 30
    return p1

    .line 31
    :cond_0
    iget-object v2, v2, Lvz/x$a;->i:Lvz/x$a;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v2, p0, Lvz/x;->h:Lvz/d;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lvz/d;->g(I)Lvz/d;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, p1}, Lvz/d;->l(Ljava/lang/String;)Lvz/d;

    .line 41
    .line 42
    .line 43
    new-instance v2, Lvz/x$a;

    .line 44
    .line 45
    iget v3, p0, Lvz/x;->g:I

    .line 46
    .line 47
    add-int/lit8 v4, v3, 0x1

    .line 48
    .line 49
    iput v4, p0, Lvz/x;->g:I

    .line 50
    .line 51
    invoke-direct {v2, v3, v0, p1, v1}, Lvz/x$a;-><init>(IILjava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v2}, Lvz/x;->c0(Lvz/x$a;)Lvz/x$a;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget p1, p1, Lvz/w;->a:I

    .line 59
    .line 60
    return p1
.end method

.method H(II)I
    .locals 10

    .line 1
    int-to-long v0, p1

    .line 2
    int-to-long v2, p2

    .line 3
    const/16 v4, 0x20

    .line 4
    .line 5
    shl-long/2addr v2, v4

    .line 6
    or-long v7, v0, v2

    .line 7
    .line 8
    add-int v0, p1, p2

    .line 9
    .line 10
    const/16 v1, 0x82

    .line 11
    .line 12
    invoke-static {v1, v0}, Lvz/x;->U(II)I

    .line 13
    .line 14
    .line 15
    move-result v9

    .line 16
    invoke-direct {p0, v9}, Lvz/x;->N(I)Lvz/x$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget v2, v0, Lvz/w;->b:I

    .line 23
    .line 24
    if-ne v2, v1, :cond_0

    .line 25
    .line 26
    iget v2, v0, Lvz/x$a;->h:I

    .line 27
    .line 28
    if-ne v2, v9, :cond_0

    .line 29
    .line 30
    iget-wide v2, v0, Lvz/w;->f:J

    .line 31
    .line 32
    cmp-long v2, v2, v7

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    iget p1, v0, Lvz/w;->g:I

    .line 37
    .line 38
    return p1

    .line 39
    :cond_0
    iget-object v0, v0, Lvz/x$a;->i:Lvz/x$a;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lvz/x;->l:[Lvz/x$a;

    .line 43
    .line 44
    aget-object p1, v0, p1

    .line 45
    .line 46
    iget-object p1, p1, Lvz/w;->e:Ljava/lang/String;

    .line 47
    .line 48
    aget-object p2, v0, p2

    .line 49
    .line 50
    iget-object p2, p2, Lvz/w;->e:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v0, p0, Lvz/x;->a:Lvz/g;

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Lvz/g;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lvz/x;->I(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    new-instance p2, Lvz/x$a;

    .line 63
    .line 64
    iget v5, p0, Lvz/x;->k:I

    .line 65
    .line 66
    const/16 v6, 0x82

    .line 67
    .line 68
    move-object v4, p2

    .line 69
    invoke-direct/range {v4 .. v9}, Lvz/x$a;-><init>(IIJI)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p2}, Lvz/x;->c0(Lvz/x$a;)Lvz/x$a;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iput p1, p2, Lvz/w;->g:I

    .line 77
    .line 78
    return p1
.end method

.method I(Ljava/lang/String;)I
    .locals 4

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {v0, p1}, Lvz/x;->W(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {p0, v1}, Lvz/x;->N(I)Lvz/x$a;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :goto_0
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget v3, v2, Lvz/w;->b:I

    .line 14
    .line 15
    if-ne v3, v0, :cond_0

    .line 16
    .line 17
    iget v3, v2, Lvz/x$a;->h:I

    .line 18
    .line 19
    if-ne v3, v1, :cond_0

    .line 20
    .line 21
    iget-object v3, v2, Lvz/w;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget p1, v2, Lvz/w;->a:I

    .line 30
    .line 31
    return p1

    .line 32
    :cond_0
    iget-object v2, v2, Lvz/x$a;->i:Lvz/x$a;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance v2, Lvz/x$a;

    .line 36
    .line 37
    iget v3, p0, Lvz/x;->k:I

    .line 38
    .line 39
    invoke-direct {v2, v3, v0, p1, v1}, Lvz/x$a;-><init>(IILjava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v2}, Lvz/x;->J(Lvz/x$a;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method K(Ljava/lang/String;I)I
    .locals 8

    .line 1
    const/16 v0, 0x81

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lvz/x;->X(ILjava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result v7

    .line 7
    invoke-direct {p0, v7}, Lvz/x;->N(I)Lvz/x$a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v2, v1, Lvz/w;->b:I

    .line 14
    .line 15
    if-ne v2, v0, :cond_0

    .line 16
    .line 17
    iget v2, v1, Lvz/x$a;->h:I

    .line 18
    .line 19
    if-ne v2, v7, :cond_0

    .line 20
    .line 21
    iget-wide v2, v1, Lvz/w;->f:J

    .line 22
    .line 23
    int-to-long v4, p2

    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v2, v1, Lvz/w;->e:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget p1, v1, Lvz/w;->a:I

    .line 37
    .line 38
    return p1

    .line 39
    :cond_0
    iget-object v1, v1, Lvz/x$a;->i:Lvz/x$a;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lvz/x$a;

    .line 43
    .line 44
    iget v2, p0, Lvz/x;->k:I

    .line 45
    .line 46
    const/16 v3, 0x81

    .line 47
    .line 48
    int-to-long v5, p2

    .line 49
    move-object v1, v0

    .line 50
    move-object v4, p1

    .line 51
    invoke-direct/range {v1 .. v7}, Lvz/x$a;-><init>(IILjava/lang/String;JI)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0}, Lvz/x;->J(Lvz/x$a;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method L()I
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/x;->j:Lvz/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BootstrapMethods"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lvz/x;->D(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lvz/x;->j:Lvz/d;

    .line 11
    .line 12
    iget v0, v0, Lvz/d;->b:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x8

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/x;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method P()I
    .locals 1

    .line 1
    iget v0, p0, Lvz/x;->g:I

    .line 2
    .line 3
    return v0
.end method

.method Q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/x;->h:Lvz/d;

    .line 2
    .line 3
    iget v0, v0, Lvz/d;->b:I

    .line 4
    .line 5
    return v0
.end method

.method R()I
    .locals 1

    .line 1
    iget v0, p0, Lvz/x;->c:I

    .line 2
    .line 3
    return v0
.end method

.method S()Lvz/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/x;->b:Lvz/e;

    .line 2
    .line 3
    return-object v0
.end method

.method T(I)Lvz/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/x;->l:[Lvz/x$a;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method varargs c(Lvz/o;[Ljava/lang/Object;)Lvz/w;
    .locals 9

    .line 1
    iget-object v0, p0, Lvz/x;->j:Lvz/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lvz/d;

    .line 6
    .line 7
    invoke-direct {v0}, Lvz/d;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lvz/x;->j:Lvz/d;

    .line 11
    .line 12
    :cond_0
    array-length v1, p2

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    aget-object v4, p2, v3

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Lvz/x;->d(Ljava/lang/Object;)Lvz/w;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v1, v0, Lvz/d;->b:I

    .line 26
    .line 27
    invoke-virtual {p1}, Lvz/o;->d()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p1}, Lvz/o;->c()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p1}, Lvz/o;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {p1}, Lvz/o;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {p1}, Lvz/o;->e()Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    move-object v3, p0

    .line 48
    invoke-virtual/range {v3 .. v8}, Lvz/x;->u(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lvz/w;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget v3, v3, Lvz/w;->a:I

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lvz/d;->k(I)Lvz/d;

    .line 55
    .line 56
    .line 57
    array-length v3, p2

    .line 58
    invoke-virtual {v0, v3}, Lvz/d;->k(I)Lvz/d;

    .line 59
    .line 60
    .line 61
    array-length v3, p2

    .line 62
    move v4, v2

    .line 63
    :goto_1
    if-ge v4, v3, :cond_2

    .line 64
    .line 65
    aget-object v5, p2, v4

    .line 66
    .line 67
    invoke-virtual {p0, v5}, Lvz/x;->d(Ljava/lang/Object;)Lvz/w;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget v5, v5, Lvz/w;->a:I

    .line 72
    .line 73
    invoke-virtual {v0, v5}, Lvz/d;->k(I)Lvz/d;

    .line 74
    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget v0, v0, Lvz/d;->b:I

    .line 80
    .line 81
    sub-int/2addr v0, v1

    .line 82
    invoke-virtual {p1}, Lvz/o;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    array-length v3, p2

    .line 87
    :goto_2
    if-ge v2, v3, :cond_3

    .line 88
    .line 89
    aget-object v4, p2, v2

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    xor-int/2addr p1, v4

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    const p2, 0x7fffffff

    .line 100
    .line 101
    .line 102
    and-int/2addr p1, p2

    .line 103
    invoke-direct {p0, v1, v0, p1}, Lvz/x;->b(III)Lvz/w;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method

.method d(Ljava/lang/Object;)Lvz/w;
    .locals 6

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lvz/x;->l(I)Lvz/w;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lvz/x;->l(I)Lvz/w;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lvz/x;->l(I)Lvz/w;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lvz/x;->l(I)Lvz/w;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lvz/x;->l(I)Lvz/w;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 12
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lvz/x;->k(F)Lvz/w;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 14
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lvz/x;->p(J)Lvz/w;

    move-result-object p1

    return-object p1

    .line 15
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 16
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lvz/x;->f(D)Lvz/w;

    move-result-object p1

    return-object p1

    .line 17
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lvz/x;->C(Ljava/lang/String;)Lvz/w;

    move-result-object p1

    return-object p1

    .line 19
    :cond_8
    instance-of v0, p1, Lvz/y;

    if-eqz v0, :cond_b

    .line 20
    check-cast p1, Lvz/y;

    .line 21
    invoke-virtual {p1}, Lvz/y;->l()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 22
    invoke-virtual {p1}, Lvz/y;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvz/x;->e(Ljava/lang/String;)Lvz/w;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 23
    invoke-virtual {p1}, Lvz/y;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvz/x;->w(Ljava/lang/String;)Lvz/w;

    move-result-object p1

    return-object p1

    .line 24
    :cond_a
    invoke-virtual {p1}, Lvz/y;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvz/x;->e(Ljava/lang/String;)Lvz/w;

    move-result-object p1

    return-object p1

    .line 25
    :cond_b
    instance-of v0, p1, Lvz/o;

    if-eqz v0, :cond_c

    .line 26
    check-cast p1, Lvz/o;

    .line 27
    invoke-virtual {p1}, Lvz/o;->d()I

    move-result v1

    invoke-virtual {p1}, Lvz/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lvz/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lvz/o;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lvz/o;->e()Z

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvz/x;->u(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lvz/w;

    move-result-object p1

    return-object p1

    .line 28
    :cond_c
    instance-of v0, p1, Lvz/h;

    if-eqz v0, :cond_d

    .line 29
    check-cast p1, Lvz/h;

    .line 30
    invoke-virtual {p1}, Lvz/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lvz/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lvz/h;->a()Lvz/o;

    move-result-object v2

    invoke-virtual {p1}, Lvz/h;->b()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lvz/x;->g(Ljava/lang/String;Ljava/lang/String;Lvz/o;[Ljava/lang/Object;)Lvz/w;

    move-result-object p1

    return-object p1

    .line 31
    :cond_d
    new-instance p1, Lorg/mvel2/optimizers/OptimizationNotSupported;

    invoke-direct {p1}, Lorg/mvel2/optimizers/OptimizationNotSupported;-><init>()V

    throw p1
.end method

.method d0(Lvz/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvz/x;->j:Lvz/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BootstrapMethods"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lvz/x;->D(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Lvz/d;->k(I)Lvz/d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lvz/x;->j:Lvz/d;

    .line 16
    .line 17
    iget v0, v0, Lvz/d;->b:I

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lvz/d;->i(I)Lvz/d;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget v0, p0, Lvz/x;->i:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lvz/d;->k(I)Lvz/d;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lvz/x;->j:Lvz/d;

    .line 32
    .line 33
    iget-object v1, v0, Lvz/d;->a:[B

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    iget v0, v0, Lvz/d;->b:I

    .line 37
    .line 38
    invoke-virtual {p1, v1, v2, v0}, Lvz/d;->h([BII)Lvz/d;

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method e(Ljava/lang/String;)Lvz/w;
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0, v0, p1}, Lvz/x;->F(ILjava/lang/String;)Lvz/w;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method e0(Lvz/d;)V
    .locals 3

    .line 1
    iget v0, p0, Lvz/x;->g:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lvz/d;->k(I)Lvz/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lvz/x;->h:Lvz/d;

    .line 8
    .line 9
    iget-object v1, v0, Lvz/d;->a:[B

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget v0, v0, Lvz/d;->b:I

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2, v0}, Lvz/d;->h([BII)Lvz/d;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method f(D)Lvz/w;
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 3
    .line 4
    .line 5
    move-result-wide p1

    .line 6
    invoke-direct {p0, v0, p1, p2}, Lvz/x;->q(IJ)Lvz/w;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method f0(ILjava/lang/String;)I
    .locals 0

    .line 1
    iput p1, p0, Lvz/x;->c:I

    .line 2
    .line 3
    iput-object p2, p0, Lvz/x;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lvz/x;->e(Ljava/lang/String;)Lvz/w;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Lvz/w;->a:I

    .line 10
    .line 11
    return p1
.end method

.method varargs g(Ljava/lang/String;Ljava/lang/String;Lvz/o;[Ljava/lang/Object;)Lvz/w;
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p4}, Lvz/x;->c(Lvz/o;[Ljava/lang/Object;)Lvz/w;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/16 p4, 0x11

    .line 6
    .line 7
    iget p3, p3, Lvz/w;->a:I

    .line 8
    .line 9
    invoke-direct {p0, p4, p1, p2, p3}, Lvz/x;->h(ILjava/lang/String;Ljava/lang/String;I)Lvz/w;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lvz/w;
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lvz/x;->s(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lvz/x$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method k(F)Lvz/w;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-direct {p0, v0, p1}, Lvz/x;->m(II)Lvz/w;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method l(I)Lvz/w;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lvz/x;->m(II)Lvz/w;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method varargs o(Ljava/lang/String;Ljava/lang/String;Lvz/o;[Ljava/lang/Object;)Lvz/w;
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p4}, Lvz/x;->c(Lvz/o;[Ljava/lang/Object;)Lvz/w;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/16 p4, 0x12

    .line 6
    .line 7
    iget p3, p3, Lvz/w;->a:I

    .line 8
    .line 9
    invoke-direct {p0, p4, p1, p2, p3}, Lvz/x;->h(ILjava/lang/String;Ljava/lang/String;I)Lvz/w;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method p(J)Lvz/w;
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lvz/x;->q(IJ)Lvz/w;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method u(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lvz/w;
    .locals 10

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-static {v0, p2, p3, p4, p1}, Lvz/x;->b0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result v9

    .line 7
    invoke-direct {p0, v9}, Lvz/x;->N(I)Lvz/x$a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v2, v1, Lvz/w;->b:I

    .line 14
    .line 15
    if-ne v2, v0, :cond_0

    .line 16
    .line 17
    iget v2, v1, Lvz/x$a;->h:I

    .line 18
    .line 19
    if-ne v2, v9, :cond_0

    .line 20
    .line 21
    iget-wide v2, v1, Lvz/w;->f:J

    .line 22
    .line 23
    int-to-long v4, p1

    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v2, v1, Lvz/w;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, v1, Lvz/w;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iget-object v2, v1, Lvz/w;->e:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_0
    iget-object v1, v1, Lvz/x$a;->i:Lvz/x$a;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x4

    .line 57
    if-gt p1, v1, :cond_2

    .line 58
    .line 59
    iget-object p5, p0, Lvz/x;->h:Lvz/d;

    .line 60
    .line 61
    invoke-virtual {p0, p2, p3, p4}, Lvz/x;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lvz/w;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget v1, v1, Lvz/w;->a:I

    .line 66
    .line 67
    invoke-virtual {p5, v0, p1, v1}, Lvz/d;->d(III)Lvz/d;

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object v1, p0, Lvz/x;->h:Lvz/d;

    .line 72
    .line 73
    invoke-virtual {p0, p2, p3, p4, p5}, Lvz/x;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lvz/w;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    iget p5, p5, Lvz/w;->a:I

    .line 78
    .line 79
    invoke-virtual {v1, v0, p1, p5}, Lvz/d;->d(III)Lvz/d;

    .line 80
    .line 81
    .line 82
    :goto_1
    new-instance p5, Lvz/x$a;

    .line 83
    .line 84
    iget v2, p0, Lvz/x;->g:I

    .line 85
    .line 86
    add-int/lit8 v0, v2, 0x1

    .line 87
    .line 88
    iput v0, p0, Lvz/x;->g:I

    .line 89
    .line 90
    const/16 v3, 0xf

    .line 91
    .line 92
    int-to-long v7, p1

    .line 93
    move-object v1, p5

    .line 94
    move-object v4, p2

    .line 95
    move-object v5, p3

    .line 96
    move-object v6, p4

    .line 97
    invoke-direct/range {v1 .. v9}, Lvz/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, p5}, Lvz/x;->c0(Lvz/x$a;)Lvz/x$a;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1
.end method

.method w(Ljava/lang/String;)Lvz/w;
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lvz/x;->F(ILjava/lang/String;)Lvz/w;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lvz/w;
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    const/16 p4, 0xb

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p4, 0xa

    .line 7
    .line 8
    :goto_0
    invoke-direct {p0, p4, p1, p2, p3}, Lvz/x;->s(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lvz/x$a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method y(Ljava/lang/String;)Lvz/w;
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lvz/x;->F(ILjava/lang/String;)Lvz/w;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method z(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lvz/x;->Y(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v6

    .line 7
    invoke-direct {p0, v6}, Lvz/x;->N(I)Lvz/x$a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v2, v1, Lvz/w;->b:I

    .line 14
    .line 15
    if-ne v2, v0, :cond_0

    .line 16
    .line 17
    iget v2, v1, Lvz/x$a;->h:I

    .line 18
    .line 19
    if-ne v2, v6, :cond_0

    .line 20
    .line 21
    iget-object v2, v1, Lvz/w;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v2, v1, Lvz/w;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget p1, v1, Lvz/w;->a:I

    .line 38
    .line 39
    return p1

    .line 40
    :cond_0
    iget-object v1, v1, Lvz/x$a;->i:Lvz/x$a;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lvz/x;->h:Lvz/d;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lvz/x;->D(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {p0, p2}, Lvz/x;->D(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v1, v0, v2, v3}, Lvz/d;->f(III)Lvz/d;

    .line 54
    .line 55
    .line 56
    new-instance v0, Lvz/x$a;

    .line 57
    .line 58
    iget v2, p0, Lvz/x;->g:I

    .line 59
    .line 60
    add-int/lit8 v1, v2, 0x1

    .line 61
    .line 62
    iput v1, p0, Lvz/x;->g:I

    .line 63
    .line 64
    const/16 v3, 0xc

    .line 65
    .line 66
    move-object v1, v0

    .line 67
    move-object v4, p1

    .line 68
    move-object v5, p2

    .line 69
    invoke-direct/range {v1 .. v6}, Lvz/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v0}, Lvz/x;->c0(Lvz/x$a;)Lvz/x$a;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget p1, p1, Lvz/w;->a:I

    .line 77
    .line 78
    return p1
.end method
