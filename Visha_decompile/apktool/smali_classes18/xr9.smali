.class public Lxr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee1;
.implements Lzp0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxr9$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/reflect/Method;

.field public static synthetic e:Ljava/lang/Class;


# instance fields
.field public final a:Ljava/lang/ref/ReferenceQueue;

.field public final b:Ljava/util/Map;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lxr9;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lxr9;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lc0d;->c()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lxr9;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lxr9;->a:Ljava/lang/ref/ReferenceQueue;

    .line 4
    iput-object p1, p0, Lxr9;->b:Ljava/util/Map;

    .line 5
    invoke-static {p1}, Lc0d;->b(Ljava/util/Map;)Z

    move-result p1

    iput-boolean p1, p0, Lxr9;->c:Z

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static c()Ljava/lang/reflect/Method;
    .locals 5

    :try_start_0
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "remove"

    sget-object v2, Lxr9;->e:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "java.lang.Object"

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {v3}, Lxr9;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lxr9;->e:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v4, Lxr9;->e:Ljava/lang/Class;

    if-nez v4, :cond_1

    invoke-static {v3}, Lxr9;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lxr9;->e:Ljava/lang/Class;

    :cond_1
    filled-new-array {v2, v4}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_1
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lxr9;->c:Z

    return p0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lxr9;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lxr9;->d()V

    return-void
.end method

.method public final d()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lxr9;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lxr9$a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lxr9$a;->a()Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lxr9;->c:Z

    if-eqz v2, :cond_2

    :try_start_0
    sget-object v2, Lxr9;->d:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lxr9;->b:Ljava/util/Map;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget-object v2, p0, Lxr9;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lxr9;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lxr9;->d()V

    iget-object p0, p0, Lxr9;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/Reference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lxr9;->d()V

    iget-object v0, p0, Lxr9;->b:Ljava/util/Map;

    new-instance v1, Lxr9$a;

    iget-object p0, p0, Lxr9;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p2, p0}, Lxr9$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
