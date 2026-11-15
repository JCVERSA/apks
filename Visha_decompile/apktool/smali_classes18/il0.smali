.class public abstract Lil0;
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

    instance-of v1, v0, Lgga;

    if-eqz v1, :cond_0

    check-cast v0, Lgga;

    invoke-virtual {p0, v0, p1}, Lil0;->h0(Lgga;Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lfreemarker/core/NonNodeException;

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-direct {v1, p0, v0, p1}, Lfreemarker/core/NonNodeException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method public abstract h0(Lgga;Lfreemarker/core/Environment;)Lzfa;
.end method
