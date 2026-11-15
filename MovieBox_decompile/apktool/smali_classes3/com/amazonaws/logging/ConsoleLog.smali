.class public final Lcom/amazonaws/logging/ConsoleLog;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/amazonaws/logging/LogFactory$Level;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amazonaws/logging/ConsoleLog;->b:Lcom/amazonaws/logging/LogFactory$Level;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/amazonaws/logging/ConsoleLog;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method private l()Lcom/amazonaws/logging/LogFactory$Level;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/logging/ConsoleLog;->b:Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/amazonaws/logging/LogFactory;->a()Lcom/amazonaws/logging/LogFactory$Level;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method private o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/logging/ConsoleLog;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v1, v2, v3

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    aput-object p1, v2, v1

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    aput-object p2, v2, p1

    .line 20
    .line 21
    const-string p1, "%s/%s: %s\n"

    .line 22
    .line 23
    invoke-virtual {v0, p1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 24
    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gt v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gt v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    invoke-direct {p0, v0, p1, p2}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    invoke-direct {p0, v0, p1, p2}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gt v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    return v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    invoke-direct {p0, v0, p1, p2}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->TRACE:Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public m()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->TRACE:Lcom/amazonaws/logging/LogFactory$Level;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gt v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gt v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    return v0
.end method
