.class public Lcom/transsion/athena/taaneh/aethna;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/core/log/ObjectLogUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Athena"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->p(Ljava/lang/String;)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->q(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->n(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->m()Lcom/transsion/core/log/ObjectLogUtils;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 27
    .line 28
    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 0

    .line 7
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "%s"

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->x(I)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 4
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    :goto_0
    sget-object p1, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->x(I)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "%s"

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->x(I)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 4
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    :goto_0
    sget-object p1, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->x(I)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "%s"

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->x(I)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 4
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    :goto_0
    sget-object p1, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->x(I)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->n(Ljava/lang/Object;)V

    return-void
.end method
