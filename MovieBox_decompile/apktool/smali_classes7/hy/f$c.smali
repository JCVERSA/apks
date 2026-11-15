.class Lhy/f$c;
.super Lhy/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lhy/f$c;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0xa1a1
        0xa1a2
        0xa1a3
        0xa1a4
        0xa1b0
        0xa1b1
        0xa1f1
        0xa1f3
        0xa3a1
        0xa3ac
        0xa3ba
        0xb1a8
        0xb1b8
        0xb1be
        0xb2bb
        0xb3c9
        0xb3f6
        0xb4f3
        0xb5bd
        0xb5c4
        0xb5e3
        0xb6af
        0xb6d4
        0xb6e0
        0xb7a2
        0xb7a8
        0xb7bd
        0xb7d6
        0xb7dd
        0xb8b4
        0xb8df
        0xb8f6
        0xb9ab
        0xb9c9
        0xb9d8
        0xb9fa
        0xb9fd
        0xbacd
        0xbba7
        0xbbd6
        0xbbe1
        0xbbfa
        0xbcbc
        0xbcdb
        0xbcfe
        0xbdcc
        0xbecd
        0xbedd
        0xbfb4
        0xbfc6
        0xbfc9
        0xc0b4
        0xc0ed
        0xc1cb
        0xc2db
        0xc3c7
        0xc4dc
        0xc4ea
        0xc5cc
        0xc6f7
        0xc7f8
        0xc8ab
        0xc8cb
        0xc8d5
        0xc8e7
        0xc9cf
        0xc9fa
        0xcab1
        0xcab5
        0xcac7
        0xcad0
        0xcad6
        0xcaf5
        0xcafd
        0xccec
        0xcdf8
        0xceaa
        0xcec4
        0xced2
        0xcee5
        0xcfb5
        0xcfc2
        0xcfd6
        0xd0c2
        0xd0c5
        0xd0d0
        0xd0d4
        0xd1a7
        0xd2aa
        0xd2b2
        0xd2b5
        0xd2bb
        0xd2d4
        0xd3c3
        0xd3d0
        0xd3fd
        0xd4c2
        0xd4da
        0xd5e2
        0xd6d0
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/f;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "zh"

    .line 2
    .line 3
    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "GB18030"

    .line 2
    .line 3
    return-object v0
.end method

.method c(Lhy/a;)Lhy/b;
    .locals 2

    .line 1
    sget-object v0, Lhy/f$c;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lhy/f;->d(Lhy/a;[I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Lhy/b;

    .line 12
    .line 13
    invoke-direct {v1, p1, p0, v0}, Lhy/b;-><init>(Lhy/a;Lhy/h;I)V

    .line 14
    .line 15
    .line 16
    move-object p1, v1

    .line 17
    :goto_0
    return-object p1
.end method

.method e(Lhy/f$e;Lhy/a;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lhy/f$e;->c:Z

    .line 3
    .line 4
    invoke-virtual {p1, p2}, Lhy/f$e;->a(Lhy/a;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p1, Lhy/f$e;->a:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p1, Lhy/f$e;->d:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v2, 0x80

    .line 17
    .line 18
    if-gt v0, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1, p2}, Lhy/f$e;->a(Lhy/a;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget v3, p1, Lhy/f$e;->a:I

    .line 26
    .line 27
    shl-int/lit8 v3, v3, 0x8

    .line 28
    .line 29
    or-int/2addr v3, v2

    .line 30
    iput v3, p1, Lhy/f$e;->a:I

    .line 31
    .line 32
    const/16 v3, 0x81

    .line 33
    .line 34
    if-lt v0, v3, :cond_5

    .line 35
    .line 36
    const/16 v4, 0xfe

    .line 37
    .line 38
    if-gt v0, v4, :cond_5

    .line 39
    .line 40
    const/16 v0, 0x40

    .line 41
    .line 42
    if-lt v2, v0, :cond_2

    .line 43
    .line 44
    const/16 v0, 0x7e

    .line 45
    .line 46
    if-le v2, v0, :cond_5

    .line 47
    .line 48
    :cond_2
    const/16 v0, 0x50

    .line 49
    .line 50
    if-lt v2, v0, :cond_3

    .line 51
    .line 52
    if-gt v2, v4, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/16 v0, 0x30

    .line 56
    .line 57
    if-lt v2, v0, :cond_4

    .line 58
    .line 59
    const/16 v5, 0x39

    .line 60
    .line 61
    if-gt v2, v5, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lhy/f$e;->a(Lhy/a;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-lt v2, v3, :cond_4

    .line 68
    .line 69
    if-gt v2, v4, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lhy/f$e;->a(Lhy/a;)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-lt p2, v0, :cond_4

    .line 76
    .line 77
    if-gt p2, v5, :cond_4

    .line 78
    .line 79
    iget v0, p1, Lhy/f$e;->a:I

    .line 80
    .line 81
    shl-int/lit8 v0, v0, 0x10

    .line 82
    .line 83
    shl-int/lit8 v2, v2, 0x8

    .line 84
    .line 85
    or-int/2addr v0, v2

    .line 86
    or-int/2addr p2, v0

    .line 87
    iput p2, p1, Lhy/f$e;->a:I

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iput-boolean v1, p1, Lhy/f$e;->c:Z

    .line 91
    .line 92
    :cond_5
    :goto_0
    iget-boolean p1, p1, Lhy/f$e;->d:Z

    .line 93
    .line 94
    xor-int/2addr p1, v1

    .line 95
    return p1
.end method
