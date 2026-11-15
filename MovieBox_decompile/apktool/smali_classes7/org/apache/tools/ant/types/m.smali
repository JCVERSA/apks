.class public Lorg/apache/tools/ant/types/m;
.super Lorg/apache/tools/ant/types/e;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/tools/ant/types/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/m$a;
    }
.end annotation


# static fields
.field public static c:Lorg/apache/tools/ant/types/m;

.field public static d:Lorg/apache/tools/ant/types/m;

.field private static final e:Ljava/util/Iterator;

.field static synthetic f:Ljava/lang/Class;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Lmz/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tools/ant/types/m;

    .line 2
    .line 3
    const-string v1, "java.class.path"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/types/m;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/apache/tools/ant/types/m;->c:Lorg/apache/tools/ant/types/m;

    .line 14
    .line 15
    new-instance v0, Lorg/apache/tools/ant/types/m;

    .line 16
    .line 17
    const-string v1, "sun.boot.class.path"

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/types/m;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lorg/apache/tools/ant/types/m;->d:Lorg/apache/tools/ant/types/m;

    .line 27
    .line 28
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lorg/apache/tools/ant/types/m;->e:Ljava/util/Iterator;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/tools/ant/types/e;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/q;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/m;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/m;->o()Lorg/apache/tools/ant/types/m$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/m$a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Ljava/lang/String;)Ljava/lang/Class;
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

.method private l(Ljava/lang/String;Lorg/apache/tools/ant/types/m;)Lorg/apache/tools/ant/types/m;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/tools/ant/types/m;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/m;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "build.sysclasspath"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    move-object p1, v1

    .line 29
    :cond_0
    const-string v1, "only"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, p2, v2}, Lorg/apache/tools/ant/types/m;->h(Lorg/apache/tools/ant/types/m;Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v1, "first"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, p2, v2}, Lorg/apache/tools/ant/types/m;->h(Lorg/apache/tools/ant/types/m;Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/types/m;->g(Lorg/apache/tools/ant/types/m;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-string v1, "ignore"

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/types/m;->g(Lorg/apache/tools/ant/types/m;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string v1, "last"

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_4

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuffer;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v3, "invalid value for build.sysclasspath: "

    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/types/m;->g(Lorg/apache/tools/ant/types/m;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p2, v2}, Lorg/apache/tools/ant/types/m;->h(Lorg/apache/tools/ant/types/m;Z)V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-object v0
.end method

.method private declared-synchronized q()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->a:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/m;->p()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/types/m;->a:Ljava/lang/Boolean;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->a:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    .line 28
    return v0

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0
.end method

.method private static s(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->m()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-virtual {v0, p0, p1}, Lorg/apache/tools/ant/util/d;->q(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge p0, v1, :cond_1

    .line 17
    .line 18
    invoke-static {v0, p0}, Lorg/apache/tools/ant/types/m;->v(Ljava/lang/StringBuffer;I)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 p0, p0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method protected static v(Ljava/lang/StringBuffer;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2f

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x5c

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public static w(Lorg/apache/tools/ant/Project;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-array p0, v1, [Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v2, Lorg/apache/tools/ant/p;

    .line 13
    .line 14
    invoke-direct {v2, p1}, Lorg/apache/tools/ant/p;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuffer;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/p;->a()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/apache/tools/ant/p;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :try_start_0
    invoke-static {p0, v3}, Lorg/apache/tools/ant/types/m;->s(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    new-instance v4, Ljava/lang/StringBuffer;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v5, "Dropping path element "

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    const-string v3, " as it is not valid relative to the project"

    .line 58
    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/4 v4, 0x3

    .line 67
    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    :goto_1
    move v3, v1

    .line 71
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-ge v3, v4, :cond_1

    .line 76
    .line 77
    invoke-static {p1, v3}, Lorg/apache/tools/ant/types/m;->v(Ljava/lang/StringBuffer;I)Z

    .line 78
    .line 79
    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Ljava/lang/StringBuffer;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    new-array p0, p0, [Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lorg/apache/tools/ant/types/m;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/m;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->dieOnCircularReference()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/m;->j(Lorg/apache/tools/ant/types/u;)Lorg/apache/tools/ant/types/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/e;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/apache/tools/ant/types/m;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lmz/a;->clone()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lmz/g;

    .line 17
    .line 18
    :goto_0
    iput-object v1, v0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v1
.end method

.method public d(Lorg/apache/tools/ant/types/m;)V
    .locals 1

    .line 1
    if-eq p1, p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/q;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/m;->e(Lorg/apache/tools/ant/types/u;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->circularReference()Lorg/apache/tools/ant/BuildException;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    throw p1
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isChecked()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/e;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 30
    .line 31
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/e;->invokeCircularReferenceCheck(Lorg/apache/tools/ant/types/e;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_2
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/e;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :goto_0
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p1
.end method

.method public e(Lorg/apache/tools/ant/types/u;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->checkChildrenAllowed()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lmz/g;

    .line 13
    .line 14
    invoke-direct {v0}, Lmz/g;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/q;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lmz/a;->k(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lmz/a;->d(Lorg/apache/tools/ant/types/u;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/e;->setChecked(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public g(Lorg/apache/tools/ant/types/m;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/m;->h(Lorg/apache/tools/ant/types/m;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public h(Lorg/apache/tools/ant/types/m;Z)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/m;->r()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    const-string v1, "user.dir"

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    const/4 v1, 0x0

    .line 21
    :goto_1
    array-length v2, p1

    .line 22
    if-ge v1, v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    aget-object v3, p1, v1

    .line 29
    .line 30
    invoke-static {v2, v3}, Lorg/apache/tools/ant/types/m;->s(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    new-instance v2, Ljava/io/File;

    .line 43
    .line 44
    aget-object v3, p1, v1

    .line 45
    .line 46
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/m;->t(Ljava/io/File;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "dropping "

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    const-string v2, " from path as it doesn\'t exist"

    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/4 v3, 0x3

    .line 82
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    return-void
.end method

.method public i(Lorg/apache/tools/ant/types/m;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/m;->d(Lorg/apache/tools/ant/types/m;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final declared-synchronized iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lorg/apache/tools/ant/types/m;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/m;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->dieOnCircularReference()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lorg/apache/tools/ant/types/m;->q()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lmz/d;

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/m;->r()[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v0, v2, v1}, Lmz/d;-><init>(Ljava/io/File;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-object v0

    .line 43
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    sget-object v0, Lorg/apache/tools/ant/types/m;->e:Ljava/util/Iterator;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/m;->j(Lorg/apache/tools/ant/types/u;)Lorg/apache/tools/ant/types/u;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Lorg/apache/tools/ant/types/u;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :goto_0
    monitor-exit p0

    .line 59
    return-object v0

    .line 60
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    throw v0
.end method

.method protected j(Lorg/apache/tools/ant/types/u;)Lorg/apache/tools/ant/types/u;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/apache/tools/ant/types/u;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuffer;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getDataTypeName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    const-string v1, " allows only filesystem resources."

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_0
    return-object p1
.end method

.method public m(Ljava/lang/String;)Lorg/apache/tools/ant/types/m;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tools/ant/types/m;->d:Lorg/apache/tools/ant/types/m;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/m;->l(Ljava/lang/String;Lorg/apache/tools/ant/types/m;)Lorg/apache/tools/ant/types/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public n(Ljava/lang/String;)Lorg/apache/tools/ant/types/m;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tools/ant/types/m;->c:Lorg/apache/tools/ant/types/m;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/m;->l(Ljava/lang/String;Lorg/apache/tools/ant/types/m;)Lorg/apache/tools/ant/types/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public o()Lorg/apache/tools/ant/types/m$a;
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
    new-instance v0, Lorg/apache/tools/ant/types/m$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/m$a;-><init>(Lorg/apache/tools/ant/types/m;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/m;->e(Lorg/apache/tools/ant/types/u;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0
.end method

.method protected p()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/apache/tools/ant/types/m;->f:Ljava/lang/Class;

    .line 6
    .line 7
    const-string v2, "org.apache.tools.ant.types.Path"

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {v2}, Lorg/apache/tools/ant/types/m;->k(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lorg/apache/tools/ant/types/m;->f:Ljava/lang/Class;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v3, "list"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v3, Lorg/apache/tools/ant/types/m;->f:Ljava/lang/Class;

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    invoke-static {v2}, Lorg/apache/tools/ant/types/m;->k(Ljava/lang/String;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    sput-object v3, Lorg/apache/tools/ant/types/m;->f:Ljava/lang/Class;

    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    xor-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    return v0

    .line 57
    :catch_0
    return v1
.end method

.method public r()[Ljava/lang/String;
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
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/tools/ant/types/m;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/m;->r()[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/m;->j(Lorg/apache/tools/ant/types/u;)Lorg/apache/tools/ant/types/u;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 31
    .line 32
    invoke-virtual {v0}, Lmz/g;->m()[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    return-object v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

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

.method public declared-synchronized size()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lorg/apache/tools/ant/types/m;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/m;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->dieOnCircularReference()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/m;->j(Lorg/apache/tools/ant/types/u;)Lorg/apache/tools/ant/types/u;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lorg/apache/tools/ant/types/u;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_0
    monitor-exit p0

    .line 40
    return v0

    .line 41
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw v0
.end method

.method public t(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->checkAttributesAllowed()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/m;->o()Lorg/apache/tools/ant/types/m$a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/m$a;->b(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
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
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/m;->b:Lmz/g;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0}, Lmz/a;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    return-object v0
.end method
