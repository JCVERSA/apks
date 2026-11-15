.class public abstract Lan0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmga;
.implements Lxfa;


# instance fields
.field public final b:Lfreemarker/core/j;

.field public final c:Ljava/lang/String;

.field public final d:Lfreemarker/core/Environment;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/core/j;Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lan0;->b:Lfreemarker/core/j;

    iput-object p2, p0, Lan0;->c:Ljava/lang/String;

    iput-object p3, p0, Lan0;->d:Lfreemarker/core/Environment;

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lan0;->b:Lfreemarker/core/j;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfreemarker/core/j;->X(II)V

    :try_start_0
    new-instance v0, Lfreemarker/template/SimpleScalar;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lan0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lfreemarker/core/_TemplateModelException;

    const-string v0, "Failed to execute URL encoding."

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p1
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lan0;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lan0;->d:Lfreemarker/core/Environment;

    invoke-virtual {v0}, Lfreemarker/core/Environment;->G0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lan0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lan0;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    const-string v1, "Failed to execute URL encoding."

    invoke-direct {v0, p0, v1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Lfreemarker/core/_TemplateModelException;

    const-string v0, "To do URL encoding, the framework that encloses FreeMarker must specify the output encoding or the URL encoding charset, so ask the programmers to fix it. Or, as a last chance, you can set the url_encoding_charset setting in the template, e.g. <#setting url_escaping_charset=\'ISO-8859-1\'>, or give the charset explicitly to the buit-in, e.g. foo?url(\'ISO-8859-1\')."

    invoke-direct {p0, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lan0;->e:Ljava/lang/String;

    return-object p0
.end method
