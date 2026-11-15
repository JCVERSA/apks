.class public Lcom/amazonaws/logging/AndroidLog;
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
    iput-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->b:Lcom/amazonaws/logging/LogFactory$Level;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method private l()Lcom/amazonaws/logging/LogFactory$Level;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->b:Lcom/amazonaws/logging/LogFactory$Level;

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


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

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
    if-gt v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-gt v0, v1, :cond_1

    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-gt v0, v1, :cond_1

    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

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
    if-gt v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

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
    if-gt v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

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
    if-gt v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-gt p2, v0, :cond_1

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-gt v0, v1, :cond_1

    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

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
    if-gt v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

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
    if-gt v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

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
    if-gt v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
