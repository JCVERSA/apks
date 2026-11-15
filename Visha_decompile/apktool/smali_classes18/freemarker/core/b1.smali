.class public final Lfreemarker/core/b1;
.super Lifa;
.source "SourceFile"


# instance fields
.field public l:Lfreemarker/core/t0;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/template/Template;Lfreemarker/core/t0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    iput-object p3, p0, Lfreemarker/core/b1;->m:Ljava/lang/String;

    iput-object p2, p0, Lfreemarker/core/b1;->l:Lfreemarker/core/t0;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 5

    iget-object v0, p0, Lfreemarker/core/b1;->l:Lfreemarker/core/t0;

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

    :try_start_1
    invoke-virtual {p1, v1}, Lfreemarker/core/Environment;->i1(Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p0, p0, Lfreemarker/core/b1;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lfreemarker/core/Environment;->o1(Lfreemarker/template/Template;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;

    return-void

    :catch_0
    move-exception p0

    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    new-instance v2, Lk0d;

    invoke-direct {v2, v0}, Lk0d;-><init>(Ljava/lang/Object;)V

    new-instance v0, Li0d;

    invoke-direct {v0, p0}, Li0d;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "Template importing failed (for parameter value "

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
    invoke-virtual {p0}, Lfreemarker/core/b1;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/b1;->l:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/b1;->m:Ljava/lang/String;

    invoke-static {p0}, Ld0d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1

    const-string p0, "/>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#import"

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
    sget-object p0, Ljw7;->v:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/b1;->m:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/b1;->l:Lfreemarker/core/t0;

    return-object p0
.end method
