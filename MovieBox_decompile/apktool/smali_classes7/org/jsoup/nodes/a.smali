.class public Lorg/jsoup/nodes/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field c:Lorg/jsoup/nodes/b;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    const-string v28, "truespeed"

    .line 2
    .line 3
    const-string v29, "typemustmatch"

    .line 4
    .line 5
    const-string v0, "allowfullscreen"

    .line 6
    .line 7
    const-string v1, "async"

    .line 8
    .line 9
    const-string v2, "autofocus"

    .line 10
    .line 11
    const-string v3, "checked"

    .line 12
    .line 13
    const-string v4, "compact"

    .line 14
    .line 15
    const-string v5, "declare"

    .line 16
    .line 17
    const-string v6, "default"

    .line 18
    .line 19
    const-string v7, "defer"

    .line 20
    .line 21
    const-string v8, "disabled"

    .line 22
    .line 23
    const-string v9, "formnovalidate"

    .line 24
    .line 25
    const-string v10, "hidden"

    .line 26
    .line 27
    const-string v11, "inert"

    .line 28
    .line 29
    const-string v12, "ismap"

    .line 30
    .line 31
    const-string v13, "itemscope"

    .line 32
    .line 33
    const-string v14, "multiple"

    .line 34
    .line 35
    const-string v15, "muted"

    .line 36
    .line 37
    const-string v16, "nohref"

    .line 38
    .line 39
    const-string v17, "noresize"

    .line 40
    .line 41
    const-string v18, "noshade"

    .line 42
    .line 43
    const-string v19, "novalidate"

    .line 44
    .line 45
    const-string v20, "nowrap"

    .line 46
    .line 47
    const-string v21, "open"

    .line 48
    .line 49
    const-string v22, "readonly"

    .line 50
    .line 51
    const-string v23, "required"

    .line 52
    .line 53
    const-string v24, "reversed"

    .line 54
    .line 55
    const-string v25, "seamless"

    .line 56
    .line 57
    const-string v26, "selected"

    .line 58
    .line 59
    const-string v27, "sortable"

    .line 60
    .line 61
    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lorg/jsoup/nodes/a;->d:[Ljava/lang/String;

    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/nodes/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 6
    iput-object p2, p0, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lorg/jsoup/nodes/a;->c:Lorg/jsoup/nodes/b;

    return-void
.end method

.method protected static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 6

    .line 1
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, p3}, Lorg/jsoup/nodes/a;->k(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "=\""

    .line 11
    .line 12
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lorg/jsoup/nodes/b;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    move-object v0, p2

    .line 23
    move-object v2, p3

    .line 24
    invoke-static/range {v0 .. v5}, Lorg/jsoup/nodes/Entities;->e(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

    .line 25
    .line 26
    .line 27
    const/16 p0, 0x22

    .line 28
    .line 29
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method protected static i(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/nodes/a;->d:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method protected static k(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->n()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 6
    .line 7
    if-ne p2, v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const-string p2, ""

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    :cond_0
    invoke-static {p0}, Lorg/jsoup/nodes/a;->i(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    :cond_1
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method


# virtual methods
.method public a()Lorg/jsoup/nodes/a;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jsoup/nodes/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/a;->a()Lorg/jsoup/nodes/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lorg/jsoup/nodes/Document;

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->g1()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/a;->g(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    new-instance v1, Lorg/jsoup/SerializationException;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/a;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget-object v3, p1, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v2, p1, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    :goto_0
    return v1

    .line 39
    :cond_3
    iget-object v2, p0, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p1, p1, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    if-nez p1, :cond_5

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    move v0, v1

    .line 54
    :goto_1
    return v0

    .line 55
    :cond_6
    :goto_2
    return v1
.end method

.method protected g(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lorg/jsoup/nodes/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/a;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/a;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :cond_1
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/a;->c:Lorg/jsoup/nodes/b;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/jsoup/nodes/a;->c:Lorg/jsoup/nodes/b;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/b;->t(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lorg/jsoup/nodes/a;->c:Lorg/jsoup/nodes/b;

    .line 23
    .line 24
    iget-object v2, v2, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    .line 25
    .line 26
    aput-object p1, v2, v1

    .line 27
    .line 28
    :cond_0
    iput-object p1, p0, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    .line 29
    .line 30
    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/a;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
