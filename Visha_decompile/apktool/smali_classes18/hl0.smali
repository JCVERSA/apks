.class public abstract Lhl0;
.super Lfreemarker/core/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method

.method public static i0(Lfreemarker/core/Environment;Lzfa;Lfreemarker/core/t0;)Lfreemarker/template/TemplateException;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {p2, p0}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/core/NonDateException;

    const-string v1, "date"

    invoke-direct {v0, p2, p1, v1, p0}, Lfreemarker/core/NonDateException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;Lfreemarker/core/Environment;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lffa;

    if-eqz v1, :cond_0

    check-cast v0, Lffa;

    iget-object v1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-static {v0, v1}, Lfreemarker/core/q0;->f(Lffa;Lfreemarker/core/t0;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0}, Lffa;->j()I

    move-result v0

    invoke-virtual {p0, v1, v0, p1}, Lhl0;->h0(Ljava/util/Date;ILfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-static {p1, v0, p0}, Lhl0;->i0(Lfreemarker/core/Environment;Lzfa;Lfreemarker/core/t0;)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0
.end method

.method public abstract h0(Ljava/util/Date;ILfreemarker/core/Environment;)Lzfa;
.end method
