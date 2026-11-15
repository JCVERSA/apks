.class public Lfe3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqq5;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Li2a;

.field public d:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Li2a;Ljava/util/Queue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfe3;->c:Li2a;

    invoke-virtual {p1}, Li2a;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfe3;->b:Ljava/lang/String;

    iput-object p2, p0, Lfe3;->d:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lfe3;->b(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    new-instance p2, Lk2a;

    invoke-direct {p2}, Lk2a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lk2a;->i(J)V

    invoke-virtual {p2, p1}, Lk2a;->c(Lorg/slf4j/event/Level;)V

    iget-object p1, p0, Lfe3;->c:Li2a;

    invoke-virtual {p2, p1}, Lk2a;->d(Li2a;)V

    iget-object p1, p0, Lfe3;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lk2a;->e(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lk2a;->f(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lk2a;->b([Ljava/lang/Object;)V

    invoke-virtual {p2, p5}, Lk2a;->h(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lk2a;->g(Ljava/lang/String;)V

    iget-object p0, p0, Lfe3;->d:Ljava/util/Queue;

    invoke-interface {p0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public debug(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lfe3;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lfe3;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lfe3;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfe3;->b:Ljava/lang/String;

    return-object p0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lfe3;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lfe3;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lfe3;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 3
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lfe3;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lfe3;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
