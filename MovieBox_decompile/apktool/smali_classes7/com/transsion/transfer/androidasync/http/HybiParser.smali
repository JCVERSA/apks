.class abstract Lcom/transsion/transfer/androidasync/http/HybiParser;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;
    }
.end annotation


# static fields
.field private static final w:Ljava/util/List;

.field private static final x:Ljava/util/List;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[B

.field private l:[B

.field private m:Z

.field private n:Ljava/io/ByteArrayOutputStream;

.field private o:Ljava/util/zip/Inflater;

.field private p:[B

.field q:Lst/d;

.field r:Lst/d;

.field s:Lst/d;

.field t:Lst/d;

.field u:Lst/d;

.field private v:Lcom/transsion/transfer/androidasync/r;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x2

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    const/16 v6, 0x8

    .line 17
    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const/16 v7, 0x9

    .line 23
    .line 24
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    const/16 v8, 0xa

    .line 29
    .line 30
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    const/4 v9, 0x6

    .line 35
    new-array v9, v9, [Ljava/lang/Integer;

    .line 36
    .line 37
    aput-object v1, v9, v0

    .line 38
    .line 39
    aput-object v3, v9, v2

    .line 40
    .line 41
    aput-object v5, v9, v4

    .line 42
    .line 43
    const/4 v10, 0x3

    .line 44
    aput-object v6, v9, v10

    .line 45
    .line 46
    const/4 v6, 0x4

    .line 47
    aput-object v7, v9, v6

    .line 48
    .line 49
    const/4 v6, 0x5

    .line 50
    aput-object v8, v9, v6

    .line 51
    .line 52
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    sput-object v6, Lcom/transsion/transfer/androidasync/http/HybiParser;->w:Ljava/util/List;

    .line 57
    .line 58
    new-array v6, v10, [Ljava/lang/Integer;

    .line 59
    .line 60
    aput-object v1, v6, v0

    .line 61
    .line 62
    aput-object v3, v6, v2

    .line 63
    .line 64
    aput-object v5, v6, v4

    .line 65
    .line 66
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lcom/transsion/transfer/androidasync/http/HybiParser;->x:Ljava/util/List;

    .line 71
    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/androidasync/p;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->a:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->b:Z

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    iput-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->k:[B

    .line 13
    .line 14
    new-array v2, v1, [B

    .line 15
    .line 16
    iput-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->l:[B

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->m:Z

    .line 19
    .line 20
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    .line 26
    .line 27
    new-instance v1, Ljava/util/zip/Inflater;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    .line 33
    .line 34
    const/16 v0, 0x1000

    .line 35
    .line 36
    new-array v0, v0, [B

    .line 37
    .line 38
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->p:[B

    .line 39
    .line 40
    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$a;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/HybiParser$a;-><init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->q:Lst/d;

    .line 46
    .line 47
    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$b;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/HybiParser$b;-><init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->r:Lst/d;

    .line 53
    .line 54
    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$c;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/HybiParser$c;-><init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->s:Lst/d;

    .line 60
    .line 61
    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$d;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/HybiParser$d;-><init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->t:Lst/d;

    .line 67
    .line 68
    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$e;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/HybiParser$e;-><init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->u:Lst/d;

    .line 74
    .line 75
    new-instance v0, Lcom/transsion/transfer/androidasync/r;

    .line 76
    .line 77
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/r;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    .line 81
    .line 82
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->C()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private D([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->u([B)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->i:I

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->e:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x4

    .line 14
    :goto_0
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    .line 15
    .line 16
    return-void
.end method

.method private E(B)V
    .locals 2

    .line 1
    and-int/lit16 v0, p1, 0x80

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->e:Z

    .line 11
    .line 12
    and-int/lit8 p1, p1, 0x7f

    .line 13
    .line 14
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->i:I

    .line 15
    .line 16
    if-ltz p1, :cond_2

    .line 17
    .line 18
    const/16 v1, 0x7d

    .line 19
    .line 20
    if-gt p1, v1, :cond_2

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p1, 0x4

    .line 27
    :goto_1
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    const/16 v0, 0x7e

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    move p1, v1

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    const/16 p1, 0x8

    .line 38
    .line 39
    :goto_2
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->h:I

    .line 40
    .line 41
    iput v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    .line 42
    .line 43
    :goto_3
    return-void
.end method

.method private F(B)V
    .locals 6

    .line 1
    and-int/lit8 v0, p1, 0x40

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x40

    .line 6
    .line 7
    if-ne v0, v3, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    and-int/lit8 v3, p1, 0x20

    .line 13
    .line 14
    const/16 v4, 0x20

    .line 15
    .line 16
    if-ne v3, v4, :cond_1

    .line 17
    .line 18
    move v3, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v2

    .line 21
    :goto_1
    and-int/lit8 v4, p1, 0x10

    .line 22
    .line 23
    const/16 v5, 0x10

    .line 24
    .line 25
    if-ne v4, v5, :cond_2

    .line 26
    .line 27
    move v4, v1

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move v4, v2

    .line 30
    :goto_2
    iget-boolean v5, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->b:Z

    .line 31
    .line 32
    if-nez v5, :cond_3

    .line 33
    .line 34
    if-nez v0, :cond_8

    .line 35
    .line 36
    :cond_3
    if-nez v3, :cond_8

    .line 37
    .line 38
    if-nez v4, :cond_8

    .line 39
    .line 40
    and-int/lit16 v3, p1, 0x80

    .line 41
    .line 42
    const/16 v4, 0x80

    .line 43
    .line 44
    if-ne v3, v4, :cond_4

    .line 45
    .line 46
    move v3, v1

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    move v3, v2

    .line 49
    :goto_3
    iput-boolean v3, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->d:Z

    .line 50
    .line 51
    and-int/lit8 p1, p1, 0xf

    .line 52
    .line 53
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->g:I

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->f:Z

    .line 56
    .line 57
    new-array v0, v2, [B

    .line 58
    .line 59
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->k:[B

    .line 60
    .line 61
    new-array v0, v2, [B

    .line 62
    .line 63
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->l:[B

    .line 64
    .line 65
    sget-object v0, Lcom/transsion/transfer/androidasync/http/HybiParser;->w:Ljava/util/List;

    .line 66
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_7

    .line 76
    .line 77
    sget-object p1, Lcom/transsion/transfer/androidasync/http/HybiParser;->x:Ljava/util/List;

    .line 78
    .line 79
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->g:I

    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_6

    .line 90
    .line 91
    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->d:Z

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    new-instance p1, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    .line 97
    .line 98
    const-string v0, "Expected non-final packet"

    .line 99
    .line 100
    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_6
    :goto_4
    iput v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    .line 105
    .line 106
    return-void

    .line 107
    :cond_7
    new-instance p1, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    .line 108
    .line 109
    const-string v0, "Bad opcode"

    .line 110
    .line 111
    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_8
    new-instance p1, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    .line 116
    .line 117
    const-string v0, "RSV not zero"

    .line 118
    .line 119
    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method private I()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->j:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private M([BI)[B
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    sub-int/2addr v0, p2

    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    sub-int/2addr v1, p2

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method static bridge synthetic a(Lcom/transsion/transfer/androidasync/http/HybiParser;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic b(Lcom/transsion/transfer/androidasync/http/HybiParser;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic c(Lcom/transsion/transfer/androidasync/http/HybiParser;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->k:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/transsion/transfer/androidasync/http/HybiParser;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->l:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lcom/transsion/transfer/androidasync/http/HybiParser;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->k:[B

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic f(Lcom/transsion/transfer/androidasync/http/HybiParser;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->l:[B

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic g(Lcom/transsion/transfer/androidasync/http/HybiParser;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic h(Lcom/transsion/transfer/androidasync/http/HybiParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic i(Lcom/transsion/transfer/androidasync/http/HybiParser;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->D([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic j(Lcom/transsion/transfer/androidasync/http/HybiParser;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->E(B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic k(Lcom/transsion/transfer/androidasync/http/HybiParser;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->F(B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static l([BII)J
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    if-lt v0, p2, :cond_1

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, p2, :cond_0

    .line 8
    .line 9
    add-int/lit8 v3, p2, -0x1

    .line 10
    .line 11
    sub-int/2addr v3, v2

    .line 12
    mul-int/lit8 v3, v3, 0x8

    .line 13
    .line 14
    add-int v4, v2, p1

    .line 15
    .line 16
    aget-byte v4, p0, v4

    .line 17
    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 19
    .line 20
    shl-int v3, v4, v3

    .line 21
    .line 22
    int-to-long v3, v3

    .line 23
    add-long/2addr v0, v3

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-wide v0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p1, "length must be less than or equal to b.length"

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method private m(Ljava/lang/String;)[B
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method private n()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->l:[B

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->k:[B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/HybiParser;->w([B[BI)[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->f:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->v([B)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    new-instance v0, Ljava/io/IOException;

    .line 20
    .line 21
    const-string v1, "Invalid deflated data"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_0
    :goto_0
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->g:I

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->j:I

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->d:Z

    .line 42
    .line 43
    if-eqz v0, :cond_d

    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->j:I

    .line 52
    .line 53
    if-ne v1, v3, :cond_1

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->o([B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->y(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->z([B)V

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->I()V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_2
    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    .line 72
    .line 73
    const-string v1, "Mode was not set."

    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_3
    if-ne v1, v3, :cond_5

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->d:Z

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->o([B)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->y(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_4
    iput v3, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->j:I

    .line 95
    .line 96
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const/4 v4, 0x2

    .line 103
    if-ne v1, v4, :cond_7

    .line 104
    .line 105
    iget-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->d:Z

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->z([B)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    iput v4, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->j:I

    .line 114
    .line 115
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    const/16 v5, 0x8

    .line 122
    .line 123
    if-ne v1, v5, :cond_a

    .line 124
    .line 125
    array-length v1, v0

    .line 126
    if-lt v1, v4, :cond_8

    .line 127
    .line 128
    aget-byte v1, v0, v2

    .line 129
    .line 130
    and-int/lit16 v1, v1, 0xff

    .line 131
    .line 132
    mul-int/lit16 v1, v1, 0x100

    .line 133
    .line 134
    aget-byte v2, v0, v3

    .line 135
    .line 136
    and-int/lit16 v2, v2, 0xff

    .line 137
    .line 138
    add-int/2addr v2, v1

    .line 139
    :cond_8
    array-length v1, v0

    .line 140
    if-le v1, v4, :cond_9

    .line 141
    .line 142
    invoke-direct {p0, v0, v4}, Lcom/transsion/transfer/androidasync/http/HybiParser;->M([BI)[B

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->o([B)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    goto :goto_2

    .line 151
    :cond_9
    const/4 v0, 0x0

    .line 152
    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->x(ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_a
    const/16 v2, 0x9

    .line 157
    .line 158
    const/16 v3, 0xa

    .line 159
    .line 160
    if-ne v1, v2, :cond_c

    .line 161
    .line 162
    array-length v1, v0

    .line 163
    const/16 v2, 0x7d

    .line 164
    .line 165
    if-gt v1, v2, :cond_b

    .line 166
    .line 167
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->o([B)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const/4 v2, -0x1

    .line 172
    invoke-direct {p0, v3, v0, v2}, Lcom/transsion/transfer/androidasync/http/HybiParser;->q(I[BI)[B

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->J([B)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->A(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_b
    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    .line 184
    .line 185
    const-string v1, "Ping payload too large"

    .line 186
    .line 187
    invoke-direct {v0, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :cond_c
    if-ne v1, v3, :cond_d

    .line 192
    .line 193
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->o([B)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->B(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_d
    :goto_3
    return-void
.end method

.method private o([B)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UTF-8"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method private p(ILjava/lang/String;I)[B
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/transsion/transfer/androidasync/http/HybiParser;->m(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/http/HybiParser;->q(I[BI)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private q(I[BI)[B
    .locals 6

    .line 1
    array-length v5, p2

    .line 2
    const/4 v4, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move v3, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/HybiParser;->r(I[BIII)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private r(I[BIII)[B
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x1

    .line 11
    iget-boolean v8, v0, Lcom/transsion/transfer/androidasync/http/HybiParser;->m:Z

    .line 12
    .line 13
    if-eqz v8, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    return-object v1

    .line 17
    :cond_0
    if-lez v1, :cond_1

    .line 18
    .line 19
    move v8, v6

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v8, v5

    .line 22
    :goto_0
    add-int v9, p5, v8

    .line 23
    .line 24
    sub-int/2addr v9, v2

    .line 25
    const v10, 0xffff

    .line 26
    .line 27
    .line 28
    const/16 v11, 0x7d

    .line 29
    .line 30
    if-gt v9, v11, :cond_2

    .line 31
    .line 32
    move v12, v6

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    if-gt v9, v10, :cond_3

    .line 35
    .line 36
    const/4 v12, 0x4

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    const/16 v12, 0xa

    .line 39
    .line 40
    :goto_1
    iget-boolean v13, v0, Lcom/transsion/transfer/androidasync/http/HybiParser;->a:Z

    .line 41
    .line 42
    if-eqz v13, :cond_4

    .line 43
    .line 44
    const/4 v14, 0x4

    .line 45
    goto :goto_2

    .line 46
    :cond_4
    move v14, v5

    .line 47
    :goto_2
    add-int/2addr v14, v12

    .line 48
    if-eqz v13, :cond_5

    .line 49
    .line 50
    const/16 v13, 0x80

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_5
    move v13, v5

    .line 54
    :goto_3
    add-int v15, v9, v14

    .line 55
    .line 56
    new-array v15, v15, [B

    .line 57
    .line 58
    move/from16 v4, p1

    .line 59
    .line 60
    int-to-byte v4, v4

    .line 61
    or-int/lit8 v4, v4, -0x80

    .line 62
    .line 63
    int-to-byte v4, v4

    .line 64
    aput-byte v4, v15, v5

    .line 65
    .line 66
    if-gt v9, v11, :cond_6

    .line 67
    .line 68
    or-int v4, v13, v9

    .line 69
    .line 70
    int-to-byte v4, v4

    .line 71
    aput-byte v4, v15, v7

    .line 72
    .line 73
    :goto_4
    move v13, v8

    .line 74
    goto :goto_5

    .line 75
    :cond_6
    if-gt v9, v10, :cond_7

    .line 76
    .line 77
    or-int/lit8 v4, v13, 0x7e

    .line 78
    .line 79
    int-to-byte v4, v4

    .line 80
    aput-byte v4, v15, v7

    .line 81
    .line 82
    div-int/lit16 v4, v9, 0x100

    .line 83
    .line 84
    int-to-byte v4, v4

    .line 85
    aput-byte v4, v15, v6

    .line 86
    .line 87
    and-int/lit16 v4, v9, 0xff

    .line 88
    .line 89
    int-to-byte v4, v4

    .line 90
    aput-byte v4, v15, v3

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_7
    or-int/lit8 v4, v13, 0x7f

    .line 94
    .line 95
    int-to-byte v4, v4

    .line 96
    aput-byte v4, v15, v7

    .line 97
    .line 98
    int-to-long v10, v9

    .line 99
    const-wide/high16 v16, 0x100000000000000L

    .line 100
    .line 101
    div-long v16, v10, v16

    .line 102
    .line 103
    const-wide/16 v18, 0xff

    .line 104
    .line 105
    move v13, v8

    .line 106
    and-long v7, v16, v18

    .line 107
    .line 108
    long-to-int v7, v7

    .line 109
    int-to-byte v7, v7

    .line 110
    aput-byte v7, v15, v6

    .line 111
    .line 112
    const-wide/high16 v7, 0x1000000000000L

    .line 113
    .line 114
    div-long v7, v10, v7

    .line 115
    .line 116
    and-long v7, v7, v18

    .line 117
    .line 118
    long-to-int v7, v7

    .line 119
    int-to-byte v7, v7

    .line 120
    aput-byte v7, v15, v3

    .line 121
    .line 122
    const-wide v7, 0x10000000000L

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    div-long v7, v10, v7

    .line 128
    .line 129
    and-long v7, v7, v18

    .line 130
    .line 131
    long-to-int v7, v7

    .line 132
    int-to-byte v7, v7

    .line 133
    const/4 v8, 0x4

    .line 134
    aput-byte v7, v15, v8

    .line 135
    .line 136
    const-wide v7, 0x100000000L

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    div-long v7, v10, v7

    .line 142
    .line 143
    and-long v7, v7, v18

    .line 144
    .line 145
    long-to-int v7, v7

    .line 146
    int-to-byte v7, v7

    .line 147
    const/4 v8, 0x5

    .line 148
    aput-byte v7, v15, v8

    .line 149
    .line 150
    const-wide/32 v7, 0x1000000

    .line 151
    .line 152
    .line 153
    div-long v7, v10, v7

    .line 154
    .line 155
    and-long v7, v7, v18

    .line 156
    .line 157
    long-to-int v7, v7

    .line 158
    int-to-byte v7, v7

    .line 159
    const/4 v8, 0x6

    .line 160
    aput-byte v7, v15, v8

    .line 161
    .line 162
    const-wide/32 v7, 0x10000

    .line 163
    .line 164
    .line 165
    div-long v7, v10, v7

    .line 166
    .line 167
    and-long v7, v7, v18

    .line 168
    .line 169
    long-to-int v7, v7

    .line 170
    int-to-byte v7, v7

    .line 171
    const/4 v8, 0x7

    .line 172
    aput-byte v7, v15, v8

    .line 173
    .line 174
    const-wide/16 v7, 0x100

    .line 175
    .line 176
    div-long/2addr v10, v7

    .line 177
    and-long v7, v10, v18

    .line 178
    .line 179
    long-to-int v7, v7

    .line 180
    int-to-byte v7, v7

    .line 181
    const/16 v8, 0x8

    .line 182
    .line 183
    aput-byte v7, v15, v8

    .line 184
    .line 185
    and-int/lit16 v7, v9, 0xff

    .line 186
    .line 187
    int-to-byte v7, v7

    .line 188
    const/16 v8, 0x9

    .line 189
    .line 190
    aput-byte v7, v15, v8

    .line 191
    .line 192
    :goto_5
    if-lez v1, :cond_8

    .line 193
    .line 194
    div-int/lit16 v7, v1, 0x100

    .line 195
    .line 196
    and-int/lit16 v7, v7, 0xff

    .line 197
    .line 198
    int-to-byte v7, v7

    .line 199
    aput-byte v7, v15, v14

    .line 200
    .line 201
    const/4 v4, 0x1

    .line 202
    add-int/lit8 v7, v14, 0x1

    .line 203
    .line 204
    and-int/lit16 v1, v1, 0xff

    .line 205
    .line 206
    int-to-byte v1, v1

    .line 207
    aput-byte v1, v15, v7

    .line 208
    .line 209
    :cond_8
    add-int v8, v14, v13

    .line 210
    .line 211
    sub-int v1, p5, v2

    .line 212
    .line 213
    move-object/from16 v7, p2

    .line 214
    .line 215
    invoke-static {v7, v2, v15, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    .line 217
    .line 218
    iget-boolean v1, v0, Lcom/transsion/transfer/androidasync/http/HybiParser;->a:Z

    .line 219
    .line 220
    if-eqz v1, :cond_9

    .line 221
    .line 222
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 223
    .line 224
    .line 225
    move-result-wide v1

    .line 226
    const-wide/high16 v7, 0x4070000000000000L    # 256.0

    .line 227
    .line 228
    mul-double/2addr v1, v7

    .line 229
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 230
    .line 231
    .line 232
    move-result-wide v1

    .line 233
    double-to-int v1, v1

    .line 234
    int-to-byte v1, v1

    .line 235
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 236
    .line 237
    .line 238
    move-result-wide v9

    .line 239
    mul-double/2addr v9, v7

    .line 240
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 241
    .line 242
    .line 243
    move-result-wide v9

    .line 244
    double-to-int v2, v9

    .line 245
    int-to-byte v2, v2

    .line 246
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 247
    .line 248
    .line 249
    move-result-wide v9

    .line 250
    mul-double/2addr v9, v7

    .line 251
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 252
    .line 253
    .line 254
    move-result-wide v9

    .line 255
    double-to-int v9, v9

    .line 256
    int-to-byte v9, v9

    .line 257
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 258
    .line 259
    .line 260
    move-result-wide v10

    .line 261
    mul-double/2addr v10, v7

    .line 262
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 263
    .line 264
    .line 265
    move-result-wide v7

    .line 266
    double-to-int v7, v7

    .line 267
    int-to-byte v7, v7

    .line 268
    const/4 v8, 0x4

    .line 269
    new-array v10, v8, [B

    .line 270
    .line 271
    aput-byte v1, v10, v5

    .line 272
    .line 273
    const/4 v1, 0x1

    .line 274
    aput-byte v2, v10, v1

    .line 275
    .line 276
    aput-byte v9, v10, v6

    .line 277
    .line 278
    aput-byte v7, v10, v3

    .line 279
    .line 280
    invoke-static {v10, v5, v15, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    .line 282
    .line 283
    invoke-static {v15, v10, v14}, Lcom/transsion/transfer/androidasync/http/HybiParser;->w([B[BI)[B

    .line 284
    .line 285
    .line 286
    :cond_9
    return-object v15
.end method

.method private u([B)I
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->l([BII)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p1, v0, v2

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    const-wide/32 v2, 0x7fffffff

    .line 14
    .line 15
    .line 16
    cmp-long p1, v0, v2

    .line 17
    .line 18
    if-gtz p1, :cond_0

    .line 19
    .line 20
    long-to-int p1, v0

    .line 21
    return p1

    .line 22
    :cond_0
    new-instance p1, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "Bad integer: "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method private v([B)[B
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->p:[B

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->p:[B

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    new-array v2, v2, [B

    .line 38
    .line 39
    fill-array-data v2, :array_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 43
    .line 44
    .line 45
    :goto_1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->p:[B

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->p:[B

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private static w([B[BI)[B
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-object p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p0

    .line 7
    sub-int/2addr v1, p2

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    add-int v1, p2, v0

    .line 11
    .line 12
    aget-byte v2, p0, v1

    .line 13
    .line 14
    rem-int/lit8 v3, v0, 0x4

    .line 15
    .line 16
    aget-byte v3, p1, v3

    .line 17
    .line 18
    xor-int/2addr v2, v3

    .line 19
    int-to-byte v2, v2

    .line 20
    aput-byte v2, p0, v1

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-object p0
.end method


# virtual methods
.method protected abstract A(Ljava/lang/String;)V
.end method

.method protected abstract B(Ljava/lang/String;)V
.end method

.method C()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    .line 19
    .line 20
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->i:I

    .line 21
    .line 22
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->u:Lst/d;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/r;->b(ILst/d;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->t:Lst/d;

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/transsion/transfer/androidasync/r;->b(ILst/d;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    .line 37
    .line 38
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->h:I

    .line 39
    .line 40
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->s:Lst/d;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/r;->b(ILst/d;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->r:Lst/d;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/r;->b(ILst/d;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->q:Lst/d;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/r;->b(ILst/d;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public G(Ljava/lang/String;)[B
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->p(ILjava/lang/String;I)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected abstract H(Ljava/lang/Exception;)V
.end method

.method protected abstract J([B)V
.end method

.method public K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method protected finalize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "HybiParser"

    .line 11
    .line 12
    const-string v2, "inflater.end failed"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public s(Ljava/lang/String;)[B
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->p(ILjava/lang/String;I)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public t([B)[B
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->q(I[BI)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected abstract x(ILjava/lang/String;)V
.end method

.method protected abstract y(Ljava/lang/String;)V
.end method

.method protected abstract z([B)V
.end method
