.class Lorg/apache/tools/ant/n;
.super Lorg/apache/tools/ant/o$b;
.source "source.java"


# instance fields
.field private final synthetic b:Ljava/lang/reflect/Method;

.field private final synthetic c:Ljava/lang/Class;

.field private final synthetic d:Lorg/apache/tools/ant/o;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/o$b;-><init>(Ljava/lang/reflect/Method;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/n;->d:Lorg/apache/tools/ant/o;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/apache/tools/ant/n;->b:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/apache/tools/ant/n;->c:Ljava/lang/Class;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/n;->b:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/tools/ant/n;->c:Ljava/lang/Class;

    .line 6
    .line 7
    const-string v3, "valueOf"

    .line 8
    .line 9
    sget-object v4, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    const-string v4, "java.lang.String"

    .line 14
    .line 15
    invoke-static {v4}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    sput-object v4, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :catch_1
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    :goto_0
    new-array v5, v0, [Ljava/lang/Class;

    .line 27
    .line 28
    aput-object v4, v5, p1

    .line 29
    .line 30
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-array v3, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p3, v3, p1

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v2, v0, p1

    .line 46
    .line 47
    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw p2

    .line 57
    :goto_2
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    instance-of p2, p2, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuffer;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v0, "\'"

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    const-string p3, "\' is not a permitted value for "

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    iget-object p3, p0, Lorg/apache/tools/ant/n;->c:Ljava/lang/Class;

    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_1
    invoke-static {p1}, Lorg/apache/tools/ant/o;->a(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    throw p1
.end method
