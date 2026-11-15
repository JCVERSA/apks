.class public final Ltbi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Lubi;


# direct methods
.method public synthetic constructor <init>(Lvbi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ltbi;->a:Ljava/lang/Integer;

    iput-object p1, p0, Ltbi;->b:Ljava/lang/Integer;

    iput-object p1, p0, Ltbi;->c:Ljava/lang/Integer;

    sget-object p1, Lubi;->d:Lubi;

    iput-object p1, p0, Ltbi;->d:Lubi;

    return-void
.end method


# virtual methods
.method public final a(I)Ltbi;
    .locals 0

    const/16 p1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ltbi;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b(I)Ltbi;
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ltbi;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final c(I)Ltbi;
    .locals 0

    const/16 p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ltbi;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final d(Lubi;)Ltbi;
    .locals 0

    iput-object p1, p0, Ltbi;->d:Lubi;

    return-object p0
.end method

.method public final e()Lwbi;
    .locals 8

    iget-object v0, p0, Ltbi;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Ltbi;->d:Lubi;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltbi;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltbi;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Lwbi;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Ltbi;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v0, p0, Ltbi;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v6, p0, Ltbi;->d:Lubi;

    const/4 v7, 0x0

    const/16 v4, 0xc

    const/16 v5, 0x10

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lwbi;-><init>(IIILubi;Lvbi;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Tag size is not set"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "IV size is not set"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Variant is not set"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Key size is not set"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
