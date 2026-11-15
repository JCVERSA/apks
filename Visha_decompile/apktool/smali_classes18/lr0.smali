.class public Llr0;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/StringBuffer;

.field public final synthetic c:Ljava/io/Writer;

.field public final synthetic d:Z

.field public final synthetic e:Lfreemarker/core/Environment;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:Lzfa;

.field public final synthetic i:Lmr0;


# direct methods
.method public constructor <init>(Lmr0;Ljava/lang/StringBuffer;Ljava/io/Writer;ZLfreemarker/core/Environment;Ljava/lang/String;ZLzfa;)V
    .locals 0

    iput-object p1, p0, Llr0;->i:Lmr0;

    iput-object p2, p0, Llr0;->b:Ljava/lang/StringBuffer;

    iput-object p3, p0, Llr0;->c:Ljava/io/Writer;

    iput-boolean p4, p0, Llr0;->d:Z

    iput-object p5, p0, Llr0;->e:Lfreemarker/core/Environment;

    iput-object p6, p0, Llr0;->f:Ljava/lang/String;

    iput-boolean p7, p0, Llr0;->g:Z

    iput-object p8, p0, Llr0;->h:Lzfa;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v1, p0, Llr0;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Llr0;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Llr0;->e:Lfreemarker/core/Environment;

    iget-object v2, p0, Llr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/core/Environment;->Q1(Ljava/lang/String;Lzfa;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Llr0;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Llr0;->e:Lfreemarker/core/Environment;

    iget-object v2, p0, Llr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/core/Environment;->O1(Ljava/lang/String;Lzfa;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Llr0;->h:Lzfa;

    if-nez v1, :cond_2

    iget-object v1, p0, Llr0;->e:Lfreemarker/core/Environment;

    iget-object v2, p0, Llr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/core/Environment;->T1(Ljava/lang/String;Lzfa;)V

    goto :goto_0

    :cond_2
    check-cast v1, Lfreemarker/core/Environment$Namespace;

    iget-object v2, p0, Llr0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not set variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Llr0;->f:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Llr0;->c:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .locals 0

    iget-object p0, p0, Llr0;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method
