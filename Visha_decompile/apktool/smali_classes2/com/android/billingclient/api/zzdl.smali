.class final Lcom/android/billingclient/api/zzdl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lidh;Lz2j;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "REQUEST_METADATA"

    invoke-virtual {p0}, Lplh;->b()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p0, "REQUEST_PARAMS"

    invoke-virtual {p1}, Lplh;->b()[B

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Lidh;
    .locals 0

    invoke-static {}, Lidh;->y()Lech;

    move-result-object p0

    const-string p1, "9.1.0"

    invoke-virtual {p0, p1}, Lech;->m(Ljava/lang/String;)Lech;

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lech;->n(I)Lech;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lech;->k(Ljava/lang/String;)Lech;

    invoke-virtual {p0, p3}, Lech;->l(Ljava/lang/String;)Lech;

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "DelegationApiParamsBuilder"

    const-string p2, "No version code is found!"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lech;->j(Ljava/lang/String;)Lech;

    :cond_0
    invoke-virtual {p0}, Lfhi;->f()Lkli;

    move-result-object p0

    check-cast p0, Lidh;

    return-object p0
.end method
