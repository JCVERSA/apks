.class public abstract Lpf3;
.super Lfreemarker/core/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lof3;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lpf3;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Lfreemarker/core/Environment;)Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    instance-of v1, v0, Lfreemarker/core/m1;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->N1(Z)Z

    move-result v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/core/InvalidReferenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->N1(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->N1(Z)Z

    throw p0

    :catch_0
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->N1(Z)Z

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    :goto_0
    return-object p0
.end method
