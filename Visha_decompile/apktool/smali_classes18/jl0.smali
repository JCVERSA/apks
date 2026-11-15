.class public abstract Ljl0;
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

    iget-object v1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/t0;->W(Lzfa;Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljl0;->h0(Ljava/lang/Number;Lzfa;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public abstract h0(Ljava/lang/Number;Lzfa;)Lzfa;
.end method
