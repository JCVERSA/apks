.class public Lfreemarker/core/q1;
.super Lifa;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lifa;)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    invoke-virtual {p0, p1}, Lifa;->j0(Lifa;)V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lfreemarker/core/z0;->n0(Lfreemarker/core/Environment;Ljava/lang/String;)Lfreemarker/core/z0$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfreemarker/core/z0$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfreemarker/core/Environment;->a2(Lifa;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual {p0}, Lfreemarker/core/q1;->r()Ljava/lang/String;

    move-result-object p0

    const-string v1, " without iteraton in context"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0
.end method

.method public J(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/q1;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_2

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v1

    invoke-virtual {v1}, Lifa;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/core/q1;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#sep"

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
