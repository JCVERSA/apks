.class public Lum0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lvm0;


# direct methods
.method public constructor <init>(Lvm0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lum0;->c:Lvm0;

    iput-object p2, p0, Lum0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(III)Lfreemarker/template/TemplateModelException;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lum0;->c:Lvm0;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p2}, Ljava/lang/Integer;-><init>(I)V

    const-string p2, "."

    const-string v1, "The index mustn\'t be greater than the length of the string, "

    const-string v2, ", but it was "

    filled-new-array {v1, v0, v2, p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lfreemarker/core/f1;->o(Ljava/lang/String;I[Ljava/lang/Object;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    return-object p0
.end method

.method public final c(II)Lfreemarker/template/TemplateModelException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lum0;->c:Lvm0;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-string p2, "."

    const-string v1, "The index must be at least 0, but was "

    filled-new-array {v1, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lfreemarker/core/f1;->o(Ljava/lang/String;I[Ljava/lang/Object;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    return-object p0
.end method

.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lum0;->c:Lvm0;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/j;->Y(III)V

    iget-object v1, p0, Lum0;->c:Lvm0;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/j;->b0(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v4, p0, Lum0;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ltz v1, :cond_5

    if-gt v1, v4, :cond_4

    if-le v0, v3, :cond_3

    iget-object v0, p0, Lum0;->c:Lvm0;

    invoke-virtual {v0, p1, v3}, Lfreemarker/core/j;->b0(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ltz p1, :cond_2

    if-gt p1, v4, :cond_1

    if-gt v1, p1, :cond_0

    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object p0, p0, Lum0;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lum0;->c:Lvm0;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const-string p1, "."

    const-string v2, "The begin index argument, "

    const-string v3, ", shouldn\'t be greater than the end index argument, "

    filled-new-array {v2, v0, v3, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lfreemarker/core/f1;->s(Ljava/lang/String;[Ljava/lang/Object;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p0, v3, p1, v4}, Lum0;->b(III)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {p0, v3, p1}, Lum0;->c(II)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p1, Lfreemarker/template/SimpleScalar;

    iget-object p0, p0, Lum0;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    invoke-virtual {p0, v2, v1, v4}, Lum0;->b(III)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-virtual {p0, v2, v1}, Lum0;->c(II)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method
