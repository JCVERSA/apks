.class Lorg/apache/tools/ant/d;
.super Lorg/apache/tools/ant/o$b;
.source "source.java"


# instance fields
.field private final synthetic b:Ljava/lang/reflect/Method;

.field private final synthetic c:Lorg/apache/tools/ant/o;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/o$b;-><init>(Ljava/lang/reflect/Method;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/d;->c:Lorg/apache/tools/ant/o;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/apache/tools/ant/d;->b:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lorg/apache/tools/ant/d;->b:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Long;

    .line 4
    .line 5
    invoke-static {p3}, Lorg/apache/tools/ant/util/p;->a(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 10
    .line 11
    .line 12
    const/4 p3, 0x1

    .line 13
    new-array p3, p3, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aput-object v0, p3, v1

    .line 17
    .line 18
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :catch_2
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :goto_0
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw p2

    .line 34
    :goto_1
    throw p1

    .line 35
    :goto_2
    throw p1
.end method
