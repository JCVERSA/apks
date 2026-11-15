.class public Lfreemarker/core/n$b;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final k:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    iput p1, p0, Lfreemarker/core/n$b;->k:I

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lffa;

    if-eqz v1, :cond_1

    check-cast v0, Lffa;

    invoke-interface {v0}, Lffa;->j()I

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lam9;

    iget-object v1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-static {v0, v1}, Lfreemarker/core/q0;->f(Lffa;Lfreemarker/core/t0;)Ljava/util/Date;

    move-result-object v0

    iget p0, p0, Lfreemarker/core/n$b;->k:I

    invoke-direct {p1, v0, p0}, Lam9;-><init>(Ljava/util/Date;I)V

    return-object p1

    :cond_1
    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-static {p1, v0, p0}, Lhl0;->i0(Lfreemarker/core/Environment;Lzfa;Lfreemarker/core/t0;)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0
.end method
