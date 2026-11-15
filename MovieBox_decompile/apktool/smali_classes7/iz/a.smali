.class public Liz/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lorg/apache/tools/ant/Project;

.field private b:Ljava/io/File;

.field private c:Ljava/util/Vector;

.field private d:Ljava/io/File;

.field private e:Ljava/lang/String;

.field private f:Lorg/xml/sax/Locator;

.field private g:Lorg/apache/tools/ant/t;

.field private h:Lorg/apache/tools/ant/t;

.field private i:Ljava/util/Vector;

.field private j:Z

.field private k:Ljava/util/Map;

.field private l:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Liz/a;->c:Ljava/util/Vector;

    .line 10
    .line 11
    new-instance v0, Lorg/apache/tools/ant/t;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/apache/tools/ant/t;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Liz/a;->g:Lorg/apache/tools/ant/t;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Liz/a;->h:Lorg/apache/tools/ant/t;

    .line 20
    .line 21
    new-instance v1, Ljava/util/Vector;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Liz/a;->i:Ljava/util/Vector;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Liz/a;->j:Z

    .line 30
    .line 31
    new-instance v1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Liz/a;->k:Ljava/util/Map;

    .line 37
    .line 38
    iput-object v0, p0, Liz/a;->l:Ljava/util/Map;

    .line 39
    .line 40
    iput-object p1, p0, Liz/a;->a:Lorg/apache/tools/ant/Project;

    .line 41
    .line 42
    iget-object v0, p0, Liz/a;->g:Lorg/apache/tools/ant/t;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/t;->m(Lorg/apache/tools/ant/Project;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Liz/a;->g:Lorg/apache/tools/ant/t;

    .line 48
    .line 49
    const-string v0, ""

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/t;->l(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Liz/a;->c:Ljava/util/Vector;

    .line 55
    .line 56
    iget-object v0, p0, Liz/a;->g:Lorg/apache/tools/ant/t;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->c:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Liz/a;->h:Lorg/apache/tools/ant/t;

    .line 7
    .line 8
    return-void
.end method

.method public b(Ljava/lang/Object;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Liz/a;->a:Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    invoke-virtual {v0, p2, p1}, Lorg/apache/tools/ant/Project;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public c()Lorg/apache/tools/ant/RuntimeConfigurable;
    .locals 3

    .line 1
    iget-object v0, p0, Liz/a;->i:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Liz/a;->i:Ljava/util/Vector;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v2, v1

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 24
    .line 25
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->k:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public e()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->b:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->d:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lorg/apache/tools/ant/t;
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->h:Lorg/apache/tools/ant/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->l:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lorg/apache/tools/ant/t;
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->g:Lorg/apache/tools/ant/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Lorg/xml/sax/Locator;
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->f:Lorg/xml/sax/Locator;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->k:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public m()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->a:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Liz/a;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Liz/a;->i:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Liz/a;->i:Ljava/util/Vector;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public p(Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liz/a;->i:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Ljava/io/File;)V
    .locals 2

    .line 1
    iput-object p1, p0, Liz/a;->b:Ljava/io/File;

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Liz/a;->d:Ljava/io/File;

    .line 13
    .line 14
    iget-object v0, p0, Liz/a;->g:Lorg/apache/tools/ant/t;

    .line 15
    .line 16
    new-instance v1, Lorg/apache/tools/ant/Location;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v1, p1}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/t;->k(Lorg/apache/tools/ant/Location;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public s(Lorg/apache/tools/ant/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz/a;->h:Lorg/apache/tools/ant/t;

    .line 2
    .line 3
    return-void
.end method

.method public t(Lorg/apache/tools/ant/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz/a;->g:Lorg/apache/tools/ant/t;

    .line 2
    .line 3
    return-void
.end method

.method public u(Lorg/xml/sax/Locator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liz/a;->f:Lorg/xml/sax/Locator;

    .line 2
    .line 3
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Liz/a;->k:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Liz/a;->k:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
