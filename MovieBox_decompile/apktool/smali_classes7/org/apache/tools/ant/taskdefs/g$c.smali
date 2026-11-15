.class Lorg/apache/tools/ant/taskdefs/g$c;
.super Lorg/apache/tools/ant/taskdefs/g$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/g$a;-><init>(Lorg/apache/tools/ant/taskdefs/f;)V

    .line 3
    .line 4
    .line 5
    sget-object v0, Lorg/apache/tools/ant/taskdefs/g;->t:Ljava/lang/Class;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "java.lang.Runtime"

    .line 10
    .line 11
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/g;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/apache/tools/ant/taskdefs/g;->t:Ljava/lang/Class;

    .line 16
    .line 17
    :cond_0
    sget-object v1, Lorg/apache/tools/ant/taskdefs/g;->r:Ljava/lang/Class;

    .line 18
    .line 19
    const-string v2, "[Ljava.lang.String;"

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/g;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lorg/apache/tools/ant/taskdefs/g;->r:Ljava/lang/Class;

    .line 28
    .line 29
    :cond_1
    sget-object v3, Lorg/apache/tools/ant/taskdefs/g;->r:Ljava/lang/Class;

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/g;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    sput-object v3, Lorg/apache/tools/ant/taskdefs/g;->r:Ljava/lang/Class;

    .line 38
    .line 39
    :cond_2
    sget-object v2, Lorg/apache/tools/ant/taskdefs/g;->s:Ljava/lang/Class;

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    const-string v2, "java.io.File"

    .line 44
    .line 45
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/g;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sput-object v2, Lorg/apache/tools/ant/taskdefs/g;->s:Ljava/lang/Class;

    .line 50
    .line 51
    :cond_3
    const/4 v4, 0x3

    .line 52
    new-array v4, v4, [Ljava/lang/Class;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    aput-object v1, v4, v5

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    aput-object v3, v4, v1

    .line 59
    .line 60
    const/4 v1, 0x2

    .line 61
    aput-object v2, v4, v1

    .line 62
    .line 63
    const-string v1, "exec"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/g$c;->a:Ljava/lang/reflect/Method;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public b(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 4

    .line 1
    const-string v0, "Unable to execute command"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Execute:Java13CommandLauncher: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lorg/apache/tools/ant/types/c;->g([Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-virtual {p1, v1, v2}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/g$c;->a:Ljava/lang/reflect/Method;

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x3

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    aput-object p2, v2, v3

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    aput-object p3, v2, p2

    .line 49
    .line 50
    const/4 p2, 0x2

    .line 51
    aput-object p4, v2, p2

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    return-object p1

    .line 60
    :goto_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 61
    .line 62
    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw p2

    .line 66
    :goto_2
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    instance-of p2, p1, Ljava/lang/ThreadDeath;

    .line 71
    .line 72
    if-nez p2, :cond_2

    .line 73
    .line 74
    instance-of p2, p1, Ljava/io/IOException;

    .line 75
    .line 76
    if-eqz p2, :cond_1

    .line 77
    .line 78
    check-cast p1, Ljava/io/IOException;

    .line 79
    .line 80
    throw p1

    .line 81
    :cond_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 82
    .line 83
    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :cond_2
    check-cast p1, Ljava/lang/ThreadDeath;

    .line 88
    .line 89
    throw p1
.end method
