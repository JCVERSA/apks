.class public Lorg/apache/tools/ant/w;
.super Lorg/apache/tools/ant/u;
.source "source.java"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Object;

.field private k:Ljava/util/List;

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/u;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/tools/ant/w;->h:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/apache/tools/ant/w;->k:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/apache/tools/ant/w;->l:Z

    .line 13
    .line 14
    iput-object p1, p0, Lorg/apache/tools/ant/w;->g:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private E(Ljava/lang/String;Lorg/apache/tools/ant/o;Ljava/lang/Object;Lorg/apache/tools/ant/w;Lorg/apache/tools/ant/RuntimeConfigurable;)Z
    .locals 8

    .line 1
    invoke-virtual {p4}, Lorg/apache/tools/ant/w;->y()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p4}, Lorg/apache/tools/ant/w;->C()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lorg/apache/tools/ant/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/o;->s(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    move-object v2, p2

    .line 24
    move-object v4, p1

    .line 25
    move-object v5, p3

    .line 26
    move-object v6, v0

    .line 27
    move-object v7, p4

    .line 28
    invoke-virtual/range {v2 .. v7}, Lorg/apache/tools/ant/o;->i(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/w;)Lorg/apache/tools/ant/o$d;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p5}, Lorg/apache/tools/ant/RuntimeConfigurable;->getPolyType()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/o$d;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/apache/tools/ant/o$d;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p5, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setCreator(Lorg/apache/tools/ant/o$d;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p5, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    instance-of p3, p2, Lorg/apache/tools/ant/u;

    .line 50
    .line 51
    if-eqz p3, :cond_0

    .line 52
    .line 53
    move-object p3, p2

    .line 54
    check-cast p3, Lorg/apache/tools/ant/u;

    .line 55
    .line 56
    invoke-virtual {p3, p5}, Lorg/apache/tools/ant/u;->r(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/u;->s(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/u;->t(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    instance-of p3, p2, Lorg/apache/tools/ant/q;

    .line 66
    .line 67
    if-eqz p3, :cond_1

    .line 68
    .line 69
    move-object p3, p2

    .line 70
    check-cast p3, Lorg/apache/tools/ant/q;

    .line 71
    .line 72
    invoke-virtual {p4}, Lorg/apache/tools/ant/q;->getLocation()Lorg/apache/tools/ant/Location;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/q;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p5, p3}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p4, p2, p5}, Lorg/apache/tools/ant/w;->F(Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lorg/apache/tools/ant/o$d;->c()V

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    return p1

    .line 94
    :cond_2
    const/4 p1, 0x0

    .line 95
    return p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/w;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/w;->j:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/w;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public D()Lorg/apache/tools/ant/u;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/w;->j:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lorg/apache/tools/ant/u;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lorg/apache/tools/ant/u;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method protected F(Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->y()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1, v0}, Lorg/apache/tools/ant/o;->k(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/o;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    iget-object v0, p0, Lorg/apache/tools/ant/w;->k:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    const/4 v0, 0x0

    .line 26
    move v9, v0

    .line 27
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p2, v9}, Lorg/apache/tools/ant/RuntimeConfigurable;->getChild(I)Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v10, v0

    .line 42
    check-cast v10, Lorg/apache/tools/ant/w;

    .line 43
    .line 44
    move-object v0, p0

    .line 45
    move-object v1, v6

    .line 46
    move-object v2, v7

    .line 47
    move-object v3, p1

    .line 48
    move-object v4, v10

    .line 49
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/w;->E(Ljava/lang/String;Lorg/apache/tools/ant/o;Ljava/lang/Object;Lorg/apache/tools/ant/w;Lorg/apache/tools/ant/RuntimeConfigurable;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    instance-of v0, p1, Lorg/apache/tools/ant/v;

    .line 56
    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v10}, Lorg/apache/tools/ant/w;->C()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v7, v0, p1, v1}, Lorg/apache/tools/ant/o;->t(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_2

    .line 73
    :cond_0
    move-object v0, p1

    .line 74
    check-cast v0, Lorg/apache/tools/ant/v;

    .line 75
    .line 76
    invoke-interface {v0, v10}, Lorg/apache/tools/ant/v;->b(Lorg/apache/tools/ant/u;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/UnsupportedElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuffer;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getElementTag()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    const-string p2, " doesn\'t support the nested \""

    .line 97
    .line 98
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnsupportedElementException;->getElement()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    .line 107
    .line 108
    const-string p2, "\" element."

    .line 109
    .line 110
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-direct {v0, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_2
    return-void
.end method

.method protected G(Lorg/apache/tools/ant/w;Lorg/apache/tools/ant/RuntimeConfigurable;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->j(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lorg/apache/tools/ant/w;->x()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lorg/apache/tools/ant/w;->y()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, p1, v2, v1}, Lorg/apache/tools/ant/ComponentHelper;->e(Lorg/apache/tools/ant/w;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    instance-of v0, p1, Lorg/apache/tools/ant/w;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    check-cast p1, Lorg/apache/tools/ant/w;

    .line 28
    .line 29
    invoke-virtual {p1, p1, p2}, Lorg/apache/tools/ant/w;->G(Lorg/apache/tools/ant/w;Lorg/apache/tools/ant/RuntimeConfigurable;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    instance-of p2, p1, Lorg/apache/tools/ant/u;

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    move-object p2, p1

    .line 38
    check-cast p2, Lorg/apache/tools/ant/u;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/apache/tools/ant/u;->g()Lorg/apache/tools/ant/t;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/u;->q(Lorg/apache/tools/ant/t;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    instance-of p2, p1, Lorg/apache/tools/ant/q;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    move-object p2, p1

    .line 52
    check-cast p2, Lorg/apache/tools/ant/q;

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getLocation()Lorg/apache/tools/ant/Location;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/q;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-object p1

    .line 62
    :cond_3
    const-string p1, "task or type"

    .line 63
    .line 64
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/w;->z(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tools/ant/BuildException;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    throw p1
.end method

.method public H(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "ant:current"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lorg/apache/tools/ant/ComponentHelper;->j(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lorg/apache/tools/ant/ComponentHelper;->k()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    const-string p1, ""

    .line 24
    .line 25
    :cond_1
    iput-object p1, p0, Lorg/apache/tools/ant/w;->h:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/w;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public J(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/w;->j:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/w;->j:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v1, v0, Lorg/apache/tools/ant/u;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    check-cast v0, Lorg/apache/tools/ant/u;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/apache/tools/ant/u;->j()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/apache/tools/ant/u;->j()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_1
    return-object v0
.end method

.method public l()Lorg/apache/tools/ant/RuntimeConfigurable;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/tools/ant/u;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/w;->j:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, p0, v0}, Lorg/apache/tools/ant/w;->G(Lorg/apache/tools/ant/w;Lorg/apache/tools/ant/RuntimeConfigurable;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/w;->v(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public u(Lorg/apache/tools/ant/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/w;->k:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/tools/ant/w;->k:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/w;->k:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public v(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/w;->j:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lorg/apache/tools/ant/w;->j:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lorg/apache/tools/ant/w;->j:Ljava/lang/Object;

    .line 13
    .line 14
    instance-of v0, p1, Lorg/apache/tools/ant/u;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p1, Lorg/apache/tools/ant/u;

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/u;->r(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/apache/tools/ant/u;->g()Lorg/apache/tools/ant/t;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lorg/apache/tools/ant/w;->j:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lorg/apache/tools/ant/u;

    .line 44
    .line 45
    invoke-virtual {v0, p0, v1}, Lorg/apache/tools/ant/t;->g(Lorg/apache/tools/ant/u;Lorg/apache/tools/ant/u;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/apache/tools/ant/u;->n()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    iget-object p1, p0, Lorg/apache/tools/ant/w;->j:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/w;->F(Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public w(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/w;
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/tools/ant/w;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->C()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/w;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->y()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/w;->H(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/q;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->A()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/w;->I(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/apache/tools/ant/u;->k()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/u;->t(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->j()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/u;->s(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getLocation()Lorg/apache/tools/ant/Location;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/q;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/apache/tools/ant/u;->g()Lorg/apache/tools/ant/t;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    new-instance v1, Lorg/apache/tools/ant/t;

    .line 55
    .line 56
    invoke-direct {v1}, Lorg/apache/tools/ant/t;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/t;->m(Lorg/apache/tools/ant/Project;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/u;->q(Lorg/apache/tools/ant/t;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/u;->g()Lorg/apache/tools/ant/t;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/u;->q(Lorg/apache/tools/ant/t;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    new-instance v1, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 78
    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->j()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getPolyType()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setPolyType(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getAttributeMap()Ljava/util/Hashtable;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_1

    .line 118
    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Ljava/util/Map$Entry;

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v1, v4, v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getChildren()Ljava/util/Enumeration;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_2

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 175
    .line 176
    invoke-virtual {v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->getProxy()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    check-cast v3, Lorg/apache/tools/ant/w;

    .line 181
    .line 182
    invoke-virtual {v3, p1}, Lorg/apache/tools/ant/w;->w(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/w;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v3}, Lorg/apache/tools/ant/w;->l()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/w;->u(Lorg/apache/tools/ant/w;)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_2
    return-object v0
.end method

.method protected x()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->y()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/tools/ant/w;->C()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lorg/apache/tools/ant/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/w;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected z(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tools/ant/BuildException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->j(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2, p1}, Lorg/apache/tools/ant/ComponentHelper;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getLocation()Lorg/apache/tools/ant/Location;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p2, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method
