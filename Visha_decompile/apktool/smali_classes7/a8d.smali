.class public La8d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Ll6d;

.field public d:Ljava/lang/Class;

.field public final e:Ljava/lang/reflect/Field;

.field public f:Ljava/lang/reflect/Method;

.field public g:Ljava/lang/reflect/Method;

.field public final h:Ljava/util/Map;

.field public i:Lpfd;

.field public j:Lpfd;

.field public k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ll6d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La8d;->h:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, La8d;->i:Lpfd;

    .line 4
    iput-object v0, p0, La8d;->j:Lpfd;

    .line 5
    iput-object v0, p0, La8d;->k:Ljava/lang/Boolean;

    .line 6
    iput-object p1, p0, La8d;->b:Ljava/lang/String;

    iput-object p1, p0, La8d;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, La8d;->c:Ll6d;

    .line 8
    invoke-virtual {p2, p1}, Ll6d;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, La8d;->e:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_0

    .line 9
    const-class p2, Lpab;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lpab;

    invoke-virtual {p0, p1}, La8d;->c(Lpab;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Ll6d;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La8d;->h:Ljava/util/Map;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, La8d;->i:Lpfd;

    .line 14
    iput-object v0, p0, La8d;->j:Lpfd;

    .line 15
    iput-object v0, p0, La8d;->k:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La8d;->b:Ljava/lang/String;

    iput-object v0, p0, La8d;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, La8d;->c:Ll6d;

    .line 18
    iput-object p1, p0, La8d;->e:Ljava/lang/reflect/Field;

    .line 19
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, La8d;->d:Ljava/lang/Class;

    .line 20
    const-class p2, Lpab;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lpab;

    invoke-virtual {p0, p1}, La8d;->c(Lpab;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, La8d;->i()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, La8d;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v1

    :goto_0
    new-instance v0, Lcom/transsion/json/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while reading property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La8d;->d:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, La8d;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La8d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Lpab;)V
    .locals 3

    invoke-interface {p1}, Lpab;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Lpab;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La8d;->a:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, La8d;->b:Ljava/lang/String;

    invoke-interface {p1}, Lpab;->transformer()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmod;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    new-instance v0, Lpfd;

    invoke-interface {p1}, Lpab;->transformer()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lpfd;-><init>(Ljava/lang/Class;)V

    :goto_1
    iput-object v0, p0, La8d;->i:Lpfd;

    invoke-interface {p1}, Lpab;->objectFactory()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ltpd;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lpfd;

    invoke-interface {p1}, Lpab;->objectFactory()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, v0}, Lpfd;-><init>(Ljava/lang/Class;)V

    :goto_2
    iput-object v2, p0, La8d;->j:Lpfd;

    invoke-interface {p1}, Lpab;->include()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, La8d;->k:Ljava/lang/Boolean;

    return-void
.end method

.method public d(Ljava/lang/reflect/Method;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, La8d;->d:Ljava/lang/Class;

    if-nez v1, :cond_0

    iput-object v0, p0, La8d;->d:Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, La8d;->h:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La8d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/reflect/Method;)V
    .locals 3

    iget-object v0, p0, La8d;->d:Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, La8d;->d:Ljava/lang/Class;

    iput-object p1, p0, La8d;->f:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, La8d;->d:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, La8d;->f:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, La8d;->f:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2

    const-class v0, Lpab;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, La8d;->f:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lpab;

    invoke-virtual {p0, p1}, La8d;->c(Lpab;)V

    :cond_2
    return-void
.end method

.method public g()Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, La8d;->e:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public h()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, La8d;->d:Ljava/lang/Class;

    return-object p0
.end method

.method public i()Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, La8d;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, La8d;->c:Ll6d;

    invoke-virtual {v0}, Ll6d;->e()Ll6d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La8d;->c:Ll6d;

    invoke-virtual {v0}, Ll6d;->e()Ll6d;

    move-result-object v0

    iget-object v1, p0, La8d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ll6d;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La8d;->c:Ll6d;

    invoke-virtual {v0}, Ll6d;->e()Ll6d;

    move-result-object v0

    iget-object p0, p0, La8d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ll6d;->f(Ljava/lang/String;)La8d;

    move-result-object p0

    invoke-virtual {p0}, La8d;->i()Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, La8d;->f:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public j()Lmod;
    .locals 0

    iget-object p0, p0, La8d;->i:Lpfd;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lpfd;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmod;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public k()Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, La8d;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, La8d;->h:Ljava/util/Map;

    iget-object v1, p0, La8d;->d:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, La8d;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, La8d;->c:Ll6d;

    invoke-virtual {v0}, Ll6d;->e()Ll6d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La8d;->c:Ll6d;

    invoke-virtual {v0}, Ll6d;->e()Ll6d;

    move-result-object v0

    iget-object v1, p0, La8d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ll6d;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La8d;->c:Ll6d;

    invoke-virtual {v0}, Ll6d;->e()Ll6d;

    move-result-object v0

    iget-object p0, p0, La8d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ll6d;->f(Ljava/lang/String;)La8d;

    move-result-object p0

    invoke-virtual {p0}, La8d;->k()Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, La8d;->g:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public l()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, La8d;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method public m()Z
    .locals 1

    invoke-virtual {p0}, La8d;->i()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, La8d;->k()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, La8d;->e:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public n()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, La8d;->i()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, La8d;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, La8d;->e:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public o()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, La8d;->e:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, La8d;->k()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, La8d;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, La8d;->e:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
