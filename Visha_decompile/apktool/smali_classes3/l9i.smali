.class public final Ll9i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lohi;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/n9;

.field public final b:Ljava/util/List;

.field public final c:Lxhi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/n9;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll9i;->a:Lcom/google/android/gms/internal/ads/n9;

    iput-object p2, p0, Ll9i;->b:Ljava/util/List;

    sget-object p1, Lxhi;->b:Lxhi;

    iput-object p1, p0, Ll9i;->c:Lxhi;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/n9;Ljava/util/List;Lxhi;Lk9i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll9i;->a:Lcom/google/android/gms/internal/ads/n9;

    iput-object p2, p0, Ll9i;->b:Ljava/util/List;

    iput-object p3, p0, Ll9i;->c:Lxhi;

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/ads/n9;)Ll9i;
    .locals 2

    invoke-static {p0}, Ll9i;->h(Lcom/google/android/gms/internal/ads/n9;)V

    invoke-static {p0}, Ll9i;->g(Lcom/google/android/gms/internal/ads/n9;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ll9i;

    invoke-direct {v1, p0, v0}, Ll9i;-><init>(Lcom/google/android/gms/internal/ads/n9;Ljava/util/List;)V

    return-object v1
.end method

.method public static final b(Lp9i;)Ll9i;
    .locals 3

    new-instance v0, Li9i;

    invoke-direct {v0}, Li9i;-><init>()V

    new-instance v1, Lg9i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg9i;-><init>(Lp9i;Lk9i;)V

    invoke-virtual {v1}, Lg9i;->d()Lg9i;

    invoke-virtual {v1}, Lg9i;->c()Lg9i;

    invoke-virtual {v0, v1}, Li9i;->a(Lg9i;)Li9i;

    invoke-virtual {v0}, Li9i;->b()Ll9i;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/android/gms/internal/ads/n9;)V
    .locals 0

    invoke-static {p0}, Ll9i;->h(Lcom/google/android/gms/internal/ads/n9;)V

    return-void
.end method

.method public static g(Lcom/google/android/gms/internal/ads/n9;)Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n9;->b0()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n9;->h0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/m9;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/m9;->b0()I

    move-result v6

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/m9;->b0()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/m9;->f0()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    if-ne v4, v5, :cond_0

    move-object v3, v9

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/m9;->c0()Lcom/google/android/gms/internal/ads/j9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/j9;->g0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/m9;->c0()Lcom/google/android/gms/internal/ads/j9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/j9;->f0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/m9;->c0()Lcom/google/android/gms/internal/ads/j9;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/j9;->c0()Lcom/google/android/gms/internal/ads/zzgsn;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/m9;->f0()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v8

    invoke-static {v4, v5, v7, v8, v3}, Luji;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Luji;

    move-result-object v3

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v4

    invoke-static {}, Lt9i;->a()Lt9i;

    move-result-object v5

    invoke-virtual {v4, v3}, Lqii;->j(Lyji;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v4, Lthi;

    invoke-direct {v4, v3, v5}, Lthi;-><init>(Luji;Lt9i;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v3, v5}, Lqii;->a(Lyji;Lt9i;)Lb9i;

    move-result-object v3

    move-object v4, v3

    :goto_2
    new-instance v10, Lj9i;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/m9;->k0()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    sget-object v2, Ld9i;->d:Ld9i;

    :goto_3
    move-object v5, v2

    goto :goto_4

    :cond_2
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "Unknown key status"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    sget-object v2, Ld9i;->c:Ld9i;

    goto :goto_3

    :cond_4
    sget-object v2, Ld9i;->b:Ld9i;

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n9;->c0()I

    move-result v2

    if-ne v6, v2, :cond_5

    move v7, v3

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    move v7, v2

    :goto_5
    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Lj9i;-><init>(Lb9i;Ld9i;IZLk9i;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/google/android/gms/internal/ads/n9;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n9;->b0()I

    move-result p0

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/ads/n9;
    .locals 0

    iget-object p0, p0, Ll9i;->a:Lcom/google/android/gms/internal/ads/n9;

    return-object p0
.end method

.method public final bridge synthetic d(I)Lnhi;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Lw8i;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x1

    instance-of v1, p1, Lbhi;

    if-eqz v1, :cond_f

    check-cast p1, Lbhi;

    invoke-virtual {p1, p2}, Lbhi;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ll9i;->a:Lcom/google/android/gms/internal/ads/n9;

    sget v3, Ly9i;->a:I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/n9;->c0()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/n9;->h0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v8, v0

    move v6, v5

    move v7, v6

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x3

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/m9;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/m9;->k0()I

    move-result v11

    if-ne v11, v10, :cond_0

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/m9;->j0()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/m9;->f0()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/ads/zzgtt;->zza:Lcom/google/android/gms/internal/ads/zzgtt;

    if-eq v10, v11, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/m9;->k0()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/m9;->b0()I

    move-result v10

    if-ne v10, v3, :cond_2

    if-nez v7, :cond_1

    move v7, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "keyset contains multiple primary keys"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/m9;->c0()Lcom/google/android/gms/internal/ads/j9;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/j9;->c0()Lcom/google/android/gms/internal/ads/zzgsn;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/ads/zzgsn;->zzd:Lcom/google/android/gms/internal/ads/zzgsn;

    if-eq v9, v10, :cond_3

    move v9, v5

    goto :goto_2

    :cond_3
    move v9, v0

    :goto_2
    and-int/2addr v8, v9

    add-int/2addr v6, v0

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/m9;->b0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "key %d has unknown status"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/m9;->b0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "key %d has unknown prefix"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/m9;->b0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "key %d has no key data"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-eqz v6, :cond_e

    if-nez v7, :cond_9

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    invoke-static {v1}, Lsji;->b(Ljava/lang/Class;)Loji;

    move-result-object v3

    :goto_4
    iget-object v4, p0, Ll9i;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/n9;->e0(I)Lcom/google/android/gms/internal/ads/m9;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/m9;->k0()I

    move-result v7

    if-ne v7, v10, :cond_c

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj9i;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lj9i;->zzb()Lb9i;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/m9;->b0()I

    move-result v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/n9;->c0()I

    move-result v8

    if-ne v7, v8, :cond_a

    invoke-virtual {v3, v4, v6}, Loji;->b(Lb9i;Lcom/google/android/gms/internal/ads/m9;)Loji;

    goto :goto_5

    :cond_a
    invoke-virtual {v3, v4, v6}, Loji;->a(Lb9i;Lcom/google/android/gms/internal/ads/m9;)Loji;

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/m9;->c0()Lcom/google/android/gms/internal/ads/j9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j9;->g0()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key parsing of key with index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and type_url "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed, unable to get primitive"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    add-int/2addr v5, v0

    goto :goto_4

    :cond_d
    invoke-virtual {v3}, Loji;->c()Lsji;

    move-result-object v0

    iget-object p0, p0, Ll9i;->c:Lxhi;

    new-instance v2, Lf9i;

    invoke-direct {v2, p1, v1}, Lf9i;-><init>(Lbhi;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, p0, v2, p2}, Lbhi;->c(Lsji;Lxhi;Lf9i;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "keyset must contain at least one ENABLED key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Currently only subclasses of InternalConfiguration are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    sget v0, Ly9i;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/p9;->b0()Lxoi;

    move-result-object v0

    iget-object p0, p0, Ll9i;->a:Lcom/google/android/gms/internal/ads/n9;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n9;->c0()I

    move-result v1

    invoke-virtual {v0, v1}, Lxoi;->w(I)Lxoi;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n9;->h0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/m9;

    invoke-static {}, Lcom/google/android/gms/internal/ads/o9;->b0()Lyoi;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/m9;->c0()Lcom/google/android/gms/internal/ads/j9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/j9;->g0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lyoi;->x(Ljava/lang/String;)Lyoi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/m9;->k0()I

    move-result v3

    invoke-virtual {v2, v3}, Lyoi;->y(I)Lyoi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/m9;->f0()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lyoi;->w(Lcom/google/android/gms/internal/ads/zzgtt;)Lyoi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/m9;->b0()I

    move-result v1

    invoke-virtual {v2, v1}, Lyoi;->v(I)Lyoi;

    invoke-virtual {v2}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/o9;

    invoke-virtual {v0, v1}, Lxoi;->v(Lcom/google/android/gms/internal/ads/o9;)Lxoi;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/p9;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic zze()Lnhi;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
