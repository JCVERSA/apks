.class final Lorg/brotli/dec/j;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field A:[B

.field B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field G:I

.field H:[B

.field I:I

.field J:I

.field K:I

.field L:I

.field M:I

.field N:I

.field O:I

.field P:I

.field Q:I

.field R:J

.field S:[B

.field T:I

.field U:I

.field V:I

.field W:I

.field X:I

.field Y:I

.field Z:[B

.field a:I

.field b:I

.field final c:Lorg/brotli/dec/a;

.field d:[B

.field final e:[I

.field final f:[I

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field final k:Lorg/brotli/dec/g;

.field final l:Lorg/brotli/dec/g;

.field final m:Lorg/brotli/dec/g;

.field final n:[I

.field final o:[I

.field final p:[I

.field final q:[I

.field r:I

.field s:I

.field t:I

.field u:Z

.field v:I

.field w:I

.field x:I

.field y:I

.field z:[B


# direct methods
.method constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/brotli/dec/j;->a:I

    .line 6
    .line 7
    new-instance v1, Lorg/brotli/dec/a;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/brotli/dec/a;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    .line 13
    .line 14
    const/16 v1, 0xca8

    .line 15
    .line 16
    new-array v2, v1, [I

    .line 17
    .line 18
    iput-object v2, p0, Lorg/brotli/dec/j;->e:[I

    .line 19
    .line 20
    new-array v1, v1, [I

    .line 21
    .line 22
    iput-object v1, p0, Lorg/brotli/dec/j;->f:[I

    .line 23
    .line 24
    new-instance v1, Lorg/brotli/dec/g;

    .line 25
    .line 26
    invoke-direct {v1}, Lorg/brotli/dec/g;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    .line 30
    .line 31
    new-instance v1, Lorg/brotli/dec/g;

    .line 32
    .line 33
    invoke-direct {v1}, Lorg/brotli/dec/g;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    .line 37
    .line 38
    new-instance v1, Lorg/brotli/dec/g;

    .line 39
    .line 40
    invoke-direct {v1}, Lorg/brotli/dec/g;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lorg/brotli/dec/j;->m:Lorg/brotli/dec/g;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    new-array v2, v1, [I

    .line 47
    .line 48
    iput-object v2, p0, Lorg/brotli/dec/j;->n:[I

    .line 49
    .line 50
    new-array v1, v1, [I

    .line 51
    .line 52
    iput-object v1, p0, Lorg/brotli/dec/j;->o:[I

    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    new-array v1, v1, [I

    .line 56
    .line 57
    iput-object v1, p0, Lorg/brotli/dec/j;->p:[I

    .line 58
    .line 59
    const/16 v1, 0xb

    .line 60
    .line 61
    const/4 v2, 0x4

    .line 62
    const/16 v3, 0x10

    .line 63
    .line 64
    const/16 v4, 0xf

    .line 65
    .line 66
    filled-new-array {v3, v4, v1, v2}, [I

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lorg/brotli/dec/j;->q:[I

    .line 71
    .line 72
    iput v0, p0, Lorg/brotli/dec/j;->r:I

    .line 73
    .line 74
    iput v0, p0, Lorg/brotli/dec/j;->s:I

    .line 75
    .line 76
    iput v0, p0, Lorg/brotli/dec/j;->t:I

    .line 77
    .line 78
    iput-boolean v0, p0, Lorg/brotli/dec/j;->u:Z

    .line 79
    .line 80
    iput v0, p0, Lorg/brotli/dec/j;->v:I

    .line 81
    .line 82
    iput v0, p0, Lorg/brotli/dec/j;->Q:I

    .line 83
    .line 84
    const-wide/16 v1, 0x0

    .line 85
    .line 86
    iput-wide v1, p0, Lorg/brotli/dec/j;->R:J

    .line 87
    .line 88
    new-array v1, v0, [B

    .line 89
    .line 90
    iput-object v1, p0, Lorg/brotli/dec/j;->S:[B

    .line 91
    .line 92
    iput v0, p0, Lorg/brotli/dec/j;->T:I

    .line 93
    .line 94
    return-void
.end method

.method static a(Lorg/brotli/dec/j;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/brotli/dec/j;->a:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput v1, p0, Lorg/brotli/dec/j;->a:I

    .line 11
    .line 12
    iget-object p0, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    .line 13
    .line 14
    invoke-static {p0}, Lorg/brotli/dec/a;->b(Lorg/brotli/dec/a;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "State MUST be initialized"

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method private static b(Lorg/brotli/dec/a;)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/16 p0, 0x10

    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    const/4 v0, 0x3

    .line 12
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x11

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    add-int/2addr v1, v2

    .line 21
    return v1

    .line 22
    :cond_1
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    add-int/lit8 p0, p0, 0x8

    .line 29
    .line 30
    return p0

    .line 31
    :cond_2
    return v2
.end method

.method static c(Lorg/brotli/dec/j;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/brotli/dec/j;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lorg/brotli/dec/a;->e(Lorg/brotli/dec/a;Ljava/io/InputStream;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    .line 11
    .line 12
    invoke-static {p1}, Lorg/brotli/dec/j;->b(Lorg/brotli/dec/a;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/16 v0, 0x9

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    shl-int p1, v0, p1

    .line 22
    .line 23
    iput p1, p0, Lorg/brotli/dec/j;->P:I

    .line 24
    .line 25
    add-int/lit8 p1, p1, -0x10

    .line 26
    .line 27
    iput p1, p0, Lorg/brotli/dec/j;->O:I

    .line 28
    .line 29
    iput v0, p0, Lorg/brotli/dec/j;->a:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    .line 33
    .line 34
    const-string p1, "Invalid \'windowBits\' code"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p1, "State MUST be uninitialized"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method
