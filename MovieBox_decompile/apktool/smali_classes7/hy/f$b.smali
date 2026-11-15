.class abstract Lhy/f$b;
.super Lhy/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhy/f$b$b;,
        Lhy/f$b$a;
    }
.end annotation


# direct methods
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
.method e(Lhy/f$e;Lhy/a;)Z
    .locals 5

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
    const/16 v2, 0x8d

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
    const/16 v3, 0xa1

    .line 33
    .line 34
    if-lt v0, v3, :cond_2

    .line 35
    .line 36
    const/16 v4, 0xfe

    .line 37
    .line 38
    if-gt v0, v4, :cond_2

    .line 39
    .line 40
    if-ge v2, v3, :cond_4

    .line 41
    .line 42
    iput-boolean v1, p1, Lhy/f$e;->c:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/16 v4, 0x8e

    .line 46
    .line 47
    if-ne v0, v4, :cond_3

    .line 48
    .line 49
    if-ge v2, v3, :cond_4

    .line 50
    .line 51
    iput-boolean v1, p1, Lhy/f$e;->c:Z

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/16 v2, 0x8f

    .line 55
    .line 56
    if-ne v0, v2, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lhy/f$e;->a(Lhy/a;)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iget v0, p1, Lhy/f$e;->a:I

    .line 63
    .line 64
    shl-int/lit8 v0, v0, 0x8

    .line 65
    .line 66
    or-int/2addr v0, p2

    .line 67
    iput v0, p1, Lhy/f$e;->a:I

    .line 68
    .line 69
    if-ge p2, v3, :cond_4

    .line 70
    .line 71
    iput-boolean v1, p1, Lhy/f$e;->c:Z

    .line 72
    .line 73
    :cond_4
    :goto_0
    iget-boolean p1, p1, Lhy/f$e;->d:Z

    .line 74
    .line 75
    xor-int/2addr p1, v1

    .line 76
    return p1
.end method
