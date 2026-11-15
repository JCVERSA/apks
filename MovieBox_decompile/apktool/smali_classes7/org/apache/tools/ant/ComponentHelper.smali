.class public Lorg/apache/tools/ant/ComponentHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;
    }
.end annotation


# static fields
.field private static j:[Ljava/util/Properties;

.field static synthetic k:Ljava/lang/Class;


# instance fields
.field private a:Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;

.field private b:Ljava/util/Hashtable;

.field private c:Z

.field private d:Ljava/util/Hashtable;

.field private e:Z

.field private f:Ljava/util/Set;

.field private g:Ljava/util/Stack;

.field private h:Ljava/lang/String;

.field private i:Lorg/apache/tools/ant/Project;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/util/Properties;

    .line 3
    .line 4
    sput-object v0, Lorg/apache/tools/ant/ComponentHelper;->j:[Ljava/util/Properties;

    .line 5
    .line 6
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->b:Ljava/util/Hashtable;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lorg/apache/tools/ant/ComponentHelper;->c:Z

    .line 13
    .line 14
    new-instance v1, Ljava/util/Hashtable;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->d:Ljava/util/Hashtable;

    .line 20
    .line 21
    iput-boolean v0, p0, Lorg/apache/tools/ant/ComponentHelper;->e:Z

    .line 22
    .line 23
    new-instance v0, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->f:Ljava/util/Set;

    .line 29
    .line 30
    new-instance v0, Ljava/util/Stack;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->g:Ljava/util/Stack;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->h:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/r;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const-string v0, ""

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p1, "antlib:org.apache.tools.ant"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    const-string v0, "antlib:"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->f:Ljava/util/Set;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->f:Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance v0, Lorg/apache/tools/ant/taskdefs/n;

    .line 45
    .line 46
    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/n;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/q;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/c;->m()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/b;->x(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/u;->s(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/e;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/e;->H(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Lorg/apache/tools/ant/taskdefs/e$a;

    .line 71
    .line 72
    const-string v1, "ignore"

    .line 73
    .line 74
    invoke-direct {p1, v1}, Lorg/apache/tools/ant/taskdefs/e$a;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/e;->G(Lorg/apache/tools/ant/taskdefs/e$a;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/e;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .line 82
    .line 83
    monitor-exit p0

    .line 84
    return-void

    .line 85
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    throw p1
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static j(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "ant.ComponentHelper"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->t(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lorg/apache/tools/ant/ComponentHelper;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/ComponentHelper;

    .line 17
    .line 18
    invoke-direct {v1}, Lorg/apache/tools/ant/ComponentHelper;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/ComponentHelper;->u(Lorg/apache/tools/ant/Project;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public static o(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->q(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    if-nez p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0, p2}, Lorg/apache/tools/ant/ComponentHelper;->p(Ljava/lang/Class;Z)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->j(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->n(Ljava/lang/Object;Z)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    return-object p0
.end method

.method private static p(Ljava/lang/Class;Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 p1, 0x2e

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private q(Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Cause: the class "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    .line 13
    .line 14
    const-string p2, " was not found."

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    const-string p2, "        This looks like one of Ant\'s optional components."

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p2, "Action: Check that the appropriate optional JAR exists in"

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p2, "Action: Check that the component has been correctly declared"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p2, "        and that the implementing JAR is in one of:"

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method private r(Ljava/io/PrintWriter;ZLjava/lang/NoClassDefFoundError;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Cause: Could not load a dependent class "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const-string p2, "       It is not enough to have Ant\'s optional JARs"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p2, "       you need the JAR files that the optional tasks depend upon."

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p2, "       Ant\'s optional task dependencies are listed in the manual."

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p2, "       This class may be in a separate JAR that is not installed."

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    const-string p2, "Action: Determine what extra JAR files are needed, and place them in one of:"

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private s(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "antlib:"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {p2}, Lorg/apache/tools/ant/r;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string v1, "Cause: The name is undefined."

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "Action: Check the spelling."

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "Action: Check that any custom tasks/types have been declared."

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "Action: Check that any <presetdef>/<macrodef> declarations have taken place."

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-lez v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->a:Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;

    .line 43
    .line 44
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->findMatches(Ljava/lang/String;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-lez v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 55
    .line 56
    .line 57
    new-instance p3, Ljava/lang/StringBuffer;

    .line 58
    .line 59
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v0, "The definitions in the namespace "

    .line 63
    .line 64
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    const-string p2, " are:"

    .line 71
    .line 72
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    if-eqz p3, :cond_2

    .line 91
    .line 92
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    check-cast p3, Lorg/apache/tools/ant/b;

    .line 97
    .line 98
    invoke-virtual {p3}, Lorg/apache/tools/ant/b;->i()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-static {p3}, Lorg/apache/tools/ant/r;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v1, "    "

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    const-string p2, "No types or tasks have been defined in this namespace yet"

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 135
    .line 136
    .line 137
    const-string p2, "This appears to be an antlib declaration. "

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string p2, "Action: Check that the implementing library exists in one of:"

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_2
    return-void
.end method

.method private t(Lorg/apache/tools/ant/b;Lorg/apache/tools/ant/b;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->w(Lorg/apache/tools/ant/b;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/ComponentHelper;->w(Lorg/apache/tools/ant/b;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/b;->n(Lorg/apache/tools/ant/b;Lorg/apache/tools/ant/Project;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method private v(Lorg/apache/tools/ant/b;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lorg/apache/tools/ant/b;->i()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->a:Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, 0x1

    .line 9
    :try_start_0
    iput-boolean v2, p0, Lorg/apache/tools/ant/ComponentHelper;->c:Z

    .line 10
    .line 11
    iput-boolean v2, p0, Lorg/apache/tools/ant/ComponentHelper;->e:Z

    .line 12
    .line 13
    iget-object v3, p0, Lorg/apache/tools/ant/ComponentHelper;->a:Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;

    .line 14
    .line 15
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/b;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_5

    .line 20
    .line 21
    invoke-direct {p0, p1, v3}, Lorg/apache/tools/ant/ComponentHelper;->t(Lorg/apache/tools/ant/b;Lorg/apache/tools/ant/b;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    monitor-exit v1

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    iget-object v4, p0, Lorg/apache/tools/ant/ComponentHelper;->a:Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;

    .line 32
    .line 33
    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->getExposedClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    sget-object v5, Lorg/apache/tools/ant/ComponentHelper;->k:Ljava/lang/Class;

    .line 40
    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    const-string v5, "org.apache.tools.ant.Task"

    .line 44
    .line 45
    invoke-static {v5}, Lorg/apache/tools/ant/ComponentHelper;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    sput-object v5, Lorg/apache/tools/ant/ComponentHelper;->k:Ljava/lang/Class;

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    move v4, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v4, 0x0

    .line 60
    :goto_0
    iget-object v5, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 61
    .line 62
    new-instance v6, Ljava/lang/StringBuffer;

    .line 63
    .line 64
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v7, "Trying to override old definition of "

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    const-string v4, "task "

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const-string v4, "datatype "

    .line 78
    .line 79
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-object v6, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 90
    .line 91
    invoke-virtual {p1, v3, v6}, Lorg/apache/tools/ant/b;->u(Lorg/apache/tools/ant/b;Lorg/apache/tools/ant/Project;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    const/4 v2, 0x3

    .line 98
    :cond_4
    invoke-virtual {v5, v4, v2}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 102
    .line 103
    new-instance v3, Ljava/lang/StringBuffer;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v4, " +Datatype "

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    const-string v4, " "

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lorg/apache/tools/ant/b;->g()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    const/4 v4, 0x4

    .line 133
    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->a:Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;

    .line 137
    .line 138
    invoke-virtual {v2, v0, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 143
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    throw p1
.end method

.method private w(Lorg/apache/tools/ant/b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/b;->j(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/b;->h(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->v(Lorg/apache/tools/ant/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->l(Ljava/lang/String;)Lorg/apache/tools/ant/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/b;->c(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    return-object p1
.end method

.method public e(Lorg/apache/tools/ant/w;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/ComponentHelper;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Lorg/apache/tools/ant/u;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p2

    .line 10
    check-cast v0, Lorg/apache/tools/ant/u;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/apache/tools/ant/q;->getLocation()Lorg/apache/tools/ant/Location;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/q;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/u;->t(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/apache/tools/ant/w;->j()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/u;->s(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/apache/tools/ant/u;->g()Lorg/apache/tools/ant/t;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/u;->q(Lorg/apache/tools/ant/t;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/apache/tools/ant/u;->m()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object p2
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "Cause: The class "

    .line 2
    .line 3
    new-instance v1, Ljava/io/StringWriter;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/io/PrintWriter;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuffer;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "Problem: failed to create "

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    const-string v4, " "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v3, "user.home"

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v4, Ljava/io/File;

    .line 48
    .line 49
    sget-object v5, Lkz/a;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v3, "ant.home"

    .line 55
    .line 56
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v5, "lib"

    .line 61
    .line 62
    const/4 v6, 0x1

    .line 63
    const/4 v7, 0x0

    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    new-instance v8, Ljava/io/File;

    .line 67
    .line 68
    invoke-direct {v8, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    move v5, v7

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v8, "ANT_HOME"

    .line 83
    .line 84
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    sget-char v8, Ljava/io/File;->separatorChar:C

    .line 88
    .line 89
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    move v5, v6

    .line 100
    :goto_0
    new-instance v8, Ljava/lang/StringBuffer;

    .line 101
    .line 102
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v9, "        -"

    .line 106
    .line 107
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    const/16 v3, 0xa

    .line 114
    .line 115
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    if-eqz v5, :cond_1

    .line 119
    .line 120
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    const-string v3, "the IDE Ant configuration dialogs"

    .line 124
    .line 125
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    .line 140
    .line 141
    const-string v3, "a directory added on the command line with the -lib argument"

    .line 142
    .line 143
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    .line 145
    .line 146
    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->l(Ljava/lang/String;)Lorg/apache/tools/ant/b;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    if-nez v4, :cond_2

    .line 155
    .line 156
    invoke-direct {p0, v2, p1, v3}, Lorg/apache/tools/ant/ComponentHelper;->s(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_8

    .line 160
    .line 161
    :cond_2
    invoke-virtual {v4}, Lorg/apache/tools/ant/b;->g()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string v5, "org.apache.tools.ant."

    .line 166
    .line 167
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    const-string v8, "org.apache.tools.ant.taskdefs.optional"

    .line 172
    .line 173
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    const-string v9, "org.apache.tools.ant.types.optional"

    .line 178
    .line 179
    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    or-int/2addr v8, v9

    .line 184
    const/4 v9, 0x0

    .line 185
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/tools/ant/b;->m()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    move v8, v7

    .line 190
    move v10, v8

    .line 191
    goto :goto_2

    .line 192
    :catch_0
    move-exception v10

    .line 193
    invoke-direct {p0, v2, v8, v10, v3}, Lorg/apache/tools/ant/ComponentHelper;->r(Ljava/io/PrintWriter;ZLjava/lang/NoClassDefFoundError;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    move v8, v6

    .line 197
    move v10, v7

    .line 198
    goto :goto_2

    .line 199
    :catch_1
    xor-int/lit8 v10, v8, 0x1

    .line 200
    .line 201
    invoke-direct {p0, v2, p1, v8, v3}, Lorg/apache/tools/ant/ComponentHelper;->q(Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    move v8, v6

    .line 205
    :goto_2
    if-eqz v9, :cond_3

    .line 206
    .line 207
    :try_start_1
    iget-object v11, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 208
    .line 209
    invoke-virtual {v4, v9, v11}, Lorg/apache/tools/ant/b;->l(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    const-string v4, "The component could be instantiated."

    .line 213
    .line 214
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    .line 215
    .line 216
    .line 217
    goto :goto_6

    .line 218
    :catch_2
    move-exception v0

    .line 219
    goto :goto_3

    .line 220
    :catch_3
    move-exception p1

    .line 221
    goto :goto_4

    .line 222
    :goto_3
    new-instance v4, Ljava/lang/StringBuffer;

    .line 223
    .line 224
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v8, "Cause:  A class needed by class "

    .line 228
    .line 229
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    .line 234
    .line 235
    const-string p1, " cannot be found: "

    .line 236
    .line 237
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance p1, Ljava/lang/StringBuffer;

    .line 248
    .line 249
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string v4, "       "

    .line 253
    .line 254
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string p1, "Action: Determine what extra JAR files are needed, and place them in:"

    .line 272
    .line 273
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto :goto_7

    .line 280
    :goto_4
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    const-string v0, "Cause: The constructor threw the exception"

    .line 285
    .line 286
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 297
    .line 298
    .line 299
    :goto_5
    move v7, v6

    .line 300
    :cond_3
    :goto_6
    move v6, v8

    .line 301
    goto :goto_7

    .line 302
    :catch_4
    new-instance v0, Ljava/lang/StringBuffer;

    .line 303
    .line 304
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v3, "Cause: The constructor for "

    .line 308
    .line 309
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    .line 314
    .line 315
    const-string p1, " is private and cannot be invoked."

    .line 316
    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto :goto_5

    .line 328
    :catch_5
    new-instance v3, Ljava/lang/StringBuffer;

    .line 329
    .line 330
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    .line 338
    .line 339
    const-string p1, " is abstract and cannot be instantiated."

    .line 340
    .line 341
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto :goto_5

    .line 352
    :catch_6
    new-instance v3, Ljava/lang/StringBuffer;

    .line 353
    .line 354
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    .line 362
    .line 363
    const-string p1, " has no compatible constructor."

    .line 364
    .line 365
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    goto :goto_5

    .line 376
    :goto_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 377
    .line 378
    .line 379
    const-string p1, "Do not panic, this is a common problem."

    .line 380
    .line 381
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    if-eqz v10, :cond_4

    .line 385
    .line 386
    const-string p1, "It may just be a typographical error in the build file or the task/type declaration."

    .line 387
    .line 388
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    :cond_4
    if-eqz v6, :cond_5

    .line 392
    .line 393
    const-string p1, "The commonest cause is a missing JAR."

    .line 394
    .line 395
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    :cond_5
    if-eqz v7, :cond_7

    .line 399
    .line 400
    const-string p1, "This is quite a low level problem, which may need consultation with the author of the task."

    .line 401
    .line 402
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    if-eqz v5, :cond_6

    .line 406
    .line 407
    const-string p1, "This may be the Ant team. Please file a defect or contact the developer team."

    .line 408
    .line 409
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    goto :goto_8

    .line 413
    :cond_6
    const-string p1, "This does not appear to be a task bundled with Ant."

    .line 414
    .line 415
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    new-instance p1, Ljava/lang/StringBuffer;

    .line 419
    .line 420
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 421
    .line 422
    .line 423
    const-string v0, "Please take it up with the supplier of the third-party "

    .line 424
    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    .line 430
    .line 431
    const-string p2, "."

    .line 432
    .line 433
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    const-string p1, "If you have written it yourself, you probably have a bug to fix."

    .line 444
    .line 445
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 450
    .line 451
    .line 452
    const-string p1, "This is not a bug; it is a configuration problem"

    .line 453
    .line 454
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :goto_8
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    return-object p1
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/ComponentHelper;->h:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->g:Ljava/util/Stack;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->g:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->g:Ljava/util/Stack;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->g:Ljava/util/Stack;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->h:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->l(Ljava/lang/String;)Lorg/apache/tools/ant/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/b;->h(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    return-object p1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(Ljava/lang/String;)Lorg/apache/tools/ant/b;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->b(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->a:Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public m(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/ComponentHelper;->n(Ljava/lang/Object;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public n(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->a:Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lorg/apache/tools/ant/b;

    .line 30
    .line 31
    invoke-virtual {v3}, Lorg/apache/tools/ant/b;->g()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    iget-object v4, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/b;->h(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-ne v0, v4, :cond_0

    .line 48
    .line 49
    invoke-virtual {v3}, Lorg/apache/tools/ant/b;->i()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "The <"

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    const-string p1, "> type"

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_0
    return-object p1

    .line 79
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->p(Ljava/lang/Class;Z)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1
.end method

.method public u(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/ComponentHelper;->i:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    new-instance v0, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->a:Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;

    .line 9
    .line 10
    return-void
.end method
