.class final Lfl/f$d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field c:[Ljava/io/File;

.field d:[Ljava/io/File;

.field private e:Z

.field private f:Lfl/f$c;

.field private g:J

.field private h:J

.field final synthetic i:Lfl/f;


# direct methods
.method synthetic constructor <init>(Lfl/f;Ljava/lang/String;Lfl/f$a;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lfl/f$d;->i:Lfl/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lfl/f$d;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1}, Lfl/f;->s(Lfl/f;)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    new-array p3, p3, [J

    .line 13
    .line 14
    iput-object p3, p0, Lfl/f$d;->b:[J

    .line 15
    .line 16
    invoke-static {p1}, Lfl/f;->s(Lfl/f;)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    new-array p3, p3, [Ljava/io/File;

    .line 21
    .line 22
    iput-object p3, p0, Lfl/f$d;->c:[Ljava/io/File;

    .line 23
    .line 24
    invoke-static {p1}, Lfl/f;->s(Lfl/f;)I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    new-array p3, p3, [Ljava/io/File;

    .line 29
    .line 30
    iput-object p3, p0, Lfl/f$d;->d:[Ljava/io/File;

    .line 31
    .line 32
    new-instance p3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/16 p2, 0x2e

    .line 38
    .line 39
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-static {p1}, Lfl/f;->s(Lfl/f;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ge v0, v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lfl/f$d;->c:[Ljava/io/File;

    .line 57
    .line 58
    new-instance v2, Ljava/io/File;

    .line 59
    .line 60
    invoke-static {p1}, Lfl/f;->v(Lfl/f;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    aput-object v2, v1, v0

    .line 72
    .line 73
    const-string v1, ".tmp"

    .line 74
    .line 75
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lfl/f$d;->d:[Ljava/io/File;

    .line 79
    .line 80
    new-instance v2, Ljava/io/File;

    .line 81
    .line 82
    invoke-static {p1}, Lfl/f;->v(Lfl/f;)Ljava/io/File;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    aput-object v2, v1, v0

    .line 94
    .line 95
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method static synthetic a(Lfl/f$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lfl/f$d;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic b(Lfl/f$d;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lfl/f$d;->h:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic c(Lfl/f$d;Lfl/f$c;)Lfl/f$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lfl/f$d;->f:Lfl/f$c;

    .line 2
    .line 3
    return-object p1
.end method

.method private e([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "unexpected journal line: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method static synthetic g(Lfl/f$d;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfl/f$d;->k([Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lfl/f$d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfl/f$d;->e:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lfl/f$d;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lfl/f$d;->g:J

    .line 2
    .line 3
    return-wide p1
.end method

.method private k([Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Lfl/f$d;->i:Lfl/f;

    .line 3
    .line 4
    invoke-static {v1}, Lfl/f;->s(Lfl/f;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    :try_start_0
    array-length v1, p1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lfl/f$d;->b:[J

    .line 16
    .line 17
    aget-object v3, p1, v0

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    aput-wide v3, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :catch_0
    invoke-direct {p0, p1}, Lfl/f$d;->e([Ljava/lang/String;)Ljava/io/IOException;

    .line 30
    .line 31
    .line 32
    throw v2

    .line 33
    :cond_1
    invoke-direct {p0, p1}, Lfl/f$d;->e([Ljava/lang/String;)Ljava/io/IOException;

    .line 34
    .line 35
    .line 36
    throw v2
.end method

.method static synthetic l(Lfl/f$d;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lfl/f$d;->b:[J

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lfl/f$d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfl/f$d;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lfl/f$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lfl/f$d;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic o(Lfl/f$d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfl/f$d;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lfl/f$d;)Lfl/f$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lfl/f$d;->f:Lfl/f$c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public d(I)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lfl/f$d;->c:[Ljava/io/File;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lfl/f$d;->b:[J

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_0

    .line 11
    .line 12
    aget-wide v4, v1, v3

    .line 13
    .line 14
    const/16 v6, 0x20

    .line 15
    .line 16
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public j(I)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lfl/f$d;->d:[Ljava/io/File;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method
