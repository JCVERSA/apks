.class public abstract Lll0;
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
    .locals 1

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lll0;->h0(Ljava/lang/String;Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public abstract h0(Ljava/lang/String;Lfreemarker/core/Environment;)Lzfa;
.end method
