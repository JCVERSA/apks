.class public final Ldzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lebg;


# instance fields
.field public final a:Lhmh;

.field public final b:Lcom/google/android/gms/internal/ads/zzbqx;

.field public final c:Lcom/google/android/gms/ads/AdFormat;

.field public d:Lb0g;


# direct methods
.method public constructor <init>(Lhmh;Lcom/google/android/gms/internal/ads/zzbqx;Lcom/google/android/gms/ads/AdFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldzg;->d:Lb0g;

    iput-object p1, p0, Ldzg;->a:Lhmh;

    iput-object p2, p0, Ldzg;->b:Lcom/google/android/gms/internal/ads/zzbqx;

    iput-object p3, p0, Ldzg;->c:Lcom/google/android/gms/ads/AdFormat;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lwzf;)V
    .locals 1

    :try_start_0
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    iget-object p1, p0, Ldzg;->c:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eq p1, p3, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p3, 0x5

    if-ne p1, p3, :cond_4

    iget-object p1, p0, Ldzg;->b:Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqx;->zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Ldzg;->b:Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqx;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ldzg;->b:Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqx;->zzs(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Ldzg;->d:Lb0g;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Lcye;->I1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p3

    invoke-virtual {p3, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p0, p0, Ldzg;->a:Lhmh;

    iget p0, p0, Lhmh;->Y:I

    if-ne p0, v0, :cond_3

    invoke-virtual {p1}, Lb0g;->zza()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdfl;

    const-string p1, "Adapter failed to show."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdfl;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdfl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdfl;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final b(Lb0g;)V
    .locals 0

    iput-object p1, p0, Ldzg;->d:Lb0g;

    return-void
.end method

.method public final zza()Lhmh;
    .locals 0

    iget-object p0, p0, Ldzg;->a:Lhmh;

    return-object p0
.end method
