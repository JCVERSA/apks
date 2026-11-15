.class public Lorg/apache/tools/ant/types/q;
.super Lorg/apache/tools/ant/types/e;
.source "source.java"

# interfaces
.implements Lorg/apache/tools/ant/types/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/q$a;,
        Lorg/apache/tools/ant/types/q$b;
    }
.end annotation


# static fields
.field static synthetic g:Ljava/lang/Class;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/Set;

.field private d:Ljava/util/Vector;

.field private e:Ljava/util/Vector;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/q;->a:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/q;->b:Z

    .line 9
    .line 10
    new-instance v1, Ljava/util/Vector;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/apache/tools/ant/types/q;->d:Ljava/util/Vector;

    .line 16
    .line 17
    new-instance v1, Ljava/util/Vector;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/apache/tools/ant/types/q;->e:Ljava/util/Vector;

    .line 23
    .line 24
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/q;->f:Z

    .line 25
    .line 26
    return-void
.end method

.method private d(Ljava/util/Set;Ljava/util/Hashtable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/q;->d:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/apache/tools/ant/types/q$b;

    .line 18
    .line 19
    invoke-static {v1}, Lorg/apache/tools/ant/types/q$b;->a(Lorg/apache/tools/ant/types/q$b;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-static {v1}, Lorg/apache/tools/ant/types/q$b;->a(Lorg/apache/tools/ant/types/q$b;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-static {v1}, Lorg/apache/tools/ant/types/q$b;->a(Lorg/apache/tools/ant/types/q$b;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v1}, Lorg/apache/tools/ant/types/q$b;->b(Lorg/apache/tools/ant/types/q$b;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1}, Lorg/apache/tools/ant/types/q$b;->b(Lorg/apache/tools/ant/types/q$b;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-static {v1}, Lorg/apache/tools/ant/types/q$b;->c(Lorg/apache/tools/ant/types/q$b;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-nez v2, :cond_8

    .line 84
    .line 85
    invoke-static {v1}, Lorg/apache/tools/ant/types/q$b;->d(Lorg/apache/tools/ant/types/q$b;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_7

    .line 90
    .line 91
    invoke-static {v1}, Lorg/apache/tools/ant/types/q$b;->d(Lorg/apache/tools/ant/types/q$b;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v3, "all"

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    invoke-static {v1}, Lorg/apache/tools/ant/types/q$b;->d(Lorg/apache/tools/ant/types/q$b;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "system"

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    invoke-static {v1}, Lorg/apache/tools/ant/types/q$b;->d(Lorg/apache/tools/ant/types/q$b;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "commandline"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->w()Ljava/util/Hashtable;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_6
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 165
    .line 166
    const-string p2, "Impossible: Invalid builtin attribute!"

    .line 167
    .line 168
    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_7
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 173
    .line 174
    const-string p2, "Impossible: Invalid PropertyRef!"

    .line 175
    .line 176
    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :cond_8
    new-instance p1, Loz/b;

    .line 181
    .line 182
    invoke-direct {p1}, Loz/b;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Loz/b;->c()Loz/a;

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Lorg/apache/tools/ant/types/q$b;->c(Lorg/apache/tools/ant/types/q$b;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    const/4 p1, 0x0

    .line 192
    throw p1

    .line 193
    :cond_9
    return-void
.end method

.method static synthetic j(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method private k()Ljava/util/Hashtable;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->o()Lorg/apache/tools/ant/types/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/q;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public e(Lorg/apache/tools/ant/types/q$b;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/tools/ant/types/q;->d:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public g(Lorg/apache/tools/ant/types/q$a;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/tools/ant/types/q$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/tools/ant/types/q$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/q$b;->f(Lorg/apache/tools/ant/types/q$a;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/q;->e(Lorg/apache/tools/ant/types/q$b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected final i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/q;->f:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->n()Ljava/util/Properties;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lorg/apache/tools/ant/types/p;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lorg/apache/tools/ant/types/p;-><init>(Lorg/apache/tools/ant/types/q;Ljava/util/Enumeration;)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method

.method public l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->o()Lorg/apache/tools/ant/types/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v0, v0, Lorg/apache/tools/ant/types/q;->a:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/q;->a:Z

    .line 15
    .line 16
    :goto_0
    return v0
.end method

.method public m()Lorg/apache/tools/ant/types/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->o()Lorg/apache/tools/ant/types/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public n()Ljava/util/Properties;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->o()Lorg/apache/tools/ant/types/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/q;->n()Ljava/util/Properties;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lorg/apache/tools/ant/types/q;->k()Ljava/util/Hashtable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->r()Ljava/util/Hashtable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/q;->e:Ljava/util/Vector;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lorg/apache/tools/ant/types/q;

    .line 48
    .line 49
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/q;->n()Ljava/util/Properties;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->l()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Lorg/apache/tools/ant/types/q;->c:Ljava/util/Set;

    .line 64
    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/types/q;->d(Ljava/util/Set;Ljava/util/Hashtable;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lorg/apache/tools/ant/types/q;->e:Ljava/util/Vector;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lorg/apache/tools/ant/types/q;

    .line 92
    .line 93
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/q;->n()Ljava/util/Properties;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/q;->b:Z

    .line 106
    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    new-instance v2, Ljava/util/HashSet;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 119
    .line 120
    .line 121
    move-object v1, v2

    .line 122
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->l()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_6

    .line 127
    .line 128
    iput-object v1, p0, Lorg/apache/tools/ant/types/q;->c:Ljava/util/Set;

    .line 129
    .line 130
    :cond_6
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->m()Lorg/apache/tools/ant/types/k;

    .line 131
    .line 132
    .line 133
    new-instance v2, Ljava/util/Properties;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_8

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v4, :cond_7

    .line 161
    .line 162
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    return-object v2
.end method

.method protected o()Lorg/apache/tools/ant/types/q;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/tools/ant/types/q;->g:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.tools.ant.types.PropertySet"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/tools/ant/types/q;->j(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/tools/ant/types/q;->g:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "propertyset"

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/e;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/apache/tools/ant/types/q;

    .line 20
    .line 21
    return-object v0
.end method

.method public final setRefid(Lorg/apache/tools/ant/types/r;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/q;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/e;->setRefid(Lorg/apache/tools/ant/types/r;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->o()Lorg/apache/tools/ant/types/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/q;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->n()Ljava/util/Properties;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/TreeMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/q;->n()Ljava/util/Properties;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    const-string v3, ", "

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    const-string v3, "="

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method
