.class public abstract Lxqe;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string p4, "0.460000000"

    invoke-static {}, Lcom/google/android/gms/internal/ads/x;->b0()Lnpe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnpe;->w(Ljava/lang/String;)Lnpe;

    invoke-virtual {v0, p4}, Lnpe;->v(Ljava/lang/String;)Lnpe;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnpe;->x(Ljava/lang/String;)Lnpe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/16 p1, 0x3e8

    div-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lnpe;->z(J)Lnpe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    div-long/2addr p3, p1

    invoke-virtual {v0, p3, p4}, Lnpe;->y(J)Lnpe;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lnpe;->A(J)Lnpe;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const-wide/16 p0, -0x1

    :try_start_2
    invoke-virtual {v0, p0, p1}, Lnpe;->A(J)Lnpe;

    :goto_0
    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/x;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aa;->l()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/b0;->a([BLjava/lang/String;)Lrpe;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lrpe;->y(I)Lrpe;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lrpe;->x(I)Lrpe;

    invoke-virtual {p0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/a0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aa;->l()[B

    move-result-object p0

    const/16 p1, 0xb

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    const/4 p0, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
