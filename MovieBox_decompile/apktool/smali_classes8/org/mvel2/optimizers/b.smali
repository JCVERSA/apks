.class public Lorg/mvel2/optimizers/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static a:Ljava/lang/String; = "dynamic"

.field public static b:Ljava/lang/String; = "reflective"

.field private static final c:Ljava/util/logging/Logger;

.field private static d:Ljava/lang/String;

.field private static final e:Ljava/util/Map;

.field private static f:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lorg/mvel2/optimizers/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lorg/mvel2/optimizers/b;->c:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v1, Lorg/mvel2/optimizers/b;->e:Ljava/util/Map;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/ThreadLocal;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v2, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    .line 26
    .line 27
    sget-object v2, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v3, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;

    .line 30
    .line 31
    invoke-direct {v3}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    sget-object v2, Lorg/mvel2/optimizers/b;->a:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v3, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;

    .line 40
    .line 41
    invoke-direct {v3}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 48
    .line 49
    .line 50
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    const-string v3, "org.mvel2.asm.ClassWriter"

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    :goto_0
    const-string v0, "ASM"

    .line 73
    .line 74
    new-instance v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;

    .line 75
    .line 76
    invoke-direct {v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    sget-object v1, Lorg/mvel2/optimizers/b;->c:Ljava/util/logging/Logger;

    .line 84
    .line 85
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 86
    .line 87
    const-string v3, "[MVEL] Notice: Possible incorrect version of ASM present (3.0 required).  Disabling JIT compiler.  Reflective Optimizer will be used."

    .line 88
    .line 89
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    .line 93
    .line 94
    sput-object v0, Lorg/mvel2/optimizers/b;->d:Ljava/lang/String;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catch_0
    sget-object v0, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    .line 98
    .line 99
    sput-object v0, Lorg/mvel2/optimizers/b;->d:Ljava/lang/String;

    .line 100
    .line 101
    :goto_2
    const-string v0, "mvel2.disable.jit"

    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    sget-object v0, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v0}, Lorg/mvel2/optimizers/b;->e(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_1
    sget-object v0, Lorg/mvel2/optimizers/b;->a:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v0}, Lorg/mvel2/optimizers/b;->e(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/b;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/mvel2/optimizers/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lorg/mvel2/optimizers/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    .line 22
    .line 23
    const-string v1, "unable to instantiate accessor compiler"

    .line 24
    .line 25
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public static c()Lorg/mvel2/optimizers/a;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/b;->e:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lorg/mvel2/optimizers/b;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/mvel2/optimizers/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/mvel2/optimizers/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    const-string v2, "unable to instantiate accessor compiler"

    .line 26
    .line 27
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v1
.end method

.method public static d()Lorg/mvel2/optimizers/a;
    .locals 3

    .line 1
    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-static {}, Lorg/mvel2/optimizers/b;->c()Lorg/mvel2/optimizers/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lorg/mvel2/optimizers/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string v2, "unable to instantiate accessor compiler"

    .line 41
    .line 42
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/b;->e:Ljava/util/Map;

    .line 2
    .line 3
    sput-object p0, Lorg/mvel2/optimizers/b;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/mvel2/optimizers/a;

    .line 10
    .line 11
    invoke-interface {p0}, Lorg/mvel2/optimizers/a;->init()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string v1, "unable to instantiate accessor compiler"

    .line 25
    .line 26
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public static f(Ljava/lang/Class;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lorg/mvel2/optimizers/b;->f:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    const-string v0, "null optimizer"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method
