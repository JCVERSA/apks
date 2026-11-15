.class public final Lfreemarker/core/g1;
.super Lfreemarker/core/t0;
.source "SourceFile"


# instance fields
.field public final h:Lfreemarker/core/t0;

.field public final i:Lfreemarker/core/c1;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/c1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    .line 3
    iput-object p1, p0, Lfreemarker/core/g1;->h:Lfreemarker/core/t0;

    .line 4
    iput-object p2, p0, Lfreemarker/core/g1;->i:Lfreemarker/core/c1;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/c1;

    invoke-direct {v0, p2}, Lfreemarker/core/c1;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v0}, Lfreemarker/core/g1;-><init>(Lfreemarker/core/t0;Lfreemarker/core/c1;)V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 8

    iget-object v0, p0, Lfreemarker/core/g1;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lxfa;

    if-eqz v1, :cond_1

    check-cast v0, Lxfa;

    instance-of v1, v0, Lyfa;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lfreemarker/core/g1;->i:Lfreemarker/core/c1;

    invoke-virtual {p0, p1}, Lfreemarker/core/c1;->Z(Lfreemarker/core/Environment;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/g1;->i:Lfreemarker/core/c1;

    invoke-virtual {p0, p1}, Lfreemarker/core/c1;->a0(Lfreemarker/core/Environment;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {v0, p0}, Lxfa;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->u()Lgc7;

    move-result-object p1

    invoke-interface {p1, p0}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, v0, Lfreemarker/core/e1;

    if-eqz v1, :cond_3

    move-object v3, v0

    check-cast v3, Lfreemarker/core/e1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->P1(Lzfa;)V

    invoke-virtual {v3}, Lfreemarker/core/e1;->s0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lfreemarker/core/Environment;->a1()Ljava/io/Writer;

    move-result-object v0

    :try_start_0
    sget-object v1, Lj37;->b:Lj37;

    invoke-virtual {p1, v1}, Lfreemarker/core/Environment;->S1(Ljava/io/Writer;)V

    iget-object p0, p0, Lfreemarker/core/g1;->i:Lfreemarker/core/c1;

    iget-object v5, p0, Lfreemarker/core/c1;->h:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lfreemarker/core/Environment;->t1(Lfreemarker/core/e1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lifa;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->S1(Ljava/io/Writer;)V

    invoke-virtual {p1}, Lfreemarker/core/Environment;->P0()Lzfa;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    new-instance v1, Lfreemarker/template/TemplateException;

    const-string v2, "Unexpected exception during function execution"

    invoke-direct {v1, v2, p0, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->S1(Ljava/io/Writer;)V

    throw p0

    :cond_2
    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "A macro cannot be called in an expression. (Functions can be.)"

    invoke-direct {p0, p1, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v1, Lfreemarker/core/NonMethodException;

    iget-object p0, p0, Lfreemarker/core/g1;->h:Lfreemarker/core/t0;

    invoke-direct {v1, p0, v0, p1}, Lfreemarker/core/NonMethodException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 2

    new-instance v0, Lfreemarker/core/g1;

    iget-object v1, p0, Lfreemarker/core/g1;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/g1;->i:Lfreemarker/core/c1;

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p0

    check-cast p0, Lfreemarker/core/c1;

    invoke-direct {v0, v1, p0}, Lfreemarker/core/g1;-><init>(Lfreemarker/core/t0;Lfreemarker/core/c1;)V

    return-object v0
.end method

.method public T()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lfreemarker/core/g1;->h:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/g1;->i:Lfreemarker/core/c1;

    invoke-virtual {p0}, Lfreemarker/core/c1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "...(...)"

    return-object p0
.end method

.method public s()I
    .locals 0

    iget-object p0, p0, Lfreemarker/core/g1;->i:Lfreemarker/core/c1;

    iget-object p0, p0, Lfreemarker/core/c1;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Ljw7;->J:Ljw7;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/g1;->s()I

    move-result p0

    if-ge p1, p0, :cond_1

    sget-object p0, Ljw7;->D:Ljw7;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lfreemarker/core/g1;->h:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/g1;->s()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lfreemarker/core/g1;->i:Lfreemarker/core/c1;

    iget-object p0, p0, Lfreemarker/core/c1;->h:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
