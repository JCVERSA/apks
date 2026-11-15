.class public Lfreemarker/core/f;
.super Ljava/io/StringWriter;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lfreemarker/core/g$a;


# direct methods
.method public constructor <init>(Lfreemarker/core/g$a;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/f;->b:Lfreemarker/core/g$a;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/core/f;->b:Lfreemarker/core/g$a;

    invoke-static {v1}, Lfreemarker/core/g$a;->b(Lfreemarker/core/g$a;)Lfreemarker/core/g;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/core/g;->m0(Lfreemarker/core/g;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfreemarker/core/f;->b:Lfreemarker/core/g$a;

    invoke-static {v1}, Lfreemarker/core/g$a;->e(Lfreemarker/core/g$a;)Lfreemarker/core/Environment;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/f;->b:Lfreemarker/core/g$a;

    invoke-static {p0}, Lfreemarker/core/g$a;->b(Lfreemarker/core/g$a;)Lfreemarker/core/g;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/g;->n0(Lfreemarker/core/g;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lfreemarker/core/Environment;->O1(Ljava/lang/String;Lzfa;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lfreemarker/core/f;->b:Lfreemarker/core/g$a;

    invoke-static {v1}, Lfreemarker/core/g$a;->e(Lfreemarker/core/g$a;)Lfreemarker/core/Environment;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/f;->b:Lfreemarker/core/g$a;

    invoke-static {p0}, Lfreemarker/core/g$a;->b(Lfreemarker/core/g$a;)Lfreemarker/core/g;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/g;->n0(Lfreemarker/core/g;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lfreemarker/core/Environment;->Q1(Ljava/lang/String;Lzfa;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lfreemarker/core/f;->b:Lfreemarker/core/g$a;

    invoke-static {v1}, Lfreemarker/core/g$a;->c(Lfreemarker/core/g$a;)Lfreemarker/core/Environment$Namespace;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lfreemarker/core/f;->b:Lfreemarker/core/g$a;

    invoke-static {v1}, Lfreemarker/core/g$a;->c(Lfreemarker/core/g$a;)Lfreemarker/core/Environment$Namespace;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/f;->b:Lfreemarker/core/g$a;

    invoke-static {p0}, Lfreemarker/core/g$a;->b(Lfreemarker/core/g$a;)Lfreemarker/core/g;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/g;->n0(Lfreemarker/core/g;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lfreemarker/core/f;->b:Lfreemarker/core/g$a;

    invoke-static {v1}, Lfreemarker/core/g$a;->e(Lfreemarker/core/g$a;)Lfreemarker/core/Environment;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/f;->b:Lfreemarker/core/g$a;

    invoke-static {p0}, Lfreemarker/core/g$a;->b(Lfreemarker/core/g$a;)Lfreemarker/core/g;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/g;->n0(Lfreemarker/core/g;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lfreemarker/core/Environment;->T1(Ljava/lang/String;Lzfa;)V

    :goto_0
    return-void
.end method
