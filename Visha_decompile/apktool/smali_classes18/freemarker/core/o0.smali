.class public Lfreemarker/core/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lofa;


# instance fields
.field public final synthetic b:Lfreemarker/core/Environment;


# direct methods
.method public constructor <init>(Lfreemarker/core/Environment;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/o0;->b:Lfreemarker/core/Environment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lzfa;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/o0;->b:Lfreemarker/core/Environment;

    invoke-static {v0}, Lfreemarker/core/Environment;->n0(Lfreemarker/core/Environment;)Lfreemarker/core/Environment$Namespace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/o0;->b:Lfreemarker/core/Environment;

    invoke-static {v0}, Lfreemarker/core/Environment;->m0(Lfreemarker/core/Environment;)Lofa;

    move-result-object v0

    invoke-interface {v0, p1}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lfreemarker/core/o0;->b:Lfreemarker/core/Environment;

    invoke-virtual {p0}, Lfreemarker/core/Environment;->x0()Lxe1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lxe1;->I0(Ljava/lang/String;)Lzfa;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
