.class public Lcom/transsion/json/d;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:Lcom/transsion/json/c;

.field private d:Ljava/lang/Class;

.field protected final e:Ljava/lang/reflect/Field;

.field protected f:Ljava/lang/reflect/Method;

.field protected g:Ljava/lang/reflect/Method;

.field protected final h:Ljava/util/Map;

.field protected i:Lcom/transsion/json/g;

.field protected j:Lcom/transsion/json/g;

.field protected k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/json/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/d;->h:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/transsion/json/d;->i:Lcom/transsion/json/g;

    .line 4
    iput-object v0, p0, Lcom/transsion/json/d;->j:Lcom/transsion/json/g;

    .line 5
    iput-object v0, p0, Lcom/transsion/json/d;->k:Ljava/lang/Boolean;

    .line 6
    iput-object p1, p0, Lcom/transsion/json/d;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    .line 8
    invoke-virtual {p2, p1}, Lcom/transsion/json/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_0

    .line 9
    const-class p2, Lnl/a;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lnl/a;

    invoke-direct {p0, p1}, Lcom/transsion/json/d;->d(Lnl/a;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Lcom/transsion/json/c;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/d;->h:Ljava/util/Map;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/transsion/json/d;->i:Lcom/transsion/json/g;

    .line 14
    iput-object v0, p0, Lcom/transsion/json/d;->j:Lcom/transsion/json/g;

    .line 15
    iput-object v0, p0, Lcom/transsion/json/d;->k:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/json/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    .line 18
    iput-object p1, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    .line 19
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    .line 20
    const-class p2, Lnl/a;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lnl/a;

    invoke-direct {p0, p1}, Lcom/transsion/json/d;->d(Lnl/a;)V

    :cond_0
    return-void
.end method

.method private d(Lnl/a;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lnl/a;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lnl/a;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    .line 17
    .line 18
    :goto_0
    iput-object v0, p0, Lcom/transsion/json/d;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {p1}, Lnl/a;->transformer()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lcom/transsion/json/b/n;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    move-object v0, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    new-instance v0, Lcom/transsion/json/g;

    .line 32
    .line 33
    invoke-interface {p1}, Lnl/a;->transformer()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Lcom/transsion/json/g;-><init>(Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    iput-object v0, p0, Lcom/transsion/json/d;->i:Lcom/transsion/json/g;

    .line 41
    .line 42
    invoke-interface {p1}, Lnl/a;->objectFactory()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-class v1, Lcom/transsion/json/o;

    .line 47
    .line 48
    if-ne v0, v1, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    new-instance v2, Lcom/transsion/json/g;

    .line 52
    .line 53
    invoke-interface {p1}, Lnl/a;->objectFactory()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v2, v0}, Lcom/transsion/json/g;-><init>(Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    iput-object v2, p0, Lcom/transsion/json/d;->j:Lcom/transsion/json/g;

    .line 61
    .line 62
    invoke-interface {p1}, Lnl/a;->include()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/transsion/json/d;->k:Ljava/lang/Boolean;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/json/d;->i()Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p1

    .line 26
    :cond_1
    return-object v1

    .line 27
    :goto_0
    new-instance v0, Lcom/transsion/json/k;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "Error while reading property "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "."

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/json/d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Ljava/lang/reflect/Method;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/transsion/json/d;->h:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Ljava/lang/reflect/Method;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const-class v0, Lnl/a;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lnl/a;

    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/transsion/json/d;->d(Lnl/a;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public g()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/json/c;->h(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/transsion/json/c;->f(Ljava/lang/String;)Lcom/transsion/json/d;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/transsion/json/d;->i()Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/transsion/json/d;->f:Ljava/lang/reflect/Method;

    .line 45
    .line 46
    return-object v0
.end method

.method public j()Lcom/transsion/json/b/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/json/d;->i:Lcom/transsion/json/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/json/g;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/transsion/json/b/n;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public k()Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/json/d;->g:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/json/d;->h:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/transsion/json/d;->d:Ljava/lang/Class;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/reflect/Method;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/json/d;->g:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/transsion/json/c;->h(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/json/d;->c:Lcom/transsion/json/c;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/json/c;->e()Lcom/transsion/json/c;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/transsion/json/d;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/transsion/json/c;->f(Ljava/lang/String;)Lcom/transsion/json/d;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/transsion/json/d;->k()Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/transsion/json/d;->g:Ljava/lang/reflect/Method;

    .line 59
    .line 60
    return-object v0
.end method

.method public l()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/json/d;->k:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method protected m()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/json/d;->i()Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/json/d;->k()Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public n()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/json/d;->i()Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    :cond_1
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public o()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public p()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/json/d;->k()Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/json/d;->e:Ljava/lang/reflect/Field;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 37
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
