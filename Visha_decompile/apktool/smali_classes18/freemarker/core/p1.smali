.class public final Lfreemarker/core/p1;
.super Lifa;
.source "SourceFile"


# instance fields
.field public l:Lfreemarker/core/t0;

.field public m:Lfreemarker/core/t0;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    iput-object p1, p0, Lfreemarker/core/p1;->l:Lfreemarker/core/t0;

    iput-object p2, p0, Lfreemarker/core/p1;->m:Lfreemarker/core/t0;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 5

    iget-object v0, p0, Lfreemarker/core/p1;->l:Lfreemarker/core/t0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v2, v0, Lgga;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lfreemarker/core/NonNodeException;

    iget-object p0, p0, Lfreemarker/core/p1;->l:Lfreemarker/core/t0;

    const-string v2, "node"

    invoke-direct {v1, p0, v0, v2, p1}, Lfreemarker/core/NonNodeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw v1

    :cond_2
    :goto_1
    iget-object v2, p0, Lfreemarker/core/p1;->m:Lfreemarker/core/t0;

    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Lfreemarker/core/p1;->m:Lfreemarker/core/t0;

    instance-of v4, v3, Lfreemarker/core/r1;

    if-eqz v4, :cond_4

    check-cast v2, Lmga;

    invoke-interface {v2}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lfreemarker/core/Environment;->p1(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;

    move-result-object v2

    goto :goto_3

    :cond_4
    instance-of v1, v3, Lfreemarker/core/c1;

    if-eqz v1, :cond_5

    check-cast v3, Lfreemarker/core/c1;

    invoke-virtual {v3, p1}, Lfreemarker/core/c1;->Y(Lfreemarker/core/Environment;)Lnga;

    move-result-object v2

    :cond_5
    :goto_3
    if-eqz v2, :cond_8

    instance-of v1, v2, Lofa;

    if-eqz v1, :cond_6

    new-instance p0, Lfreemarker/template/SimpleSequence;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    invoke-virtual {p0, v2}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    move-object v2, p0

    goto :goto_4

    :cond_6
    instance-of v1, v2, Lnga;

    if-nez v1, :cond_8

    iget-object v0, p0, Lfreemarker/core/p1;->m:Lfreemarker/core/t0;

    if-eqz v0, :cond_7

    new-instance v0, Lfreemarker/core/NonSequenceException;

    iget-object p0, p0, Lfreemarker/core/p1;->m:Lfreemarker/core/t0;

    invoke-direct {v0, p0, v2, p1}, Lfreemarker/core/NonSequenceException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v0

    :cond_7
    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "Expecting a sequence of namespaces after \"using\""

    invoke-direct {p0, p1, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    check-cast v0, Lgga;

    check-cast v2, Lnga;

    invoke-virtual {p1, v0, v2}, Lfreemarker/core/Environment;->I1(Lgga;Lnga;)V

    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/p1;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/p1;->l:Lfreemarker/core/t0;

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/p1;->l:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lfreemarker/core/p1;->m:Lfreemarker/core/t0;

    if-eqz v1, :cond_2

    const-string v1, " using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/p1;->m:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz p1, :cond_3

    const-string p0, "/>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#recurse"

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-object p0, Ljw7;->l:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljw7;->I:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/p1;->m:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/p1;->l:Lfreemarker/core/t0;

    return-object p0
.end method
