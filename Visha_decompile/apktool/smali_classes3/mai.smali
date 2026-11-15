.class public final Lmai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq8i;


# instance fields
.field public final a:Leji;


# direct methods
.method public synthetic constructor <init>(Llai;Leji;Lyhi;Lyhi;Lnai;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmai;->a:Leji;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 1

    iget-object p0, p0, Lmai;->a:Leji;

    invoke-virtual {p0, p1}, Leji;->a([B)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llai;

    :try_start_0
    iget-object v0, v0, Llai;->a:Lq8i;

    invoke-interface {v0, p1, p2}, Lq8i;->a([B[B)[B

    move-result-object v0

    array-length p0, p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "decryption failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
