.class public abstract Lgy/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method private static a([BLjava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lrz/a;->b(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static varargs b([B[Z)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "ISO-8859-1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    array-length v2, p1

    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aget-boolean p1, p1, v2

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {p0, v0}, Lgy/a;->a([BLjava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lgy/a;->d(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Lir/ac/iust/htmlchardet/Charsets;->isValid(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-static {v2}, Lir/ac/iust/htmlchardet/Charsets;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    move-object p1, v1

    .line 34
    :cond_1
    invoke-static {p0}, Lgy/a;->e([B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "UTF-8"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-static {v2}, Lir/ac/iust/htmlchardet/Charsets;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_2
    if-nez p1, :cond_3

    .line 52
    .line 53
    invoke-static {p0, v0}, Lgy/a;->a([BLjava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->W0()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 62
    .line 63
    .line 64
    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    if-eqz v1, :cond_5

    .line 66
    .line 67
    array-length p1, v1

    .line 68
    const/16 v0, 0x28

    .line 69
    .line 70
    if-ge p1, v0, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    move-object p0, v1

    .line 74
    :cond_5
    :goto_0
    invoke-static {p0}, Lgy/a;->c([B)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lir/ac/iust/htmlchardet/Charsets;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method private static c([B)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lhy/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lhy/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lhy/a;->d([B)Lhy/a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lhy/a;->b()Lhy/b;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lhy/b;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static d(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "meta"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->R0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 22
    .line 23
    const-string v1, "charset"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/j;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lir/ac/iust/htmlchardet/Charsets;->isValid(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_1
    const-string v2, "content"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/j;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const-string v1, "charset="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/lit8 v1, v1, 0x8

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lir/ac/iust/htmlchardet/Charsets;->isValid(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_2
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method private static e([B)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Luz/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Luz/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v2, p0

    .line 8
    invoke-virtual {v0, p0, v2, v1}, Luz/h;->i([BIZ)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Luz/t;->a()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Luz/t;->g()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    aget-object p0, p0, v1

    .line 19
    .line 20
    return-object p0
.end method
