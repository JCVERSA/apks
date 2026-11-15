.class public final Ls62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyeb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls62$b;,
        Ls62$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    add-int/2addr v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1

    :cond_2
    :goto_0
    return p0
.end method

.method public final b(Ljava/lang/String;)Ls62$a;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance p1, Ls62$a;

    invoke-direct {p1, p0, v1, v1}, Ls62$a;-><init>(Ls62;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    const-string v3, "invalid port"

    const/4 v4, 0x1

    if-ne v0, v2, :cond_3

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/2addr v0, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls62;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/anthonynsimon/url/exceptions/MalformedURLException;

    invoke-direct {p0, v3}, Lcom/anthonynsimon/url/exceptions/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/anthonynsimon/url/exceptions/MalformedURLException;

    const-string p1, "IPv6 detected, but missing closing \']\' token"

    invoke-direct {p0, p1}, Lcom/anthonynsimon/url/exceptions/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    const-string v0, ":"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v5, 0x2

    if-gt v2, v5, :cond_4

    array-length v2, v0

    if-ne v2, v5, :cond_5

    :try_start_0
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Lcom/anthonynsimon/url/exceptions/MalformedURLException;

    invoke-direct {p0, v3}, Lcom/anthonynsimon/url/exceptions/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/anthonynsimon/url/exceptions/MalformedURLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid host in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anthonynsimon/url/exceptions/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    new-instance v0, Ls62$a;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anthonynsimon/url/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, v1}, Ls62$a;-><init>(Ls62;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ls62$a;
    .locals 5

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, ""

    if-gez v0, :cond_0

    new-instance v0, Ls62$a;

    invoke-direct {v0, p0, v1, p1}, Ls62$a;-><init>(Ls62;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_1

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_1
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ls62$a;

    invoke-direct {v0, p0, v1, p1}, Ls62$a;-><init>(Ls62;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_0
    new-instance v0, Ls62$a;

    invoke-direct {v0, p0, v1, p1}, Ls62$a;-><init>(Ls62;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    new-instance p0, Lcom/anthonynsimon/url/exceptions/MalformedURLException;

    const-string p1, "missing scheme"

    invoke-direct {p0, p1}, Lcom/anthonynsimon/url/exceptions/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/lang/String;)Ls62$b;
    .locals 7

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const-string v1, ":"

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/anthonynsimon/url/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/anthonynsimon/url/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lcom/anthonynsimon/url/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    add-int/2addr v0, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_2
    new-instance v0, Ls62$b;

    invoke-direct {v0, p0, v1, v2, p1}, Ls62$b;-><init>(Ls62;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcom/anthonynsimon/url/URL;
    .locals 5

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lxeb;

    invoke-direct {v0}, Lxeb;-><init>()V

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v0, v3}, Lxeb;->b(Ljava/lang/String;)Lxeb;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lxeb;->a()Lcom/anthonynsimon/url/URL;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Lxeb;->f(Ljava/lang/String;)Lxeb;

    invoke-virtual {v0}, Lxeb;->a()Lcom/anthonynsimon/url/URL;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_5

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "?"

    invoke-virtual {v0, v3}, Lxeb;->g(Ljava/lang/String;)Lxeb;

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Lxeb;->g(Ljava/lang/String;)Lxeb;

    :goto_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_5
    invoke-virtual {p0, p1}, Ls62;->c(Ljava/lang/String;)Ls62$a;

    move-result-object p1

    iget-object v1, p1, Ls62$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_1
    invoke-virtual {v0, v1}, Lxeb;->i(Ljava/lang/String;)Lxeb;

    iget-object p1, p1, Ls62$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0, p1}, Lxeb;->d(Ljava/lang/String;)Lxeb;

    invoke-virtual {v0}, Lxeb;->a()Lcom/anthonynsimon/url/URL;

    move-result-object p0

    return-object p0

    :cond_7
    if-nez v3, :cond_8

    const-string v1, "///"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_8
    const-string v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_9

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    move-object p1, v2

    goto :goto_2

    :cond_9
    const-string v1, ""

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0, p1}, Ls62;->d(Ljava/lang/String;)Ls62$b;

    move-result-object p1

    iget-object v2, p1, Ls62$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lxeb;->j(Ljava/lang/String;)Lxeb;

    iget-object v2, p1, Ls62$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lxeb;->e(Ljava/lang/String;)Lxeb;

    iget-object p1, p1, Ls62$b;->c:Ljava/lang/String;

    :cond_a
    invoke-virtual {p0, p1}, Ls62;->b(Ljava/lang/String;)Ls62$a;

    move-result-object p0

    iget-object p0, p0, Ls62$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lxeb;->c(Ljava/lang/String;)Lxeb;

    move-object p1, v1

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-static {p1}, Lcom/anthonynsimon/url/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lxeb;->f(Ljava/lang/String;)Lxeb;

    invoke-virtual {v0, p1}, Lxeb;->h(Ljava/lang/String;)Lxeb;

    :cond_c
    invoke-virtual {v0}, Lxeb;->a()Lcom/anthonynsimon/url/URL;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Lcom/anthonynsimon/url/exceptions/MalformedURLException;

    const-string p1, "raw url string is empty"

    invoke-direct {p0, p1}, Lcom/anthonynsimon/url/exceptions/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
