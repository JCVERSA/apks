.class public final Lkci;
.super Liai;
.source "SourceFile"


# instance fields
.field public final a:Lpci;

.field public final b:Lfri;

.field public final c:Leri;

.field public final d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lpci;Lfri;Leri;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Liai;-><init>()V

    iput-object p1, p0, Lkci;->a:Lpci;

    iput-object p2, p0, Lkci;->b:Lfri;

    iput-object p3, p0, Lkci;->c:Leri;

    iput-object p4, p0, Lkci;->d:Ljava/lang/Integer;

    return-void
.end method

.method public static c(Loci;Lfri;Ljava/lang/Integer;)Lkci;
    .locals 3

    sget-object v0, Loci;->d:Loci;

    if-eq p0, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "For given Variant "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " the value of idRequirement must be non-null"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p0, v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lfri;->a()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7

    invoke-static {p0}, Lpci;->c(Loci;)Lpci;

    move-result-object p0

    new-instance v1, Lkci;

    invoke-virtual {p0}, Lpci;->b()Loci;

    move-result-object v2

    if-ne v2, v0, :cond_4

    sget-object v0, Lrii;->a:Leri;

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lpci;->b()Loci;

    move-result-object v0

    sget-object v2, Loci;->c:Loci;

    if-ne v0, v2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lrii;->a(I)Leri;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lpci;->b()Loci;

    move-result-object v0

    sget-object v2, Loci;->b:Loci;

    if-ne v0, v2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lrii;->b(I)Leri;

    move-result-object v0

    :goto_2
    invoke-direct {v1, p0, p1, v0, p2}, Lkci;-><init>(Lpci;Lfri;Leri;Ljava/lang/Integer;)V

    return-object v1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lpci;->b()Loci;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Unknown Variant: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Lfri;->a()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic a()Lp9i;
    .locals 0

    iget-object p0, p0, Lkci;->a:Lpci;

    return-object p0
.end method

.method public final b()Leri;
    .locals 0

    iget-object p0, p0, Lkci;->c:Leri;

    return-object p0
.end method

.method public final d()Lpci;
    .locals 0

    iget-object p0, p0, Lkci;->a:Lpci;

    return-object p0
.end method

.method public final e()Lfri;
    .locals 0

    iget-object p0, p0, Lkci;->b:Lfri;

    return-object p0
.end method

.method public final f()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkci;->d:Ljava/lang/Integer;

    return-object p0
.end method
