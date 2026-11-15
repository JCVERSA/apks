.class public final Lbgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq8i;


# instance fields
.field public final a:Lq8i;

.field public final b:[B


# direct methods
.method public constructor <init>(Lq8i;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbgi;->a:Lq8i;

    array-length p1, p2

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "identifier has an invalid length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p2, p0, Lbgi;->b:[B

    return-void
.end method

.method public static b(Lthi;)Lq8i;
    .locals 4

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lthi;->b(Lt9i;)Luji;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/j9;->b0()Lkoi;

    move-result-object v1

    invoke-virtual {v0}, Luji;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkoi;->w(Ljava/lang/String;)Lkoi;

    invoke-virtual {v0}, Luji;->d()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkoi;->x(Lcom/google/android/gms/internal/ads/zzgwn;)Lkoi;

    invoke-virtual {v0}, Luji;->b()Lcom/google/android/gms/internal/ads/zzgsn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkoi;->v(Lcom/google/android/gms/internal/ads/zzgsn;)Lkoi;

    invoke-virtual {v1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/j9;

    const-class v2, Lq8i;

    invoke-static {v1, v2}, Ls9i;->a(Lcom/google/android/gms/internal/ads/j9;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq8i;

    invoke-virtual {v0}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown output prefix type "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lrii;->a:Leri;

    invoke-virtual {p0}, Leri;->d()[B

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lthi;->d()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lrii;->a(I)Leri;

    move-result-object p0

    invoke-virtual {p0}, Leri;->d()[B

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lthi;->d()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lrii;->b(I)Leri;

    move-result-object p0

    invoke-virtual {p0}, Leri;->d()[B

    move-result-object p0

    :goto_1
    new-instance v0, Lbgi;

    invoke-direct {v0, v1, p0}, Lbgi;-><init>(Lq8i;[B)V

    return-object v0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 2

    iget-object v0, p0, Lbgi;->b:[B

    array-length v1, v0

    if-nez v1, :cond_0

    iget-object p0, p0, Lbgi;->a:Lq8i;

    invoke-interface {p0, p1, p2}, Lq8i;->a([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p1}, Lfki;->c([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lbgi;->a:Lq8i;

    array-length v0, p1

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lq8i;->a([B[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "wrong prefix"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
