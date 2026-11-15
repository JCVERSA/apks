.class public final Lpmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo9i;


# direct methods
.method public constructor <init>(Lo9i;Lcom/google/android/gms/internal/ads/zzgtt;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lthi;)Lo9i;
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

    const-class v2, Lo9i;

    invoke-static {v1, v2}, Ls9i;->a(Lcom/google/android/gms/internal/ads/j9;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo9i;

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

    const-string v0, "unknown output prefix type"

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
    new-instance v2, Lpmi;

    invoke-direct {v2, v1, v0, p0}, Lpmi;-><init>(Lo9i;Lcom/google/android/gms/internal/ads/zzgtt;[B)V

    return-object v2
.end method
