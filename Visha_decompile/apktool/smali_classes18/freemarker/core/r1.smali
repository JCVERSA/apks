.class public final Lfreemarker/core/r1;
.super Lfreemarker/core/t0;
.source "SourceFile"

# interfaces
.implements Lmga;


# instance fields
.field public final h:Ljava/lang/String;

.field public i:Lifa;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/r1;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 1

    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p0, p1}, Lfreemarker/core/r1;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 0

    new-instance p1, Lfreemarker/core/r1;

    iget-object p2, p0, Lfreemarker/core/r1;->h:Ljava/lang/String;

    invoke-direct {p1, p2}, Lfreemarker/core/r1;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lfreemarker/core/r1;->i:Lifa;

    iput-object p0, p1, Lfreemarker/core/r1;->i:Lifa;

    return-object p1
.end method

.method public L(Lfreemarker/core/Environment;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/r1;->i:Lifa;

    if-nez v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/r1;->h:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lfreemarker/core/Configurable;->B()Lnfa;

    move-result-object v0

    sget-object v1, Lnfa;->b:Lnfa;

    invoke-virtual {p1, v1}, Lfreemarker/core/Environment;->g0(Lnfa;)V

    :try_start_0
    iget-object p0, p0, Lfreemarker/core/r1;->i:Lifa;

    invoke-virtual {p1, p0}, Lfreemarker/core/Environment;->J1(Lifa;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->g0(Lnfa;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    invoke-direct {v1, p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->g0(Lnfa;)V

    throw p0
.end method

.method public T()Z
    .locals 0

    iget-object p0, p0, Lfreemarker/core/r1;->i:Lifa;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public X()Z
    .locals 3

    iget-object v0, p0, Lfreemarker/core/r1;->i:Lifa;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lifa;->L()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lfreemarker/core/r1;->i:Lifa;

    invoke-virtual {p0, v1}, Lifa;->K(I)Ljavax/swing/tree/TreeNode;

    move-result-object p0

    instance-of p0, p0, Lrw2;

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public Y(Lfreemarker/core/u0;)V
    .locals 6

    iget-object v0, p0, Lfreemarker/core/r1;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lfreemarker/core/r1;->h:Ljava/lang/String;

    const-string v1, "${"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/r1;->h:Ljava/lang/String;

    const-string v1, "#{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    new-instance v0, Lxl9;

    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lfreemarker/core/r1;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lfreemarker/core/t1;->d:I

    iget v3, p0, Lfreemarker/core/t1;->c:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iget-object v5, p0, Lfreemarker/core/r1;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v0, v1, v2, v3, v5}, Lxl9;-><init>(Ljava/io/Reader;III)V

    new-instance v1, Lfreemarker/core/u0;

    invoke-direct {v1, v0}, Lfreemarker/core/u0;-><init>(Lxl9;)V

    iput-boolean v4, v1, Lfreemarker/core/u0;->i:Z

    iget v0, p1, Lfreemarker/core/u0;->n:I

    iput v0, v1, Lfreemarker/core/u0;->n:I

    iget v0, p1, Lfreemarker/core/u0;->o:I

    iput v0, v1, Lfreemarker/core/u0;->o:I

    iget-object v0, p1, Lfreemarker/core/u0;->p:Lfreemarker/core/Token;

    iput-object v0, v1, Lfreemarker/core/u0;->p:Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/FMParser;

    invoke-direct {v0, v1}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/core/u0;)V

    invoke-virtual {p0}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfreemarker/core/FMParser;->N4(Lfreemarker/template/Template;)V

    :try_start_0
    invoke-virtual {v0}, Lfreemarker/core/FMParser;->y()Lifa;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/r1;->i:Lifa;
    :try_end_0
    .catch Lfreemarker/core/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lfreemarker/core/t0;->g:Lzfa;

    iget p0, v1, Lfreemarker/core/u0;->o:I

    iput p0, p1, Lfreemarker/core/u0;->o:I

    iget-object p0, v1, Lfreemarker/core/u0;->p:Lfreemarker/core/Token;

    iput-object p0, p1, Lfreemarker/core/u0;->p:Lfreemarker/core/Token;

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/Template;->E0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfreemarker/core/ParseException;->setTemplateName(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public getAsString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/r1;->h:Ljava/lang/String;

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lfreemarker/core/r1;->i:Lifa;

    if-nez v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/r1;->h:Ljava/lang/String;

    invoke-static {p0}, Ln0a;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/r1;->i:Lifa;

    invoke-virtual {p0}, Lifa;->I()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lifa;

    instance-of v3, v2, Lm45;

    if-eqz v3, :cond_1

    check-cast v2, Lm45;

    invoke-virtual {v2}, Lm45;->m0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lifa;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ln0a;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/r1;->i:Lifa;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/r1;->o()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "dynamic \"...\""

    :goto_0
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

    sget-object p0, Ljw7;->F:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lfreemarker/core/r1;->i:Lifa;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
