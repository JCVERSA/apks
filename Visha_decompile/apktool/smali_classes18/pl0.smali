.class public Lpl0;
.super Lfreemarker/core/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/k;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Lpfa;Lfreemarker/core/Environment;)Lzfa;
    .locals 1

    invoke-interface {p1}, Lpfa;->keys()Lbfa;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of p0, v0, Lnga;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lfreemarker/core/CollectionAndSequence;

    invoke-direct {p0, v0}, Lfreemarker/core/CollectionAndSequence;-><init>(Lbfa;)V

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "keys"

    invoke-virtual {p0, v0, p1, p2}, Lfreemarker/core/k;->i0(Ljava/lang/String;Lzfa;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0
.end method
