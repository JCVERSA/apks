.class public Llt1;
.super Lifa;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lifa;)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    invoke-virtual {p0, p1}, Lifa;->j0(Lifa;)V

    invoke-virtual {p0, p1}, Lfreemarker/core/t1;->l(Lfreemarker/core/t1;)Lfreemarker/core/t1;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Template;->E0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/core/t1;->n()I

    move-result v1

    invoke-static {p1, v0, v1}, Lwt1;->d(Lfreemarker/core/Environment;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p0

    invoke-virtual {p0, p1}, Lifa;->F(Lfreemarker/core/Environment;)V

    return-void

    :cond_0
    new-instance p0, Lfreemarker/core/StopException;

    const-string v0, "Stopped by debugger"

    invoke-direct {p0, p1, v0}, Lfreemarker/core/StopException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p0
.end method

.method public J(Z)Ljava/lang/String;
    .locals 2

    const-string v0, "debug break"

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<#-- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, " /-->"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v0, " -->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p0

    invoke-virtual {p0}, Lifa;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "<#--/ debug break -->"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#debug_break"

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
