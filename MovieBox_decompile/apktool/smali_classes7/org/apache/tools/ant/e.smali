.class Lorg/apache/tools/ant/e;
.super Lorg/apache/tools/ant/o$b;
.source "source.java"


# instance fields
.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/reflect/Constructor;

.field private final synthetic d:Ljava/lang/reflect/Method;

.field private final synthetic e:Lorg/apache/tools/ant/o;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;ZLjava/lang/reflect/Constructor;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/o$b;-><init>(Ljava/lang/reflect/Method;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/e;->e:Lorg/apache/tools/ant/o;

    .line 5
    .line 6
    iput-boolean p3, p0, Lorg/apache/tools/ant/e;->b:Z

    .line 7
    .line 8
    iput-object p4, p0, Lorg/apache/tools/ant/e;->c:Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    iput-object p5, p0, Lorg/apache/tools/ant/e;->d:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/tools/ant/e;->b:Z

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    aput-object p1, v2, v1

    .line 11
    .line 12
    aput-object p3, v2, v0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object p3, v2, v1

    .line 18
    .line 19
    :goto_0
    iget-object p3, p0, Lorg/apache/tools/ant/e;->c:Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    invoke-virtual {p3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lorg/apache/tools/ant/Project;->K(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/apache/tools/ant/e;->d:Ljava/lang/reflect/Method;

    .line 34
    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object p3, v0, v1

    .line 38
    .line 39
    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_2
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 44
    .line 45
    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p2
.end method
