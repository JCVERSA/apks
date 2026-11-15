.class public Lkb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpfa;


# instance fields
.field public final synthetic b:Lofa;

.field public final synthetic c:Lfreemarker/core/Environment;


# direct methods
.method public constructor <init>(Lfreemarker/core/Environment;Lofa;)V
    .locals 0

    iput-object p1, p0, Lkb3;->c:Lfreemarker/core/Environment;

    iput-object p2, p0, Lkb3;->b:Lofa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lzfa;
    .locals 0

    iget-object p0, p0, Lkb3;->b:Lofa;

    invoke-interface {p0, p1}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lkb3;->b:Lofa;

    invoke-interface {p0}, Lofa;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keys()Lbfa;
    .locals 0

    iget-object p0, p0, Lkb3;->c:Lfreemarker/core/Environment;

    invoke-static {p0}, Lfreemarker/core/Environment;->m0(Lfreemarker/core/Environment;)Lofa;

    move-result-object p0

    check-cast p0, Lpfa;

    invoke-interface {p0}, Lpfa;->keys()Lbfa;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lkb3;->c:Lfreemarker/core/Environment;

    invoke-static {p0}, Lfreemarker/core/Environment;->m0(Lfreemarker/core/Environment;)Lofa;

    move-result-object p0

    check-cast p0, Lpfa;

    invoke-interface {p0}, Lpfa;->size()I

    move-result p0

    return p0
.end method

.method public values()Lbfa;
    .locals 0

    iget-object p0, p0, Lkb3;->c:Lfreemarker/core/Environment;

    invoke-static {p0}, Lfreemarker/core/Environment;->m0(Lfreemarker/core/Environment;)Lofa;

    move-result-object p0

    check-cast p0, Lpfa;

    invoke-interface {p0}, Lpfa;->values()Lbfa;

    move-result-object p0

    return-object p0
.end method
