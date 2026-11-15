.class public Li2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqq5;


# instance fields
.field public final b:Ljava/lang/String;

.field public volatile c:Lqq5;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/reflect/Method;

.field public f:Lfe3;

.field public g:Ljava/util/Queue;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Queue;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2a;->b:Ljava/lang/String;

    iput-object p2, p0, Li2a;->g:Ljava/util/Queue;

    iput-boolean p3, p0, Li2a;->h:Z

    return-void
.end method


# virtual methods
.method public a()Lqq5;
    .locals 1

    iget-object v0, p0, Li2a;->c:Lqq5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Li2a;->c:Lqq5;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Li2a;->h:Z

    if-eqz v0, :cond_1

    sget-object p0, Lorg/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Li2a;->b()Lqq5;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lqq5;
    .locals 2

    iget-object v0, p0, Li2a;->f:Lfe3;

    if-nez v0, :cond_0

    new-instance v0, Lfe3;

    iget-object v1, p0, Li2a;->g:Ljava/util/Queue;

    invoke-direct {v0, p0, v1}, Lfe3;-><init>(Li2a;Ljava/util/Queue;)V

    iput-object v0, p0, Li2a;->f:Lfe3;

    :cond_0
    iget-object p0, p0, Li2a;->f:Lfe3;

    return-object p0
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Li2a;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Li2a;->c:Lqq5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const-class v2, Lwq5;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Li2a;->e:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Li2a;->d:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Li2a;->d:Ljava/lang/Boolean;

    :goto_0
    iget-object p0, p0, Li2a;->d:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Li2a;->c:Lqq5;

    instance-of p0, p0, Lorg/slf4j/helpers/NOPLogger;

    return p0
.end method

.method public debug(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Li2a;->a()Lqq5;

    move-result-object p0

    invoke-interface {p0, p1}, Lqq5;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Li2a;->c:Lqq5;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Li2a;

    iget-object p0, p0, Li2a;->b:Ljava/lang/String;

    iget-object p1, p1, Li2a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Li2a;->a()Lqq5;

    move-result-object p0

    invoke-interface {p0, p1}, Lqq5;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Li2a;->a()Lqq5;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lqq5;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public f(Lwq5;)V
    .locals 1

    invoke-virtual {p0}, Li2a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Li2a;->e:Ljava/lang/reflect/Method;

    iget-object p0, p0, Li2a;->c:Lqq5;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public g(Lqq5;)V
    .locals 0

    iput-object p1, p0, Li2a;->c:Lqq5;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li2a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Li2a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public info(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Li2a;->a()Lqq5;

    move-result-object p0

    invoke-interface {p0, p1}, Lqq5;->info(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Li2a;->a()Lqq5;

    move-result-object p0

    invoke-interface {p0, p1}, Lqq5;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Li2a;->a()Lqq5;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lqq5;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Li2a;->a()Lqq5;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lqq5;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Li2a;->a()Lqq5;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lqq5;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
