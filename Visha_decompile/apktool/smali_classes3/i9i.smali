.class public final Li9i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lxhi;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li9i;->a:Ljava/util/List;

    sget-object v0, Lxhi;->b:Lxhi;

    iput-object v0, p0, Li9i;->b:Lxhi;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li9i;->c:Z

    return-void
.end method

.method public static bridge synthetic c(Li9i;)V
    .locals 0

    invoke-virtual {p0}, Li9i;->d()V

    return-void
.end method


# virtual methods
.method public final a(Lg9i;)Li9i;
    .locals 1

    invoke-static {p1}, Lg9i;->f(Lg9i;)Li9i;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lg9i;->j(Lg9i;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li9i;->d()V

    :cond_0
    invoke-static {p1, p0}, Lg9i;->h(Lg9i;Li9i;)V

    iget-object v0, p0, Li9i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Entry has already been added to a KeysetHandle.Builder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ll9i;
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-boolean v2, v0, Li9i;->c:Z

    if-nez v2, :cond_14

    iput-boolean v1, v0, Li9i;->c:Z

    iget-object v2, v0, Li9i;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/ads/n9;->d0()Lroi;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg9i;

    invoke-static {v6}, Lg9i;->e(Lg9i;)Lh9i;

    move-result-object v6

    invoke-static {}, Lh9i;->a()Lh9i;

    move-result-object v8

    if-ne v6, v8, :cond_1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg9i;

    invoke-static {v6}, Lg9i;->e(Lg9i;)Lh9i;

    move-result-object v6

    invoke-static {}, Lh9i;->a()Lh9i;

    move-result-object v8

    if-ne v6, v8, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    move v6, v7

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg9i;

    invoke-static {v9}, Lg9i;->b(Lg9i;)Ld9i;

    invoke-static {v9}, Lg9i;->e(Lg9i;)Lh9i;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-static {v9}, Lg9i;->e(Lg9i;)Lh9i;

    move-result-object v10

    invoke-static {}, Lh9i;->a()Lh9i;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x4

    if-ne v10, v11, :cond_5

    move v10, v5

    :cond_3
    if-eqz v10, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_4
    sget v10, Lfki;->a:I

    move v10, v5

    :goto_3
    if-nez v10, :cond_3

    invoke-static {v13}, Lxji;->b(I)[B

    move-result-object v10

    aget-byte v11, v10, v5

    and-int/lit16 v11, v11, 0xff

    aget-byte v14, v10, v1

    and-int/lit16 v14, v14, 0xff

    const/4 v15, 0x2

    aget-byte v15, v10, v15

    and-int/lit16 v15, v15, 0xff

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v11, v11, 0x18

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v11, v14

    shl-int/lit8 v14, v15, 0x8

    or-int/2addr v11, v14

    or-int/2addr v10, v11

    goto :goto_3

    :cond_5
    invoke-static {v9}, Lg9i;->e(Lg9i;)Lh9i;

    move v10, v5

    :cond_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lg9i;->a(Lg9i;)Lb9i;

    invoke-static {v9}, Lg9i;->g(Lg9i;)Lp9i;

    move-result-object v14

    invoke-virtual {v14}, Lp9i;->a()Z

    move-result v14

    if-eq v1, v14, :cond_7

    const/4 v14, 0x0

    goto :goto_4

    :cond_7
    move-object v14, v11

    :goto_4
    invoke-static {}, Lfii;->b()Lfii;

    move-result-object v15

    invoke-static {v9}, Lg9i;->g(Lg9i;)Lp9i;

    move-result-object v1

    invoke-virtual {v15, v1, v14}, Lfii;->a(Lp9i;Ljava/lang/Integer;)Lb9i;

    move-result-object v1

    new-instance v15, Lj9i;

    invoke-static {v9}, Lg9i;->b(Lg9i;)Ld9i;

    move-result-object v16

    invoke-static {v9}, Lg9i;->j(Lg9i;)Z

    move-result v18

    const/16 v19, 0x0

    move-object v14, v15

    move-object v5, v15

    move-object v15, v1

    move/from16 v17, v10

    invoke-direct/range {v14 .. v19}, Lj9i;-><init>(Lb9i;Ld9i;IZLk9i;)V

    invoke-static {v9}, Lg9i;->b(Lg9i;)Ld9i;

    move-result-object v14

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v15

    const-class v12, Luji;

    invoke-static {}, Lt9i;->a()Lt9i;

    move-result-object v13

    invoke-virtual {v15, v1, v12, v13}, Lqii;->d(Lb9i;Ljava/lang/Class;Lt9i;)Lyji;

    move-result-object v1

    check-cast v1, Luji;

    invoke-virtual {v1}, Luji;->e()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v10, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Wrong ID set for key with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_5
    sget-object v12, Ld9i;->b:Ld9i;

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x3

    goto :goto_6

    :cond_a
    sget-object v13, Ld9i;->c:Ld9i;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x4

    goto :goto_6

    :cond_b
    sget-object v13, Ld9i;->d:Ld9i;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/4 v13, 0x5

    :goto_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/m9;->d0()Lsoi;

    move-result-object v14

    invoke-static {}, Lcom/google/android/gms/internal/ads/j9;->b0()Lkoi;

    move-result-object v15

    invoke-virtual {v1}, Luji;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lkoi;->w(Ljava/lang/String;)Lkoi;

    invoke-virtual {v1}, Luji;->d()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v7

    invoke-virtual {v15, v7}, Lkoi;->x(Lcom/google/android/gms/internal/ads/zzgwn;)Lkoi;

    invoke-virtual {v1}, Luji;->b()Lcom/google/android/gms/internal/ads/zzgsn;

    move-result-object v7

    invoke-virtual {v15, v7}, Lkoi;->v(Lcom/google/android/gms/internal/ads/zzgsn;)Lkoi;

    invoke-virtual {v14, v15}, Lsoi;->v(Lkoi;)Lsoi;

    invoke-virtual {v14, v13}, Lsoi;->y(I)Lsoi;

    invoke-virtual {v14, v10}, Lsoi;->w(I)Lsoi;

    invoke-virtual {v1}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v1

    invoke-virtual {v14, v1}, Lsoi;->x(Lcom/google/android/gms/internal/ads/zzgtt;)Lsoi;

    invoke-virtual {v14}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/m9;

    invoke-virtual {v3, v1}, Lroi;->v(Lcom/google/android/gms/internal/ads/m9;)Lroi;

    invoke-static {v9}, Lg9i;->j(Lg9i;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v8, :cond_d

    invoke-static {v9}, Lg9i;->b(Lg9i;)Ld9i;

    move-result-object v1

    if-ne v1, v12, :cond_c

    move-object v8, v11

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primary key is not enabled"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Two primaries were set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_7
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown key status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is used twice in the keyset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No ID was set (with withFixedId or withRandomId)"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lroi;->w(I)Lroi;

    invoke-virtual {v3}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/n9;

    invoke-static {v1}, Ll9i;->f(Lcom/google/android/gms/internal/ads/n9;)V

    iget-object v0, v0, Li9i;->b:Lxhi;

    new-instance v2, Ll9i;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v4, v0, v3}, Ll9i;-><init>(Lcom/google/android/gms/internal/ads/n9;Ljava/util/List;Lxhi;Lk9i;)V

    return-object v2

    :cond_13
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No primary was set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "KeysetHandle.Builder#build must only be called once"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 2

    iget-object p0, p0, Li9i;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg9i;->i(Lg9i;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
