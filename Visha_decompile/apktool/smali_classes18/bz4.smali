.class public final Lbz4;
.super Lifa;
.source "SourceFile"


# instance fields
.field public final l:Lfreemarker/core/t0;

.field public final m:Lfreemarker/core/t0;

.field public final n:Lfreemarker/core/t0;

.field public final o:Lfreemarker/core/t0;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/Boolean;

.field public final r:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lfreemarker/template/Template;Lfreemarker/core/t0;Lfreemarker/core/t0;Lfreemarker/core/t0;Lfreemarker/core/t0;)V
    .locals 2

    invoke-direct {p0}, Lifa;-><init>()V

    iput-object p2, p0, Lbz4;->l:Lfreemarker/core/t0;

    iput-object p3, p0, Lbz4;->m:Lfreemarker/core/t0;

    const/4 p2, 0x0

    if-nez p3, :cond_0

    iput-object p2, p0, Lbz4;->p:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lfreemarker/core/t0;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p3, p2}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lmga;

    if-eqz v1, :cond_1

    check-cast v0, Lmga;

    invoke-interface {v0}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lbz4;->p:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Lfreemarker/core/ParseException;

    const-string p1, "Expected a string as the value of the \"encoding\" argument"

    invoke-direct {p0, p1, p3}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Lfreemarker/core/BugException;

    invoke-direct {p1, p0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    iput-object p2, p0, Lbz4;->p:Ljava/lang/String;

    :goto_1
    iput-object p4, p0, Lbz4;->n:Lfreemarker/core/t0;

    if-nez p4, :cond_3

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p3, p0, Lbz4;->q:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    invoke-virtual {p4}, Lfreemarker/core/t0;->T()Z

    move-result p3

    if-eqz p3, :cond_5

    :try_start_1
    instance-of p3, p4, Lfreemarker/core/r1;

    if-eqz p3, :cond_4

    invoke-virtual {p4, p2}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ln0a;->u(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lbz4;->q:Ljava/lang/Boolean;
    :try_end_1
    .catch Lfreemarker/template/TemplateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lfreemarker/template/Template;->t0()Lxe1;

    move-result-object p3

    invoke-virtual {p4, p3}, Lfreemarker/core/t0;->N(Lxe1;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lbz4;->q:Ljava/lang/Boolean;
    :try_end_2
    .catch Lfreemarker/core/NonBooleanException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lfreemarker/template/TemplateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_2
    move-exception p0

    :try_start_3
    new-instance p1, Lfreemarker/core/ParseException;

    const-string p2, "Expected a boolean or string as the value of the parse attribute"

    invoke-direct {p1, p2, p4, p0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Lfreemarker/template/TemplateException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    new-instance p1, Lfreemarker/core/BugException;

    invoke-direct {p1, p0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    iput-object p2, p0, Lbz4;->q:Ljava/lang/Boolean;

    :goto_3
    iput-object p5, p0, Lbz4;->o:Lfreemarker/core/t0;

    if-eqz p5, :cond_6

    invoke-virtual {p5}, Lfreemarker/core/t0;->T()Z

    move-result p3

    if-eqz p3, :cond_6

    :try_start_4
    invoke-virtual {p1}, Lfreemarker/template/Template;->t0()Lxe1;

    move-result-object p1

    invoke-virtual {p5, p1}, Lfreemarker/core/t0;->N(Lxe1;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lbz4;->r:Ljava/lang/Boolean;
    :try_end_4
    .catch Lfreemarker/core/NonBooleanException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lfreemarker/template/TemplateException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    goto :goto_4

    :catch_4
    move-exception p0

    :try_start_5
    new-instance p1, Lfreemarker/core/ParseException;

    const-string p2, "Expected a boolean as the value of the \"ignore_missing\" attribute"

    invoke-direct {p1, p2, p5, p0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catch Lfreemarker/template/TemplateException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    new-instance p1, Lfreemarker/core/BugException;

    invoke-direct {p1, p0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    iput-object p2, p0, Lbz4;->r:Ljava/lang/Boolean;

    :goto_5
    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 5

    iget-object v0, p0, Lbz4;->l:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Template;->y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/Environment;->W1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lfreemarker/template/MalformedTemplateNameException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v2, p0, Lbz4;->p:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lbz4;->m:Lfreemarker/core/t0;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lbz4;->q:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lbz4;->n:Lfreemarker/core/t0;

    invoke-virtual {v3, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v3

    instance-of v4, v3, Lmga;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lbz4;->n:Lfreemarker/core/t0;

    check-cast v3, Lmga;

    invoke-static {v3, v4, p1}, Lfreemarker/core/q0;->h(Lmga;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lbz4;->l0(Lfreemarker/core/t0;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lbz4;->n:Lfreemarker/core/t0;

    invoke-virtual {v4, v3, p1}, Lfreemarker/core/t0;->U(Lzfa;Lfreemarker/core/Environment;)Z

    move-result v3

    :goto_1
    iget-object v4, p0, Lbz4;->r:Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lbz4;->o:Lfreemarker/core/t0;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->O(Lfreemarker/core/Environment;)Z

    move-result p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    :try_start_1
    invoke-virtual {p1, v1, v2, v3, p0}, Lfreemarker/core/Environment;->k1(Ljava/lang/String;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_6

    invoke-virtual {p1, p0}, Lfreemarker/core/Environment;->r1(Lfreemarker/template/Template;)V

    :cond_6
    return-void

    :catch_0
    move-exception p0

    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    new-instance v2, Lk0d;

    invoke-direct {v2, v0}, Lk0d;-><init>(Ljava/lang/Object;)V

    new-instance v0, Li0d;

    invoke-direct {v0, p0}, Li0d;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "Template inclusion failed (for parameter value "

    const-string v4, "):\n"

    filled-new-array {v3, v2, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    new-instance v1, Lk0d;

    invoke-virtual {p0}, Lfreemarker/template/MalformedTemplateNameException;->getTemplateName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string v2, ":\n"

    invoke-virtual {p0}, Lfreemarker/template/MalformedTemplateNameException;->getMalformednessDescription()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Malformed template name "

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

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
    invoke-virtual {p0}, Lbz4;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbz4;->l:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbz4;->m:Lfreemarker/core/t0;

    if-eqz v1, :cond_1

    const-string v1, " encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbz4;->m:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lbz4;->n:Lfreemarker/core/t0;

    if-eqz v1, :cond_2

    const-string v1, " parse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbz4;->n:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lbz4;->o:Lfreemarker/core/t0;

    if-eqz v1, :cond_3

    const-string v1, " ignore_missing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lbz4;->o:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz p1, :cond_4

    const-string p0, "/>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l0(Lfreemarker/core/t0;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p2}, Ln0a;->u(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    new-instance v0, Lk0d;

    invoke-direct {v0, p2}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p2, "."

    const-string v1, "Value must be boolean (or one of these strings: \"n\", \"no\", \"f\", \"false\", \"y\", \"yes\", \"t\", \"true\"), but it was "

    filled-new-array {v1, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#include"

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    sget-object p0, Ljw7;->y:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljw7;->x:Ljw7;

    return-object p0

    :cond_2
    sget-object p0, Ljw7;->w:Ljw7;

    return-object p0

    :cond_3
    sget-object p0, Ljw7;->v:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lbz4;->o:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lbz4;->m:Lfreemarker/core/t0;

    return-object p0

    :cond_2
    iget-object p0, p0, Lbz4;->n:Lfreemarker/core/t0;

    return-object p0

    :cond_3
    iget-object p0, p0, Lbz4;->l:Lfreemarker/core/t0;

    return-object p0
.end method
