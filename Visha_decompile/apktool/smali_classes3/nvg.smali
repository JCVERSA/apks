.class public final Lnvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmrh;


# instance fields
.field public final b:Lpug;

.field public final c:Lcom/google/android/gms/internal/ads/x4;


# direct methods
.method public constructor <init>(Lpug;Lcom/google/android/gms/internal/ads/x4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnvg;->b:Lpug;

    iput-object p2, p0, Lnvg;->c:Lcom/google/android/gms/internal/ads/x4;

    return-void
.end method


# virtual methods
.method public final h(Lcom/google/android/gms/internal/ads/zzffn;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lcye;->i6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzffn;->zzd:Lcom/google/android/gms/internal/ads/zzffn;

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lnvg;->b:Lpug;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lpug;->g(J)V

    return-void

    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzffn;->zzA:Lcom/google/android/gms/internal/ads/zzffn;

    if-eq p2, p1, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzffn;->zzc:Lcom/google/android/gms/internal/ads/zzffn;

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lnvg;->b:Lpug;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p2

    invoke-interface {p2}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lpug;->h(J)V

    iget-object p0, p0, Lnvg;->c:Lcom/google/android/gms/internal/ads/x4;

    invoke-virtual {p1}, Lpug;->d()J

    move-result-wide p1

    new-instance v0, Lsug;

    invoke-direct {v0, p0, p1, p2}, Lsug;-><init>(Lcom/google/android/gms/internal/ads/x4;J)V

    iget-object p0, p0, Lvug;->b:Llug;

    invoke-virtual {p0, v0}, Llug;->a(Lpqh;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/ads/zzffn;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object p2, Lcye;->i6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p3

    invoke-virtual {p3, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzffn;->zzd:Lcom/google/android/gms/internal/ads/zzffn;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lnvg;->b:Lpug;

    invoke-virtual {p0}, Lpug;->c()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide p1

    invoke-virtual {p0}, Lpug;->c()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lpug;->f(J)V

    :cond_0
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzffn;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/ads/zzffn;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lcye;->i6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzffn;->zzd:Lcom/google/android/gms/internal/ads/zzffn;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lnvg;->b:Lpug;

    invoke-virtual {p0}, Lpug;->c()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide p1

    invoke-virtual {p0}, Lpug;->c()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lpug;->f(J)V

    :cond_0
    return-void
.end method
