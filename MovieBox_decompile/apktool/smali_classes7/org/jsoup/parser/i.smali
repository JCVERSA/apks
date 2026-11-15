.class abstract Lorg/jsoup/parser/i;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field a:Lorg/jsoup/parser/a;

.field b:Lorg/jsoup/parser/h;

.field protected c:Lorg/jsoup/nodes/Document;

.field protected d:Ljava/util/ArrayList;

.field protected e:Ljava/lang/String;

.field protected f:Lorg/jsoup/parser/Token;

.field protected g:Lorg/jsoup/parser/ParseErrorList;

.field protected h:Lorg/jsoup/parser/d;

.field private i:Lorg/jsoup/parser/Token$h;

.field private j:Lorg/jsoup/parser/Token$g;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/jsoup/parser/Token$h;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$h;

    .line 10
    .line 11
    new-instance v0, Lorg/jsoup/parser/Token$g;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/jsoup/parser/Token$g;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/jsoup/parser/i;->j:Lorg/jsoup/parser/Token$g;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method protected a()Lorg/jsoup/nodes/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0
.end method

.method abstract b()Lorg/jsoup/parser/d;
.end method

.method protected c(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)V
    .locals 1

    .line 1
    const-string v0, "String input must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "BaseURI must not be null"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lorg/jsoup/nodes/Document;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    .line 17
    .line 18
    iput-object p4, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    .line 19
    .line 20
    new-instance p4, Lorg/jsoup/parser/a;

    .line 21
    .line 22
    invoke-direct {p4, p1}, Lorg/jsoup/parser/a;-><init>(Ljava/io/Reader;)V

    .line 23
    .line 24
    .line 25
    iput-object p4, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    .line 26
    .line 27
    iput-object p3, p0, Lorg/jsoup/parser/i;->g:Lorg/jsoup/parser/ParseErrorList;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    .line 31
    .line 32
    new-instance p1, Lorg/jsoup/parser/h;

    .line 33
    .line 34
    iget-object p4, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    .line 35
    .line 36
    invoke-direct {p1, p4, p3}, Lorg/jsoup/parser/h;-><init>(Lorg/jsoup/parser/a;Lorg/jsoup/parser/ParseErrorList;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    .line 40
    .line 41
    new-instance p1, Ljava/util/ArrayList;

    .line 42
    .line 43
    const/16 p3, 0x20

    .line 44
    .line 45
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    .line 49
    .line 50
    iput-object p2, p0, Lorg/jsoup/parser/i;->e:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method

.method d(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jsoup/parser/i;->c(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/jsoup/parser/i;->i()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    .line 8
    .line 9
    return-object p1
.end method

.method protected abstract e(Lorg/jsoup/parser/Token;)Z
.end method

.method protected f(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/i;->j:Lorg/jsoup/parser/Token$g;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/jsoup/parser/Token$g;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/jsoup/parser/Token$g;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->B(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$i;->E()Lorg/jsoup/parser/Token$i;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->B(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method protected g(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$h;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/jsoup/parser/Token$h;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->B(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$h;->E()Lorg/jsoup/parser/Token$i;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->B(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public h(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$h;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/jsoup/parser/Token$h;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$h;->G(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/parser/Token$h;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$h;->E()Lorg/jsoup/parser/Token$i;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$h;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$h;->G(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/parser/Token$h;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$h;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method protected i()V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/h;->t()Lorg/jsoup/parser/Token;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/i;->e(Lorg/jsoup/parser/Token;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->m()Lorg/jsoup/parser/Token;

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 14
    .line 15
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-void
.end method
