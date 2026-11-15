.class public final Lcom/google/android/gms/measurement/internal/zzoo;
.super Lcom/google/android/gms/measurement/internal/zznr;
.source "source.java"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznv;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznr;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzd()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzk(I)Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static zza(Ljava/util/List;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzh;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzb()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private final zza(Ljava/util/Map;Z)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 25
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 28
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 29
    :cond_2
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_3

    .line 30
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 31
    :cond_3
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    if-eqz p2, :cond_0

    .line 32
    check-cast v3, Ljava/util/ArrayList;

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/util/Map;

    .line 35
    invoke-direct {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/Map;Z)Landroid/os/Bundle;

    move-result-object v8

    .line 36
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_4
    new-array v3, v6, [Landroid/os/Parcelable;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    .line 38
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 39
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzh()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 189
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BuilderT::",
            "Lcom/google/android/gms/internal/measurement/zzlb;",
            ">(TBuilderT;[B)TBuilderT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkb;
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjg;->zza()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zza([BLcom/google/android/gms/internal/measurement/zzjg;)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p0

    return-object p0

    .line 192
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zza([B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p0

    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    return-object p0
.end method

.method private static zza(ZZZ)Ljava/lang/String;
    .locals 1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 391
    const-string p0, "Dynamic "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    .line 392
    const-string p0, "Sequence "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    .line 393
    const-string p0, "Session-Scoped "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/util/BitSet;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    const-wide/16 v5, 0x0

    move v7, v3

    :goto_1
    if-ge v7, v1, :cond_1

    shl-int/lit8 v8, v4, 0x6

    add-int/2addr v8, v7

    .line 427
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 428
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v7

    or-long/2addr v5, v8

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 429
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 565
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method private static zza(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 458
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 459
    aget-object v2, p1, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 460
    aget-object v3, v2, v0

    .line 461
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    .line 462
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 463
    invoke-static {p0, v2, v3, p3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 446
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 447
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 448
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 449
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object p1

    .line 450
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 451
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    goto :goto_2

    .line 452
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 453
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    goto :goto_2

    .line 454
    :cond_3
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 455
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    :cond_4
    :goto_2
    if-ltz v1, :cond_5

    .line 456
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    return-void

    .line 457
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 549
    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfo$zzc;)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    .line 517
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 518
    const-string v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 521
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    const-string v1, "param_name"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 524
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzj()Z

    move-result v0

    const-string v1, "}\n"

    if-eqz v0, :cond_8

    add-int/lit8 v0, p2, 0x1

    .line 525
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzfo$zzf;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 526
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 527
    const-string v3, "string_filter"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v3, " {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzj()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 530
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "match_type"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 531
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzi()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 532
    const-string v3, "expression"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 533
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzh()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 534
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzg()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 535
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zza()I

    move-result v3

    if-lez v3, :cond_7

    add-int/lit8 v3, p2, 0x2

    .line 536
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 537
    const-string v3, "expression_list {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzf()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x3

    .line 539
    invoke-static {p1, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 540
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 542
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_7
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 544
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzh()Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p2, 0x1

    .line 546
    const-string v2, "number_filter"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    move-result-object p3

    invoke-static {p1, v0, v2, p3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfo$zzd;)V

    .line 547
    :cond_9
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 548
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfo$zzd;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 550
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 551
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string p2, " {\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzh()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 554
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "comparison_type"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 555
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzj()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 556
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzg()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "match_as_float"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 557
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzi()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 558
    const-string p2, "comparison_value"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 559
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzl()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 560
    const-string p2, "min_comparison_value"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 561
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzk()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 562
    const-string p2, "max_comparison_value"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zze()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 563
    :cond_5
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 564
    const-string p1, "}\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzm;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 464
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 465
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string p2, " {\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzb()I

    move-result p2

    const/16 v0, 0xa

    const/4 v1, 0x4

    const-string v2, ", "

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 468
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 469
    const-string p2, "results: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzi()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_1

    .line 471
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzd()I

    move-result p2

    if-eqz p2, :cond_6

    .line 475
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 476
    const-string p2, "status: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzk()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_4

    .line 478
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_1

    .line 480
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    :cond_6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zza()I

    move-result p2

    const-string v0, "}\n"

    const/4 v4, 0x0

    if-eqz p2, :cond_b

    .line 482
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 483
    const-string p2, "dynamic_filter_timestamps: {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzh()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v5, v3

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfy$zze;

    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_7

    .line 485
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zze;->zzf()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zze;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_8
    move-object v5, v4

    :goto_3
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 487
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zze;->zze()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zze;->zzb()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_4

    :cond_9
    move-object v5, v4

    :goto_4
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_2

    .line 489
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_b
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzc()I

    move-result p2

    if-eqz p2, :cond_11

    .line 491
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 492
    const-string p2, "sequence_filter_timestamps: {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzj()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v3

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    add-int/lit8 v5, p3, 0x1

    if-eqz p3, :cond_c

    .line 494
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzf()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_6

    :cond_d
    move-object p3, v4

    :goto_6
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": ["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zze()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v1, v3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    if-eqz v1, :cond_e

    .line 497
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_e
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v8

    goto :goto_7

    .line 499
    :cond_f
    const-string p3, "]"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p3, v5

    goto :goto_5

    .line 500
    :cond_10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_11
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 502
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 567
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 568
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 571
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzh;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 503
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    if-eqz v0, :cond_1

    .line 504
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 505
    const-string v1, "param {\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzm()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 507
    :goto_1
    const-string v3, "name"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 508
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 509
    :goto_2
    const-string v3, "string_value"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 510
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    const-string v3, "int_value"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 511
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 512
    :cond_5
    const-string v1, "double_value"

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 513
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzc()I

    move-result v1

    if-lez v1, :cond_6

    .line 514
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzi()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 515
    :cond_6
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 516
    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    return-void
.end method

.method static zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)Z
    .locals 0

    .line 608
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static zza(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 611
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x40

    .line 612
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzc()I

    move-result p1

    if-lez p1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzi()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static zzb(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 11
    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zzb(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzh;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    if-eqz v1, :cond_0

    .line 24
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzi()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 32
    :cond_4
    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/Bundle;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic g_()Lcom/google/android/gms/measurement/internal/zzoo;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method final zza(Ljava/lang/String;)J
    .locals 2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 4
    :cond_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([B)J

    move-result-wide v0

    return-wide v0
.end method

.method final zza([B)J
    .locals 2

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 7
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzos;->zzu()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Failed to get MD5"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic zza()Landroid/content/Context;
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 41
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 42
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 45
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 47
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzbc;)Lcom/google/android/gms/internal/measurement/zzfy$zzf;
    .locals 5

    .line 173
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    move-result-object v0

    .line 174
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbe;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    .line 176
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzbe;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 177
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzdi:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    const-string v2, "_o"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbe;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 182
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:Ljava/lang/String;

    .line 184
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 186
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 187
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzad;)Lcom/google/android/gms/measurement/internal/zzbf;
    .locals 8

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzad;->zzc()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/Map;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 50
    const-string v1, "_o"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    goto :goto_1

    .line 53
    :cond_0
    const-string v1, "app"

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzad;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzji;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzad;->zzb()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v3, v1

    .line 55
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbf;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzad;->zza()J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    return-object v1
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzno;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzbg:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Ljava/util/HashSet;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "duplicate element: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzo()Lcom/google/android/gms/measurement/internal/zznu;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzns;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzaz:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, p1, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "."

    if-nez v7, :cond_3

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbh;->zzba:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, p1, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzba:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, p1, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 68
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzx()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gmp_app_id"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 70
    const-string v3, "gmp_version"

    .line 71
    const-string v4, "106000"

    .line 72
    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 73
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzu()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzck:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, p1, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 76
    const-string v3, ""

    .line 77
    :cond_4
    const-string v4, "app_instance_id"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 78
    const-string v3, "rdid"

    .line 79
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzz()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 81
    const-string v3, "bundle_id"

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 82
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzji;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    move-object v3, v4

    .line 85
    :cond_5
    const-string v4, "app_event_name"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 86
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    const-string v4, "app_version"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 88
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzy()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    invoke-virtual {v4, p1, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 91
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 92
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_6

    .line 93
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 94
    :cond_6
    const-string v4, "os_version"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 95
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzc()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 96
    const-string v4, "timestamp"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 97
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzad()Z

    move-result v3

    const-string v4, "1"

    if-eqz v3, :cond_7

    .line 98
    const-string v3, "lat"

    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 99
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string v5, "privacy_sandbox_version"

    invoke-static {v6, v5, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 101
    const-string v3, "trigger_uri_source"

    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 102
    const-string v3, "trigger_uri_timestamp"

    .line 103
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-static {v6, v3, v5, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 105
    const-string v3, "request_uuid"

    invoke-static {v6, v3, p4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 106
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzf()Ljava/util/List;

    move-result-object p3

    .line 107
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 108
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 109
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 111
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 113
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzb()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 114
    :cond_a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzn()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 115
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 116
    :cond_b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 117
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p3

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzbf:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p3, p1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "\\|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 119
    invoke-static {v6, p3, p4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V

    .line 120
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzab()Ljava/util/List;

    move-result-object p3

    .line 121
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 122
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_d
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    .line 123
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzi()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 125
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zza()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 126
    :cond_e
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzj()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 127
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzb()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 128
    :cond_f
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzm()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 129
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 130
    :cond_10
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzk()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 131
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 132
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzbe:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p3, p1, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {v6, p1, p4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V

    .line 134
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzac()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_4

    :cond_12
    const-string v4, "0"

    .line 135
    :goto_4
    const-string p1, "dma"

    invoke-static {v6, p1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 136
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    .line 137
    const-string p1, "dma_cps"

    .line 138
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzw()Ljava/lang/String;

    move-result-object p3

    .line 139
    invoke-static {v6, p1, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 140
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzbh;->zzcm:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzae()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 141
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzfy$zza;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_14

    .line 143
    const-string p2, "dl_gclid"

    .line 144
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzh()Ljava/lang/String;

    move-result-object p3

    .line 145
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 146
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_15

    .line 147
    const-string p2, "dl_gbraid"

    .line 148
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzg()Ljava/lang/String;

    move-result-object p3

    .line 149
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 150
    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzf()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_16

    .line 151
    const-string p2, "dl_gs"

    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzf()Ljava/lang/String;

    move-result-object p3

    .line 153
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 154
    :cond_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zza()J

    move-result-wide p2

    const-wide/16 v3, 0x0

    cmp-long p2, p2, v3

    if-lez p2, :cond_17

    .line 155
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zza()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 156
    const-string p3, "dl_ss_ts"

    invoke-static {v6, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 157
    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzk()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_18

    .line 158
    const-string p2, "mr_gclid"

    .line 159
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzk()Ljava/lang/String;

    move-result-object p3

    .line 160
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 161
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzj()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_19

    .line 162
    const-string p2, "mr_gbraid"

    .line 163
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzj()Ljava/lang/String;

    move-result-object p3

    .line 164
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 165
    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzi()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1a

    .line 166
    const-string p2, "mr_gs"

    .line 167
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzi()Ljava/lang/String;

    move-result-object p3

    .line 168
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 169
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzb()J

    move-result-wide p2

    cmp-long p2, p2, v3

    if-lez p2, :cond_1b

    .line 170
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzb()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 171
    const-string p2, "mr_click_ts"

    invoke-static {v6, p2, p1, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 172
    :cond_1b
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzno;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzno;-><init>(Ljava/lang/String;JI)V

    return-object p1

    :cond_1c
    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfo$zzb;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 370
    const-string p1, "null"

    return-object p1

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    const-string v1, "\nevent_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzl()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    const-string v3, "event_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 377
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzh()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzi()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzj()Z

    move-result v4

    .line 378
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 380
    const-string v3, "filter_type"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 381
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzk()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 382
    const-string v1, "event_count_filter"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zze()Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfo$zzd;)V

    .line 383
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zza()I

    move-result v1

    if-lez v1, :cond_4

    .line 384
    const-string v1, "  filters {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzg()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    const/4 v3, 0x2

    .line 386
    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfo$zzc;)V

    goto :goto_0

    .line 387
    :cond_4
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 388
    const-string p1, "}\n}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfo$zze;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 395
    const-string p1, "null"

    return-object p1

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzi()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 399
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    const-string v3, "property_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 402
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzf()Z

    move-result v1

    .line 403
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzg()Z

    move-result v3

    .line 404
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzh()Z

    move-result v4

    .line 405
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 407
    const-string v3, "filter_type"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x1

    .line 408
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzb()Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfo$zzc;)V

    .line 409
    const-string p1, "}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfy$zzj;)Ljava/lang/String;
    .locals 12

    if-nez p1, :cond_0

    .line 194
    const-string p1, ""

    return-object p1

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string v1, "\nbatch {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpu;->zza()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zza()I

    move-result v1

    if-lez v1, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzh()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    const-string v2, "upload_subdomain"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 203
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzg()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    const-string v2, "sgtm_join_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 205
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzf()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 206
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 207
    const-string v3, "bundle {\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbp()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 209
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "protocol_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 210
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzbw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 212
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbs()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 213
    const-string v3, "session_stitching_token"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzao()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 214
    :cond_5
    const-string v3, "platform"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzam()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbk()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 216
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzn()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "gmp_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 217
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbx()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 218
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "uploading_gmp_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 219
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbi()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 220
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzl()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "dynamite_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbb()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 222
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzj()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "config_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 223
    :cond_9
    const-string v3, "gmp_app_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 224
    const-string v3, "admob_app_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 225
    const-string v3, "app_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 226
    const-string v3, "app_version"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzac()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzay()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 228
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "app_version_major"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 229
    :cond_a
    const-string v3, "firebase_instance_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzai()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 230
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbg()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 231
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzk()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "dev_cert_hash"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 232
    :cond_b
    const-string v3, "app_store"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzab()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbw()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 234
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "upload_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 235
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbt()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzq()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "start_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 237
    :cond_d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbj()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 238
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzm()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "end_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 239
    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbo()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 240
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 241
    const-string v4, "previous_bundle_start_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 242
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbn()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 243
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzo()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 244
    const-string v4, "previous_bundle_end_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 245
    :cond_10
    const-string v3, "app_instance_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaa()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 246
    const-string v3, "resettable_device_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzan()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 247
    const-string v3, "ds_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzah()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbm()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 249
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzav()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "limited_ad_tracking"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 250
    :cond_11
    const-string v3, "os_version"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzal()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 251
    const-string v3, "device_model"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 252
    const-string v3, "user_default_language"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzap()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 253
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbv()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 254
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzh()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "time_zone_offset_minutes"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 255
    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzba()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 256
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bundle_sequential_index"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 257
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpu;->zza()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 258
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 259
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 260
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbf()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 261
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "delivery_index"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 262
    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbr()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 263
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaw()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "service_upload"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 264
    :cond_15
    const-string v3, "health_monitor"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzak()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbq()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 266
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzg()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "retry_counter"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 267
    :cond_16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbd()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 268
    const-string v3, "consent_signals"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzae()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 269
    :cond_17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbl()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 270
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzau()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "is_dma_region"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 271
    :cond_18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbe()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 272
    const-string v3, "core_platform_services"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaf()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 273
    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbc()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 274
    const-string v3, "consent_diagnostics"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzad()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 275
    :cond_1a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbu()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 276
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzr()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "target_os_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 277
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v3

    const-string v4, "}\n"

    const/4 v5, 0x2

    if-eqz v3, :cond_1c

    .line 278
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 279
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "ad_services_version"

    invoke-static {v0, v2, v6, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaz()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 281
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzv()Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 282
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 283
    const-string v6, "attribution_eligibility_status {\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzf()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "eligible"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 285
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzh()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 286
    const-string v7, "no_access_adservices_attribution_permission"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzi()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "pre_r"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 288
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzj()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "r_extensions_too_old"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 290
    const-string v7, "adservices_extension_too_old"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzd()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "ad_storage_not_allowed"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzg()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 293
    const-string v6, "measurement_manager_disabled"

    invoke-static {v0, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 294
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 295
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zza()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzcu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 297
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzax()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 298
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzu()Lcom/google/android/gms/internal/measurement/zzfy$zza;

    move-result-object v3

    .line 299
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 300
    const-string v6, "ad_campaign_info {\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzn()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 302
    const-string v6, "deep_link_gclid"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzh()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 303
    :cond_1d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzm()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 304
    const-string v6, "deep_link_gbraid"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 305
    :cond_1e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzl()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 306
    const-string v6, "deep_link_gad_source"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzf()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 307
    :cond_1f
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzo()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 308
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zza()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 309
    const-string v7, "deep_link_session_millis"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 310
    :cond_20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzs()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 311
    const-string v6, "market_referrer_gclid"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzk()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 312
    :cond_21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzr()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 313
    const-string v6, "market_referrer_gbraid"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzj()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 314
    :cond_22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzq()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 315
    const-string v6, "market_referrer_gad_source"

    .line 316
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzi()Ljava/lang/String;

    move-result-object v7

    .line 317
    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 318
    :cond_23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzp()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 319
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzb()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 320
    const-string v6, "market_referrer_click_millis"

    invoke-static {v0, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 321
    :cond_24
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 322
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzas()Ljava/util/List;

    move-result-object v3

    .line 324
    const-string v6, "name"

    if-eqz v3, :cond_2a

    .line 325
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    if-eqz v7, :cond_26

    .line 326
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 327
    const-string v8, "user_property {\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzl()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_27

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzd()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :cond_27
    move-object v8, v9

    .line 329
    :goto_2
    const-string v10, "set_timestamp_millis"

    invoke-static {v0, v5, v10, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 331
    invoke-static {v0, v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 332
    const-string v8, "string_value"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v8, v10}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 333
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzk()Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_3

    :cond_28
    move-object v8, v9

    :goto_3
    const-string v10, "int_value"

    invoke-static {v0, v5, v10, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 334
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzi()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zza()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 335
    :cond_29
    const-string v7, "double_value"

    invoke-static {v0, v5, v7, v9}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 336
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 337
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 338
    :cond_2a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaq()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    if-eqz v3, :cond_2f

    .line 339
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfy$zzd;

    if-eqz v7, :cond_2b

    .line 340
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 341
    const-string v8, "audience_membership {\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zzg()Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 343
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zza()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "audience_id"

    invoke-static {v0, v5, v9, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 344
    :cond_2c
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zzh()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 345
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zzf()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "new_audience"

    invoke-static {v0, v5, v9, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 346
    :cond_2d
    const-string v8, "current_data"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zzd()Lcom/google/android/gms/internal/measurement/zzfy$zzm;

    move-result-object v9

    invoke-static {v0, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzm;)V

    .line 347
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zzi()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 348
    const-string v8, "previous_data"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzm;

    move-result-object v7

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzm;)V

    .line 349
    :cond_2e
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 350
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 351
    :cond_2f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzar()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 352
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    if-eqz v3, :cond_30

    .line 353
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 354
    const-string v7, "event {\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 356
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzk()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 357
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzd()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "timestamp_millis"

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 358
    :cond_31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzj()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 359
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzc()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "previous_timestamp_millis"

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 360
    :cond_32
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzi()Z

    move-result v7

    if-eqz v7, :cond_33

    .line 361
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zza()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "count"

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 362
    :cond_33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzb()I

    move-result v7

    if-eqz v7, :cond_34

    .line 363
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzh()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v5, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 364
    :cond_34
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 365
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 366
    :cond_35
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 367
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 368
    :cond_36
    const-string p1, "} // End-of-batch\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 412
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 413
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Ignoring negative bit index to be cleared"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    .line 416
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 419
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Ignoring bit index greater than bitSet size"

    invoke-virtual {v1, v3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x40

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p2

    not-long v4, v4

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 422
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    move v6, p2

    move p2, p1

    move p1, v6

    if-ltz p1, :cond_3

    .line 423
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 424
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zza(Landroid/os/Bundle;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 431
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 432
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 433
    instance-of v4, v3, [Landroid/os/Parcelable;

    if-nez v4, :cond_2

    instance-of v5, v3, Ljava/util/ArrayList;

    if-nez v5, :cond_2

    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_0

    .line 434
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_0

    .line 435
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 436
    check-cast v3, [Landroid/os/Parcelable;

    array-length v4, v3

    move v7, v6

    :goto_2
    if-ge v7, v4, :cond_7

    aget-object v8, v3, v7

    .line 437
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_3

    .line 438
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 439
    :cond_4
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 440
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v6

    :cond_5
    :goto_3
    if-ge v7, v4, :cond_7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 441
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_5

    .line 442
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 443
    :cond_6
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_7

    .line 444
    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_7
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;Ljava/lang/Object;)V
    .locals 10

    .line 572
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    .line 574
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 575
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    return-void

    .line 576
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 577
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    return-void

    .line 578
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 579
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    return-void

    .line 580
    :cond_2
    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 581
    check-cast p2, [Landroid/os/Bundle;

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 583
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, p2, v2

    if-eqz v3, :cond_7

    .line 584
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v4

    .line 585
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 586
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v7

    .line 587
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 588
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_4

    .line 589
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    goto :goto_2

    .line 590
    :cond_4
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 591
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    goto :goto_2

    .line 592
    :cond_5
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_3

    .line 593
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    .line 594
    :goto_2
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    goto :goto_1

    .line 595
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza()I

    move-result v3

    if-lez v3, :cond_7

    .line 596
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    return-void

    .line 598
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;Ljava/lang/Object;)V
    .locals 2

    .line 599
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zza()Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    .line 601
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 602
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    return-void

    .line 603
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 604
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    return-void

    .line 605
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 606
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    return-void

    .line 607
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzb([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 17
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    throw p1
.end method

.method protected final zzc()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method final zzc([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 5
    new-array v2, v2, [B

    .line 6
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    throw p1
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzag;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzaz;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzt;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzg()Lcom/google/android/gms/measurement/internal/zzt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzgh;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzgo;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzha;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzhv;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/measurement/internal/zzhl;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzmw;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzn()Lcom/google/android/gms/measurement/internal/zzmw;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zznu;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzo()Lcom/google/android/gms/measurement/internal/zznu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzos;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzr()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzr()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic zzs()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzs()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic zzt()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method final zzu()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbh;->zza(Landroid/content/Context;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzar:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/lang/String;

    .line 64
    .line 65
    const-string v6, "measurement.id."

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-lt v4, v3, :cond_1

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const-string v5, "Too many experiment IDs. Number of IDs"

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catch_0
    move-exception v4

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    const-string v6, "Experiment ID NumberFormatException"

    .line 130
    .line 131
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    return-object v1

    .line 142
    :cond_3
    return-object v2

    .line 143
    :cond_4
    :goto_2
    return-object v1
.end method
