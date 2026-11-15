.class Lorg/slf4j/impl/AndroidLoggerAdapter;
.super Lorg/slf4j/helpers/MarkerIgnoringBase;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x110827acc929f301L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;-><init>()V

    iput-object p1, p0, Lorg/slf4j/impl/AndroidLoggerAdapter;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ltn6;->a(Ljava/lang/String;[Ljava/lang/Object;)Lt44;

    move-result-object p2

    invoke-virtual {p2}, Lt44;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lt44;->b()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->d(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 0

    iget-object p0, p0, Lorg/slf4j/impl/AndroidLoggerAdapter;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final c(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/slf4j/impl/AndroidLoggerAdapter;->d(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final d(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object p0, p0, Lorg/slf4j/impl/AndroidLoggerAdapter;->name:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public debug(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 2
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 3
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 2
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 3
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 2
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 3
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->b(I)Z

    move-result p0

    return p0
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->b(I)Z

    move-result p0

    return p0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->b(I)Z

    move-result p0

    return p0
.end method

.method public isTraceEnabled()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->b(I)Z

    move-result p0

    return p0
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->b(I)Z

    move-result p0

    return p0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 2
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 3
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 2
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 3
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
