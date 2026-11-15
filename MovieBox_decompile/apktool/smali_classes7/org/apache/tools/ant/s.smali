.class public Lorg/apache/tools/ant/s;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lorg/apache/tools/ant/Project;

.field private b:Lorg/apache/tools/ant/s;

.field private c:Ljava/util/Hashtable;

.field private d:Ljava/util/Hashtable;

.field private e:Ljava/util/Hashtable;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Hashtable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/tools/ant/s;->c:Ljava/util/Hashtable;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Hashtable;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/apache/tools/ant/s;->d:Ljava/util/Hashtable;

    .line 17
    .line 18
    new-instance v0, Ljava/util/Hashtable;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/apache/tools/ant/s;->e:Ljava/util/Hashtable;

    .line 24
    .line 25
    return-void
.end method

.method public static declared-synchronized d(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/s;
    .locals 3

    .line 1
    const-class v0, Lorg/apache/tools/ant/s;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "ant.PropertyHelper"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/Project;->t(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lorg/apache/tools/ant/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_1
    new-instance v1, Lorg/apache/tools/ant/s;

    .line 17
    .line 18
    invoke-direct {v1}, Lorg/apache/tools/ant/s;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/s;->k(Lorg/apache/tools/ant/Project;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "ant.PropertyHelper"

    .line 25
    .line 26
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/Project;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-object v1

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p0
.end method

.method static h(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const-string v1, "$"

    .line 3
    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ltz v2, :cond_5

    .line 9
    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    if-ne v2, v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    add-int/lit8 v0, v2, 0x1

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v4, 0x7b

    .line 40
    .line 41
    if-eq v3, v4, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/16 v3, 0x24

    .line 48
    .line 49
    if-ne v0, v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v2, 0x2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    add-int/lit8 v0, v2, 0x2

    .line 58
    .line 59
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/16 v0, 0x7d

    .line 68
    .line 69
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-ltz v0, :cond_4

    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x2

    .line 76
    .line 77
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuffer;

    .line 94
    .line 95
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v0, "Syntax error in property: "

    .line 99
    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-direct {p1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-ge v0, p2, :cond_6

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    return-void
.end method


# virtual methods
.method public a()Lorg/apache/tools/ant/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/s;->b:Lorg/apache/tools/ant/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/util/Hashtable;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/s;->c:Ljava/util/Hashtable;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/Hashtable;

    .line 5
    .line 6
    iget-object v2, p0, Lorg/apache/tools/ant/s;->c:Ljava/util/Hashtable;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/s;->e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :cond_1
    :try_start_1
    iget-object p1, p0, Lorg/apache/tools/ant/s;->c:Ljava/util/Hashtable;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/s;->a()Lorg/apache/tools/ant/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/s;->a()Lorg/apache/tools/ant/s;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/s;->e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    const-string p1, "toString:"

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 p3, 0x0

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const/16 p1, 0x9

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p2, p0, Lorg/apache/tools/ant/s;->a:Lorg/apache/tools/ant/Project;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->t(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    :cond_2
    :goto_0
    return-object p3
.end method

.method public f()Ljava/util/Hashtable;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/s;->d:Ljava/util/Hashtable;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/Hashtable;

    .line 5
    .line 6
    iget-object v2, p0, Lorg/apache/tools/ant/s;->d:Ljava/util/Hashtable;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public g(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/tools/ant/s;->h(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 7

    .line 1
    if-eqz p2, :cond_7

    .line 2
    .line 3
    const/16 v0, 0x24

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/util/Vector;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/Vector;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/tools/ant/s;->g(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuffer;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_6

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    if-eqz p3, :cond_1

    .line 61
    .line 62
    invoke-virtual {p3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v3, 0x0

    .line 68
    :goto_1
    if-nez v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/s;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_2
    if-nez v3, :cond_3

    .line 75
    .line 76
    iget-object v4, p0, Lorg/apache/tools/ant/s;->a:Lorg/apache/tools/ant/Project;

    .line 77
    .line 78
    new-instance v5, Ljava/lang/StringBuffer;

    .line 79
    .line 80
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v6, "Property \""

    .line 84
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    const-string v6, "\" has not been set"

    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const/4 v6, 0x3

    .line 101
    invoke-virtual {v4, v5, v6}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    :cond_3
    if-eqz v3, :cond_4

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    .line 112
    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v4, "${"

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    .line 123
    .line 124
    const-string v2, "}"

    .line 125
    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    :cond_5
    :goto_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_7
    :goto_3
    return-object p2
.end method

.method public declared-synchronized j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/s;->c:Ljava/util/Hashtable;

    .line 3
    .line 4
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/apache/tools/ant/s;->a:Lorg/apache/tools/ant/Project;

    .line 11
    .line 12
    new-instance p3, Ljava/lang/StringBuffer;

    .line 13
    .line 14
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "Override ignored for property \""

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    const-string p2, "\""

    .line 26
    .line 27
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const/4 p3, 0x3

    .line 35
    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x1

    .line 44
    const/4 v4, 0x0

    .line 45
    move-object v0, p0

    .line 46
    move-object v1, p1

    .line 47
    move-object v2, p2

    .line 48
    move-object v3, p3

    .line 49
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/s;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZZ)Z

    .line 50
    .line 51
    .line 52
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :cond_1
    :try_start_2
    iget-object p1, p0, Lorg/apache/tools/ant/s;->a:Lorg/apache/tools/ant/Project;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "Setting project property: "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    const-string v1, " -> "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/4 v1, 0x4

    .line 85
    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    if-eqz p2, :cond_2

    .line 89
    .line 90
    if-eqz p3, :cond_2

    .line 91
    .line 92
    iget-object p1, p0, Lorg/apache/tools/ant/s;->c:Ljava/util/Hashtable;

    .line 93
    .line 94
    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    :cond_2
    monitor-exit p0

    .line 98
    return-void

    .line 99
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    throw p1
.end method

.method public k(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/s;->a:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/s;->d:Ljava/util/Hashtable;

    .line 3
    .line 4
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lorg/apache/tools/ant/s;->a:Lorg/apache/tools/ant/Project;

    .line 14
    .line 15
    new-instance p3, Ljava/lang/StringBuffer;

    .line 16
    .line 17
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string p4, "Override ignored for user property \""

    .line 21
    .line 22
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    const-string p2, "\""

    .line 29
    .line 30
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2, v1}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit p0

    .line 44
    const/4 p1, 0x0

    .line 45
    return p1

    .line 46
    :cond_1
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    move-object v2, p0

    .line 50
    move-object v3, p1

    .line 51
    move-object v4, p2

    .line 52
    move-object v5, p3

    .line 53
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lorg/apache/tools/ant/s;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZZ)Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    const/4 v0, 0x1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return v0

    .line 62
    :cond_2
    :try_start_2
    iget-object p1, p0, Lorg/apache/tools/ant/s;->c:Ljava/util/Hashtable;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    if-eqz p4, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lorg/apache/tools/ant/s;->a:Lorg/apache/tools/ant/Project;

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuffer;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v3, "Overriding previous definition of property \""

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    const-string v3, "\""

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p1, v2, v1}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    :cond_3
    if-eqz p4, :cond_4

    .line 100
    .line 101
    iget-object p1, p0, Lorg/apache/tools/ant/s;->a:Lorg/apache/tools/ant/Project;

    .line 102
    .line 103
    new-instance p4, Ljava/lang/StringBuffer;

    .line 104
    .line 105
    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v1, "Setting project property: "

    .line 109
    .line 110
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    const-string v1, " -> "

    .line 117
    .line 118
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    const/4 v1, 0x4

    .line 129
    invoke-virtual {p1, p4, v1}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    :cond_4
    if-eqz p2, :cond_5

    .line 133
    .line 134
    if-eqz p3, :cond_5

    .line 135
    .line 136
    iget-object p1, p0, Lorg/apache/tools/ant/s;->c:Ljava/util/Hashtable;

    .line 137
    .line 138
    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .line 140
    .line 141
    :cond_5
    monitor-exit p0

    .line 142
    return v0

    .line 143
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    throw p1
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZZ)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/s;->a()Lorg/apache/tools/ant/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/s;->a()Lorg/apache/tools/ant/s;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move v5, p4

    .line 15
    move v6, p5

    .line 16
    move v7, p6

    .line 17
    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/s;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZZ)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public declared-synchronized n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/s;->a:Lorg/apache/tools/ant/Project;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "Setting ro project property: "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string v2, " -> "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x4

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/apache/tools/ant/s;->d:Ljava/util/Hashtable;

    .line 34
    .line 35
    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    move-object v1, p0

    .line 42
    move-object v2, p1

    .line 43
    move-object v3, p2

    .line 44
    move-object v4, p3

    .line 45
    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/s;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZZ)Z

    .line 46
    .line 47
    .line 48
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :cond_0
    :try_start_1
    iget-object p1, p0, Lorg/apache/tools/ant/s;->c:Ljava/util/Hashtable;

    .line 54
    .line 55
    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    throw p1
.end method
