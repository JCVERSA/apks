.class public abstract Lfreemarker/core/k;
.super Lfreemarker/core/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lpfa;

    if-eqz v1, :cond_0

    check-cast v0, Lpfa;

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/k;->h0(Lpfa;Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lfreemarker/core/NonExtendedHashException;

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-direct {v1, p0, v0, p1}, Lfreemarker/core/NonExtendedHashException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method public abstract h0(Lpfa;Lfreemarker/core/Environment;)Lzfa;
.end method

.method public i0(Ljava/lang/String;Lzfa;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;
    .locals 5

    invoke-virtual {p3}, Lfreemarker/core/Environment;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lfreemarker/core/InvalidReferenceException;->FAST_INSTANCE:Lfreemarker/core/InvalidReferenceException;

    return-object p0

    :cond_0
    new-instance v0, Lfreemarker/core/InvalidReferenceException;

    new-instance v1, Lq0d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v2, ") has returned null for its \""

    const-string v3, "\" property. This is maybe a bug. The extended hash was returned by this expression:"

    const-string v4, "The exteneded hash (of class "

    filled-new-array {v4, p2, v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lq0d;-><init>([Ljava/lang/Object;)V

    iget-object p1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, p1}, Lq0d;->b(Lfreemarker/core/t0;)Lq0d;

    move-result-object p1

    invoke-direct {v0, p1, p3, p0}, Lfreemarker/core/InvalidReferenceException;-><init>(Lq0d;Lfreemarker/core/Environment;Lfreemarker/core/t0;)V

    return-object v0
.end method
