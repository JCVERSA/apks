.class public final Lmbi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lwbi;

.field public b:Lfri;

.field public c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lnbi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lmbi;->a:Lwbi;

    iput-object p1, p0, Lmbi;->b:Lfri;

    iput-object p1, p0, Lmbi;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Lmbi;
    .locals 0

    iput-object p1, p0, Lmbi;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b(Lfri;)Lmbi;
    .locals 0

    iput-object p1, p0, Lmbi;->b:Lfri;

    return-object p0
.end method

.method public final c(Lwbi;)Lmbi;
    .locals 0

    iput-object p1, p0, Lmbi;->a:Lwbi;

    return-object p0
.end method

.method public final d()Lobi;
    .locals 7

    iget-object v0, p0, Lmbi;->a:Lwbi;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lmbi;->b:Lfri;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lwbi;->b()I

    move-result v2

    invoke-virtual {v1}, Lfri;->a()I

    move-result v1

    if-ne v2, v1, :cond_7

    invoke-virtual {v0}, Lwbi;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmbi;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lmbi;->a:Lwbi;

    invoke-virtual {v0}, Lwbi;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmbi;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Lmbi;->a:Lwbi;

    invoke-virtual {v0}, Lwbi;->d()Lubi;

    move-result-object v0

    sget-object v1, Lubi;->d:Lubi;

    if-ne v0, v1, :cond_4

    sget-object v0, Lrii;->a:Leri;

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lmbi;->a:Lwbi;

    invoke-virtual {v0}, Lwbi;->d()Lubi;

    move-result-object v0

    sget-object v1, Lubi;->c:Lubi;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lmbi;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lrii;->a(I)Leri;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lmbi;->a:Lwbi;

    invoke-virtual {v0}, Lwbi;->d()Lubi;

    move-result-object v0

    sget-object v1, Lubi;->b:Lubi;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lmbi;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lrii;->b(I)Leri;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance v0, Lobi;

    iget-object v2, p0, Lmbi;->a:Lwbi;

    iget-object v3, p0, Lmbi;->b:Lfri;

    iget-object v5, p0, Lmbi;->c:Ljava/lang/Integer;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lobi;-><init>(Lwbi;Lfri;Leri;Ljava/lang/Integer;Lnbi;)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lmbi;->a:Lwbi;

    invoke-virtual {p0}, Lwbi;->d()Lubi;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown AesGcmParameters.Variant: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Key size mismatch"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot build without parameters and/or key material"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
