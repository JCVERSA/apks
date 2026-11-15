.class public Lfreemarker/core/y0;
.super Lifa;
.source "SourceFile"


# instance fields
.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lifa;)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    iput-object p1, p0, Lfreemarker/core/y0;->l:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lifa;->j0(Lifa;)V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lfreemarker/core/z0;->n0(Lfreemarker/core/Environment;Ljava/lang/String;)Lfreemarker/core/z0$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/y0;->l:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Lfreemarker/core/z0$a;->i(Lfreemarker/core/Environment;Lifa;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual {p0}, Lfreemarker/core/y0;->r()Ljava/lang/String;

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
    invoke-virtual {p0}, Lfreemarker/core/y0;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/y0;->l:Ljava/lang/String;

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

    invoke-virtual {p0}, Lfreemarker/core/y0;->r()Ljava/lang/String;

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

    const-string p0, "#items"

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Ljw7;->u:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/y0;->l:Ljava/lang/String;

    return-object p0
.end method
