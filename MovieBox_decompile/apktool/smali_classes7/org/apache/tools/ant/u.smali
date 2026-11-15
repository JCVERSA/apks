.class public abstract Lorg/apache/tools/ant/u;
.super Lorg/apache/tools/ant/q;
.source "source.java"


# instance fields
.field protected a:Lorg/apache/tools/ant/t;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lorg/apache/tools/ant/RuntimeConfigurable;

.field private e:Z

.field private f:Lorg/apache/tools/ant/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/q;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i()Lorg/apache/tools/ant/w;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/apache/tools/ant/w;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/tools/ant/u;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/w;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/q;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/apache/tools/ant/u;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/u;->t(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 29
    .line 30
    iget-object v1, p0, Lorg/apache/tools/ant/u;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/u;->s(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 36
    .line 37
    iget-object v1, p0, Lorg/apache/tools/ant/q;->location:Lorg/apache/tools/ant/Location;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/q;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 43
    .line 44
    iget-object v1, p0, Lorg/apache/tools/ant/u;->a:Lorg/apache/tools/ant/t;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/u;->q(Lorg/apache/tools/ant/t;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 50
    .line 51
    iget-object v1, p0, Lorg/apache/tools/ant/u;->d:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/u;->r(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/u;->d:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 57
    .line 58
    iget-object v1, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/u;->d:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 64
    .line 65
    iget-object v1, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 66
    .line 67
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/u;->p(Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/w;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lorg/apache/tools/ant/u;->a:Lorg/apache/tools/ant/t;

    .line 71
    .line 72
    iget-object v1, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 73
    .line 74
    invoke-virtual {v0, p0, v1}, Lorg/apache/tools/ant/t;->g(Lorg/apache/tools/ant/u;Lorg/apache/tools/ant/u;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/apache/tools/ant/w;->n()V

    .line 80
    .line 81
    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/u;->f:Lorg/apache/tools/ant/w;

    .line 83
    .line 84
    return-object v0
.end method

.method private p(Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/w;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->getChildren()Ljava/util/Enumeration;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 16
    .line 17
    new-instance v1, Lorg/apache/tools/ant/w;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getElementTag()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Lorg/apache/tools/ant/w;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v1}, Lorg/apache/tools/ant/w;->u(Lorg/apache/tools/ant/w;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/q;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/u;->r(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/u;->p(Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/w;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public g()Lorg/apache/tools/ant/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/u;->a:Lorg/apache/tools/ant/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/u;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/u;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected l()Lorg/apache/tools/ant/RuntimeConfigurable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/u;->d:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 2
    .line 3
    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/u;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public log(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/tools/ant/Project;->z(Lorg/apache/tools/ant/u;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public m()V
    .locals 0

    .line 1
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/u;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/tools/ant/u;->d:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/u;->i()Lorg/apache/tools/ant/w;

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/u;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->l(Lorg/apache/tools/ant/u;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/u;->n()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lfz/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p0, v0}, Lorg/apache/tools/ant/Project;->k(Lorg/apache/tools/ant/u;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    goto :goto_4

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_3

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :catch_2
    move-exception v1

    .line 34
    goto :goto_2

    .line 35
    :goto_0
    :try_start_1
    throw v0

    .line 36
    :goto_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getLocation()Lorg/apache/tools/ant/Location;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :goto_2
    invoke-virtual {v1}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget-object v3, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    .line 54
    .line 55
    if-ne v2, v3, :cond_0

    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getLocation()Lorg/apache/tools/ant/Location;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    :cond_0
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    move-object v4, v1

    .line 67
    move-object v1, v0

    .line 68
    move-object v0, v4

    .line 69
    :goto_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, p0, v0}, Lorg/apache/tools/ant/Project;->k(Lorg/apache/tools/ant/u;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw v1

    .line 77
    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/ant/u;->i()Lorg/apache/tools/ant/w;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lorg/apache/tools/ant/w;->D()Lorg/apache/tools/ant/u;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lorg/apache/tools/ant/u;->o()V

    .line 86
    .line 87
    .line 88
    :goto_4
    return-void
.end method

.method public q(Lorg/apache/tools/ant/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/u;->a:Lorg/apache/tools/ant/t;

    .line 2
    .line 3
    return-void
.end method

.method public r(Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/u;->d:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 2
    .line 3
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/u;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/u;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
