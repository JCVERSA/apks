.class public final Lcom/google/android/gms/internal/ads/la;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcui;


# instance fields
.field public final a:Lrti;

.field public final b:Lpui;

.field public final c:Z

.field public final d:Lfsi;


# direct methods
.method public constructor <init>(Lpui;Lfsi;Lrti;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/la;->b:Lpui;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/la;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/la;->d:Lfsi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/la;->a:Lrti;

    return-void
.end method

.method public static h(Lpui;Lfsi;Lrti;)Lcom/google/android/gms/internal/ads/la;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/la;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/la;-><init>(Lpui;Lfsi;Lrti;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/la;->b:Lpui;

    invoke-virtual {v0, p1}, Lpui;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/la;->d:Lfsi;

    invoke-virtual {p0, p1}, Lfsi;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/la;->b:Lpui;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/pa;->A(Lpui;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/la;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/la;->d:Lfsi;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/pa;->z(Lfsi;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Lbvi;)V
    .locals 0

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ljava/lang/Object;[BIILmri;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/ads/ia;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    invoke-static {}, Lqui;->c()Lqui;

    move-result-object p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lqui;->f()Lqui;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    :goto_0
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Ljava/lang/Object;Laui;Lesi;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/la;->b:Lpui;

    invoke-virtual {p0, p1}, Lpui;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    check-cast p2, Lcom/google/android/gms/internal/ads/ia;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/la;->c:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    invoke-virtual {v0}, Lqui;->b()I

    move-result v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/la;->c:Z

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/la;->c:Z

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/la;->a:Lrti;

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->K()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lrti;->e()Lqti;

    move-result-object p0

    invoke-interface {p0}, Lqti;->D()Lrti;

    move-result-object p0

    return-object p0
.end method
