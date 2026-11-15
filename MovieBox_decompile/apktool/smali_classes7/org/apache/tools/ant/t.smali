.class public Lorg/apache/tools/ant/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/apache/tools/ant/v;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Lorg/apache/tools/ant/Location;

.field private g:Lorg/apache/tools/ant/Project;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/t;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/apache/tools/ant/t;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/apache/tools/ant/t;->d:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/t;->e:Ljava/util/List;

    .line 6
    sget-object v1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v1, p0, Lorg/apache/tools/ant/t;->f:Lorg/apache/tools/ant/Location;

    .line 7
    iput-object v0, p0, Lorg/apache/tools/ant/t;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/t;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/t;->b:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lorg/apache/tools/ant/t;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/apache/tools/ant/t;->d:Ljava/util/List;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/t;->e:Ljava/util/List;

    .line 13
    sget-object v1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v1, p0, Lorg/apache/tools/ant/t;->f:Lorg/apache/tools/ant/Location;

    .line 14
    iput-object v0, p0, Lorg/apache/tools/ant/t;->h:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lorg/apache/tools/ant/t;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/t;->a:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lorg/apache/tools/ant/t;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/t;->b:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lorg/apache/tools/ant/t;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/t;->c:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lorg/apache/tools/ant/t;->d:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/tools/ant/t;->d:Ljava/util/List;

    .line 19
    iget-object v0, p1, Lorg/apache/tools/ant/t;->f:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/t;->f:Lorg/apache/tools/ant/Location;

    .line 20
    iget-object v0, p1, Lorg/apache/tools/ant/t;->g:Lorg/apache/tools/ant/Project;

    iput-object v0, p0, Lorg/apache/tools/ant/t;->g:Lorg/apache/tools/ant/Project;

    .line 21
    iget-object v0, p1, Lorg/apache/tools/ant/t;->h:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/t;->h:Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lorg/apache/tools/ant/t;->e:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/tools/ant/t;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/t;->d:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/apache/tools/ant/t;->d:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/t;->d:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public b(Lorg/apache/tools/ant/u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/t;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c()Lorg/apache/tools/ant/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/t;->f:Lorg/apache/tools/ant/Location;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/t;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/t;->g:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()[Lorg/apache/tools/ant/u;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/tools/ant/t;->e:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/tools/ant/t;->e:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    instance-of v3, v2, Lorg/apache/tools/ant/u;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    new-array v1, v1, [Lorg/apache/tools/ant/u;

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, [Lorg/apache/tools/ant/u;

    .line 47
    .line 48
    return-object v0
.end method

.method g(Lorg/apache/tools/ant/u;Lorg/apache/tools/ant/u;)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/t;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/tools/ant/t;->e:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_3

    .line 6
    .line 7
    new-instance v0, Ljava/util/StringTokenizer;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, ","

    .line 11
    .line 12
    invoke-direct {v0, p1, v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, ""

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/t;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "Syntax Error: Depend attribute for target \""

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/t;->d()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    const-string v1, "\" ends with a , character"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v1, "Syntax Error: depends attribute of target \""

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lorg/apache/tools/ant/t;->d()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .line 119
    .line 120
    const-string v1, "\" has an empty string as dependency."

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_3
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/t;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/t;->b:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public k(Lorg/apache/tools/ant/Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/t;->f:Lorg/apache/tools/ant/Location;

    .line 2
    .line 3
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/t;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public m(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/t;->g:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/t;->c:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/t;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
