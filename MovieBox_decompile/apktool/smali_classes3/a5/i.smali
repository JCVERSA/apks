.class public La5/i;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    add-int/lit8 v0, p1, -0x1

    .line 5
    .line 6
    iput v0, p0, La5/i;->b:I

    .line 7
    .line 8
    new-array p1, p1, [Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, La5/i;->a:[Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    const v0, 0x1215ef

    .line 14
    .line 15
    .line 16
    const-string v1, "$ref"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v1, v2, p1, v0}, La5/i;->a(Ljava/lang/String;III)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sget-object v1, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0, p1, v2, v0, v1}, La5/i;->a(Ljava/lang/String;III)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private static d(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1
    new-array v0, p2, [C

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;III)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, La5/i;->b(Ljava/lang/String;IIIZ)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public b(Ljava/lang/String;IIIZ)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, La5/i;->b:I

    .line 2
    .line 3
    and-int/2addr v0, p4

    .line 4
    iget-object v1, p0, La5/i;->a:[Ljava/lang/String;

    .line 5
    .line 6
    aget-object v1, v1, v0

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ne p4, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    if-ne p3, p4, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    if-eqz p4, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    invoke-static {p1, p2, p3}, La5/i;->d(Ljava/lang/String;II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p5, :cond_1

    .line 34
    .line 35
    iget-object p2, p0, La5/i;->a:[Ljava/lang/String;

    .line 36
    .line 37
    aput-object p1, p2, v0

    .line 38
    .line 39
    :cond_1
    return-object p1

    .line 40
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    if-ne p3, p4, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-static {p1, p2, p3}, La5/i;->d(Ljava/lang/String;II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, La5/i;->a:[Ljava/lang/String;

    .line 56
    .line 57
    aput-object p1, p2, v0

    .line 58
    .line 59
    return-object p1
.end method

.method public c([CIII)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, La5/i;->b:I

    .line 2
    .line 3
    and-int/2addr v0, p4

    .line 4
    iget-object v1, p0, La5/i;->a:[Ljava/lang/String;

    .line 5
    .line 6
    aget-object v1, v1, v0

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne p4, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    if-ne p3, p4, :cond_2

    .line 21
    .line 22
    const/4 p4, 0x0

    .line 23
    :goto_0
    if-ge p4, p3, :cond_1

    .line 24
    .line 25
    add-int v0, p2, p4

    .line 26
    .line 27
    aget-char v0, p1, v0

    .line 28
    .line 29
    invoke-virtual {v1, p4}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eq v0, v2, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v1

    .line 40
    :cond_2
    :goto_1
    new-instance p4, Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 43
    .line 44
    .line 45
    return-object p4

    .line 46
    :cond_3
    new-instance p4, Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, La5/i;->a:[Ljava/lang/String;

    .line 56
    .line 57
    aput-object p1, p2, v0

    .line 58
    .line 59
    return-object p1
.end method
