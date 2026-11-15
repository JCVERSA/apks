.class public Ljnd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/io/Reader;

.field public c:C

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Ljnd;->b:Ljava/io/Reader;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ljnd;->d:Z

    .line 4
    iput p1, p0, Ljnd;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljnd;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/transsion/json/k;
    .locals 2

    new-instance v0, Lcom/transsion/json/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljnd;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public b(C)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljnd;->f()C

    move-result v1

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    if-eq v1, v2, :cond_9

    const/16 v3, 0xd

    if-eq v1, v3, :cond_9

    const/16 v4, 0x5c

    if-eq v1, v4, :cond_1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljnd;->f()C

    move-result v1

    const/16 v4, 0x62

    if-eq v1, v4, :cond_8

    const/16 v4, 0x66

    if-eq v1, v4, :cond_7

    const/16 v4, 0x6e

    if-eq v1, v4, :cond_6

    const/16 v2, 0x72

    if-eq v1, v2, :cond_5

    const/16 v2, 0x78

    const/16 v3, 0x10

    if-eq v1, v2, :cond_4

    const/16 v2, 0x74

    if-eq v1, v2, :cond_3

    const/16 v2, 0x75

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljnd;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljnd;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_9
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Ljnd;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0
.end method

.method public c(I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-array v0, p1, [C

    iget-boolean v1, p0, Ljnd;->d:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Ljnd;->d:Z

    iget-char v1, p0, Ljnd;->c:C

    aput-char v1, v0, v3

    move v3, v2

    :cond_1
    :goto_0
    if-ge v3, p1, :cond_2

    :try_start_0
    iget-object v1, p0, Ljnd;->b:Ljava/io/Reader;

    sub-int v4, p1, v3

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    add-int/2addr v3, v1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/transsion/json/k;

    invoke-direct {p1, p0}, Lcom/transsion/json/k;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    iget v1, p0, Ljnd;->a:I

    add-int/2addr v1, v3

    iput v1, p0, Ljnd;->a:I

    if-lt v3, p1, :cond_3

    sub-int/2addr p1, v2

    aget-char p1, v0, p1

    iput-char p1, p0, Ljnd;->c:C

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_3
    const-string p1, "Substring bounds error"

    invoke-virtual {p0, p1}, Ljnd;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Ljnd;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Ljnd;->a:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljnd;->a:I

    iput-boolean v1, p0, Ljnd;->d:Z

    return-void

    :cond_0
    new-instance p0, Lcom/transsion/json/k;

    const-string v0, "Stepping back two steps is not supported"

    invoke-direct {p0, v0}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/json/k;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Duplicate key \""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public f()C
    .locals 2

    iget-boolean v0, p0, Ljnd;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ljnd;->d:Z

    iget-char v0, p0, Ljnd;->c:C

    if-eqz v0, :cond_0

    iget v1, p0, Ljnd;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljnd;->a:I

    :cond_0
    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Ljnd;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_2

    iput-char v1, p0, Ljnd;->c:C

    return v1

    :cond_2
    iget v1, p0, Ljnd;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljnd;->a:I

    int-to-char v0, v0

    iput-char v0, p0, Ljnd;->c:C

    return v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/transsion/json/k;

    invoke-direct {v0, p0}, Lcom/transsion/json/k;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    const/16 v2, 0x45

    if-eq v1, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public h()C
    .locals 2

    :cond_0
    invoke-virtual {p0}, Ljnd;->f()C

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    :cond_1
    return v0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Ljnd;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/transsion/json/n;

    invoke-direct {p0, p1}, Lcom/transsion/json/n;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    return-object p1
.end method

.method public j()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ljnd;->h()C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const-string v2, ",:]}/\\\"[{;=#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljnd;->f()C

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljnd;->d()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Ljnd;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Ljnd;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljnd;->d()V

    invoke-virtual {p0}, Ljnd;->l()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljnd;->d()V

    invoke-virtual {p0}, Ljnd;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, v0}, Ljnd;->b(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljnd;->h()C

    move-result v1

    const/16 v2, 0x5b

    const/16 v3, 0x29

    const/16 v4, 0x5d

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const/16 v2, 0x28

    if-ne v1, v2, :cond_8

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Ljnd;->h()C

    move-result v2

    if-ne v2, v4, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljnd;->d()V

    :goto_1
    invoke-virtual {p0}, Ljnd;->h()C

    move-result v2

    const/16 v5, 0x2c

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Ljnd;->d()V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljnd;->d()V

    invoke-virtual {p0}, Ljnd;->j()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p0}, Ljnd;->h()C

    move-result v2

    if-eq v2, v3, :cond_6

    if-eq v2, v5, :cond_4

    const/16 v5, 0x3b

    if-eq v2, v5, :cond_4

    if-ne v2, v4, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p0, v0}, Ljnd;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    :cond_4
    invoke-virtual {p0}, Ljnd;->h()C

    move-result v2

    if-ne v2, v4, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljnd;->d()V

    goto :goto_1

    :cond_6
    :goto_3
    if-ne v1, v2, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljnd;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    :cond_8
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p0, v0}, Ljnd;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0
.end method

.method public final l()Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljnd;->h()C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_8

    :goto_0
    invoke-virtual {p0}, Ljnd;->h()C

    move-result v1

    if-eqz v1, :cond_7

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_6

    invoke-virtual {p0}, Ljnd;->d()V

    invoke-virtual {p0}, Ljnd;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljnd;->h()C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljnd;->f()C

    move-result v3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Ljnd;->d()V

    goto :goto_1

    :cond_0
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_5

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljnd;->j()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Ljnd;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljnd;->h()C

    move-result v1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_3

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    const-string v0, "Expected a \',\' or \'}\'"

    invoke-virtual {p0, v0}, Ljnd;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {p0}, Ljnd;->h()C

    move-result v1

    if-ne v1, v2, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljnd;->d()V

    goto :goto_0

    :cond_5
    const-string v0, "Expected a \':\' after a key"

    invoke-virtual {p0, v0}, Ljnd;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    :cond_6
    return-object v0

    :cond_7
    const-string v0, "A JSONObject text must end with \'}\'"

    invoke-virtual {p0, v0}, Ljnd;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    :cond_8
    const-string v0, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p0, v0}, Ljnd;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljnd;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
