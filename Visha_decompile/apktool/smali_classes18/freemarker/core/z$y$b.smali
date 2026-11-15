.class public Lfreemarker/core/z$y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmga;
.implements Lofa;
.implements Lxfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z$y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final b:Lffa;

.field public final c:Lfreemarker/core/Environment;

.field public final d:Ldfa;

.field public e:Ljava/lang/String;

.field public final synthetic f:Lfreemarker/core/z$y;


# direct methods
.method public constructor <init>(Lfreemarker/core/z$y;Lffa;Lfreemarker/core/Environment;)V
    .locals 2

    iput-object p1, p0, Lfreemarker/core/z$y$b;->f:Lfreemarker/core/z$y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/core/z$y$b;->b:Lffa;

    iput-object p3, p0, Lfreemarker/core/z$y$b;->c:Lfreemarker/core/Environment;

    invoke-interface {p2}, Lffa;->j()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-static {p2, v1}, Lfreemarker/core/q0;->f(Lffa;Lfreemarker/core/t0;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    iget-object p1, p1, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {p3, v0, p2, p1}, Lfreemarker/core/Environment;->e1(ILjava/lang/Class;Lfreemarker/core/t0;)Ldfa;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lfreemarker/core/z$y$b;->d:Ldfa;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/z$y$b;->f:Lfreemarker/core/z$y;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/j;->Z(Ljava/util/List;I)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfreemarker/core/z$y$b;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 3

    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v1, p0, Lfreemarker/core/z$y$b;->c:Lfreemarker/core/Environment;

    iget-object v2, p0, Lfreemarker/core/z$y$b;->b:Lffa;

    iget-object p0, p0, Lfreemarker/core/z$y$b;->f:Lfreemarker/core/z$y;

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, v2, p1, p0}, Lfreemarker/core/Environment;->s0(Lffa;Ljava/lang/String;Lfreemarker/core/t0;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/z$y$b;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lfreemarker/core/z$y$b;->d:Ldfa;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/z$y$b;->b:Lffa;

    invoke-interface {v0}, Lffa;->j()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/z$y$b;->f:Lfreemarker/core/z$y;

    iget-object v0, v0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfreemarker/core/f1;->m(Lfreemarker/core/t0;Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;)Lfreemarker/core/_TemplateModelException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/core/BugException;

    invoke-direct {v0}, Lfreemarker/core/BugException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, p0, Lfreemarker/core/z$y$b;->b:Lffa;

    invoke-virtual {v0, v1}, Ldfa;->a(Lffa;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/z$y$b;->e:Ljava/lang/String;
    :try_end_0
    .catch Lfreemarker/core/UnformattableDateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lfreemarker/core/z$y$b;->f:Lfreemarker/core/z$y;

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-static {p0, v0}, Lfreemarker/core/f1;->l(Lfreemarker/core/t0;Lfreemarker/core/UnformattableDateException;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lfreemarker/core/z$y$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
