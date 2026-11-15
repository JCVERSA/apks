.class public abstract Liye;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a(Lqye;Lnye;[Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lqye;->e(Lnye;J[Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method
