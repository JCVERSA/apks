.class public final Lme1;
.super Lifa;
.source "SourceFile"


# instance fields
.field public final l:Lfreemarker/core/t0;

.field public final m:I

.field public n:Z


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Lifa;I)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    iput-object p1, p0, Lme1;->l:Lfreemarker/core/t0;

    invoke-virtual {p0, p2}, Lifa;->j0(Lifa;)V

    iput p3, p0, Lme1;->m:I

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 1

    iget-object v0, p0, Lme1;->l:Lfreemarker/core/t0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->O(Lfreemarker/core/Environment;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfreemarker/core/Environment;->a2(Lifa;)V

    :cond_1
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
    invoke-virtual {p0}, Lme1;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lme1;->l:Lfreemarker/core/t0;

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lme1;->l:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p1, :cond_3

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p1

    invoke-virtual {p1}, Lifa;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-boolean p0, p0, Lme1;->n:Z

    if-eqz p0, :cond_3

    const-string p0, "</#if>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lme1;->m:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "#else"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "#if"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "#elseif"

    return-object p0

    :cond_2
    new-instance p0, Lfreemarker/core/BugException;

    const-string v0, "Unknown type"

    invoke-direct {p0, v0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p0
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

    sget-object p0, Ljw7;->q:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljw7;->o:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/Integer;

    iget p0, p0, Lme1;->m:I

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lme1;->l:Lfreemarker/core/t0;

    return-object p0
.end method
