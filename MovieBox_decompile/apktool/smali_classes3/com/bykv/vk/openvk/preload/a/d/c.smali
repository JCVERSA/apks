.class public final Lcom/bykv/vk/openvk/preload/a/d/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Ljava/io/Writer;

.field private d:[I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x80

    .line 3
    .line 4
    new-array v1, v1, [Ljava/lang/String;

    .line 5
    .line 6
    sput-object v1, Lcom/bykv/vk/openvk/preload/a/d/c;->a:[Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    const/16 v3, 0x1f

    .line 11
    .line 12
    if-gt v2, v3, :cond_0

    .line 13
    .line 14
    sget-object v3, Lcom/bykv/vk/openvk/preload/a/d/c;->a:[Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    new-array v5, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    aput-object v4, v5, v1

    .line 23
    .line 24
    const-string v4, "\\u%04x"

    .line 25
    .line 26
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    aput-object v4, v3, v2

    .line 31
    .line 32
    add-int/2addr v2, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/c;->a:[Ljava/lang/String;

    .line 35
    .line 36
    const/16 v1, 0x22

    .line 37
    .line 38
    const-string v2, "\\\""

    .line 39
    .line 40
    aput-object v2, v0, v1

    .line 41
    .line 42
    const/16 v1, 0x5c

    .line 43
    .line 44
    const-string v2, "\\\\"

    .line 45
    .line 46
    aput-object v2, v0, v1

    .line 47
    .line 48
    const/16 v1, 0x9

    .line 49
    .line 50
    const-string v2, "\\t"

    .line 51
    .line 52
    aput-object v2, v0, v1

    .line 53
    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    const-string v2, "\\b"

    .line 57
    .line 58
    aput-object v2, v0, v1

    .line 59
    .line 60
    const/16 v1, 0xa

    .line 61
    .line 62
    const-string v2, "\\n"

    .line 63
    .line 64
    aput-object v2, v0, v1

    .line 65
    .line 66
    const/16 v1, 0xd

    .line 67
    .line 68
    const-string v2, "\\r"

    .line 69
    .line 70
    aput-object v2, v0, v1

    .line 71
    .line 72
    const/16 v1, 0xc

    .line 73
    .line 74
    const-string v2, "\\f"

    .line 75
    .line 76
    aput-object v2, v0, v1

    .line 77
    .line 78
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, [Ljava/lang/String;

    .line 83
    .line 84
    sput-object v0, Lcom/bykv/vk/openvk/preload/a/d/c;->b:[Ljava/lang/String;

    .line 85
    .line 86
    const/16 v1, 0x3c

    .line 87
    .line 88
    const-string v2, "\\u003c"

    .line 89
    .line 90
    aput-object v2, v0, v1

    .line 91
    .line 92
    const/16 v1, 0x3e

    .line 93
    .line 94
    const-string v2, "\\u003e"

    .line 95
    .line 96
    aput-object v2, v0, v1

    .line 97
    .line 98
    const/16 v1, 0x26

    .line 99
    .line 100
    const-string v2, "\\u0026"

    .line 101
    .line 102
    aput-object v2, v0, v1

    .line 103
    .line 104
    const/16 v1, 0x3d

    .line 105
    .line 106
    const-string v2, "\\u003d"

    .line 107
    .line 108
    aput-object v2, v0, v1

    .line 109
    .line 110
    const/16 v1, 0x27

    .line 111
    .line 112
    const-string v2, "\\u0027"

    .line 113
    .line 114
    aput-object v2, v0, v1

    .line 115
    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->d:[I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(I)V

    .line 15
    .line 16
    .line 17
    const-string v0, ":"

    .line 18
    .line 19
    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->g:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->k:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 30
    .line 31
    const-string v0, "out == null"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method private a(IC)Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->m()V

    .line 4
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(I)V

    .line 5
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    return-object p0
.end method

.method private a(IIC)Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->i()I

    move-result v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nesting problem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->j:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 9
    iget p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    if-ne v0, p2, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->k()V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(I)V

    return-object p0

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Dangling name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->j:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .locals 3

    .line 13
    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->d:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    .line 14
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->d:[I

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->d:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    aput p1, v0, v1

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->d:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/c;->b:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/c;->a:[Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_6

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    .line 7
    aget-object v5, v0, v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_1
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_2

    .line 8
    const-string v5, "\\u2028"

    goto :goto_2

    :cond_2
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_5

    .line 9
    const-string v5, "\\u2029"

    :cond_3
    :goto_2
    if-ge v4, v3, :cond_4

    .line 10
    iget-object v6, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    sub-int v7, v3, v4

    invoke-virtual {v6, p1, v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 11
    :cond_4
    iget-object v4, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v4, v3, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-ge v4, v1, :cond_7

    .line 12
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    sub-int/2addr v1, v4

    invoke-virtual {v0, p1, v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 13
    :cond_7
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method private i()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->d:[I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "JsonWriter is closed."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method private j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->j:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->l()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->j:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/a/d/c;->c(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->j:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private k()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->f:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method private l()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    .line 9
    .line 10
    const/16 v1, 0x2c

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x3

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    :goto_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->k()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/a/d/c;->b(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "Nesting problem."

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method private m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v1, :cond_5

    .line 8
    .line 9
    if-eq v0, v2, :cond_4

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->h:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "JSON must have only one top-level value."

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "Nesting problem."

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/bykv/vk/openvk/preload/a/d/c;->b(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->g:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x5

    .line 53
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/a/d/c;->b(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    .line 58
    .line 59
    const/16 v1, 0x2c

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->k()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_5
    invoke-direct {p0, v2}, Lcom/bykv/vk/openvk/preload/a/d/c;->b(I)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->k()V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->j()V

    .line 27
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->m()V

    .line 28
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Boolean;)Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->h()Lcom/bykv/vk/openvk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->j()V

    .line 24
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->m()V

    .line 25
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Number;)Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->h()Lcom/bykv/vk/openvk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->j()V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->h:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Numeric values must be finite, but was "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->m()V

    .line 36
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 16
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 17
    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    if-eqz v0, :cond_0

    .line 18
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->j:Ljava/lang/String;

    return-object p0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->h:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->h:Z

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->h()Lcom/bykv/vk/openvk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->j()V

    .line 6
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->m()V

    .line 7
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->i:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->i:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->k:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->k:Z

    return v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-gt v0, v1, :cond_1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->d:[I

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    aget v0, v2, v0

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 26
    .line 27
    const-string v1, "Incomplete document"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final d()Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->j()V

    const/4 v0, 0x1

    const/16 v1, 0x5b

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(IC)Lcom/bykv/vk/openvk/preload/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->j()V

    .line 4
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->m()V

    .line 5
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public final e()Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x5d

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(IIC)Lcom/bykv/vk/openvk/preload/a/d/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final f()Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->j()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    const/16 v1, 0x7b

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(IC)Lcom/bykv/vk/openvk/preload/a/d/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "JsonWriter is closed."

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public final g()Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const/16 v1, 0x7d

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(IIC)Lcom/bykv/vk/openvk/preload/a/d/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final h()Lcom/bykv/vk/openvk/preload/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->j:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->k:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->j()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->j:Ljava/lang/String;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/d/c;->m()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Ljava/io/Writer;

    .line 21
    .line 22
    const-string v1, "null"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method
