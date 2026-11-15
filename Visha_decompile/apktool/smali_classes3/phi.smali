.class public final Lphi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9i;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;

.field public final c:Lcom/google/android/gms/internal/ads/zzgsn;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lphi;->a:Ljava/lang/String;

    iput-object p2, p0, Lphi;->b:Ljava/lang/Class;

    iput-object p3, p0, Lphi;->c:Lcom/google/android/gms/internal/ads/zzgsn;

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)Lc9i;
    .locals 1

    new-instance v0, Lphi;

    invoke-direct {v0, p0, p1, p2, p3}, Lphi;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzgwn;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lphi;->c:Lcom/google/android/gms/internal/ads/zzgsn;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    iget-object v2, p0, Lphi;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v1, v3}, Luji;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Luji;

    move-result-object p1

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v0

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lqii;->a(Lyji;Lt9i;)Lb9i;

    move-result-object p1

    iget-object p0, p0, Lphi;->b:Ljava/lang/Class;

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lnii;->b(Lb9i;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/j9;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/k9;->b0()Lnoi;

    move-result-object v0

    iget-object p0, p0, Lphi;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lnoi;->w(Ljava/lang/String;)Lnoi;

    invoke-virtual {v0, p1}, Lnoi;->x(Lcom/google/android/gms/internal/ads/zzgwn;)Lnoi;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    invoke-virtual {v0, p0}, Lnoi;->v(Lcom/google/android/gms/internal/ads/zzgtt;)Lnoi;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/k9;

    invoke-static {p0}, Lvji;->a(Lcom/google/android/gms/internal/ads/k9;)Lvji;

    move-result-object p0

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object p1

    invoke-virtual {p1, p0}, Lqii;->b(Lyji;)Lp9i;

    move-result-object p0

    invoke-static {}, Lfii;->b()Lfii;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lfii;->a(Lp9i;Ljava/lang/Integer;)Lb9i;

    move-result-object p0

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object p1

    const-class v0, Luji;

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lqii;->d(Lb9i;Ljava/lang/Class;Lt9i;)Lyji;

    move-result-object p0

    check-cast p0, Luji;

    invoke-static {}, Lcom/google/android/gms/internal/ads/j9;->b0()Lkoi;

    move-result-object p1

    invoke-virtual {p0}, Luji;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkoi;->w(Ljava/lang/String;)Lkoi;

    invoke-virtual {p0}, Luji;->d()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkoi;->x(Lcom/google/android/gms/internal/ads/zzgwn;)Lkoi;

    invoke-virtual {p0}, Luji;->b()Lcom/google/android/gms/internal/ads/zzgsn;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkoi;->v(Lcom/google/android/gms/internal/ads/zzgsn;)Lkoi;

    invoke-virtual {p1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/j9;

    return-object p0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lphi;->b:Ljava/lang/Class;

    return-object p0
.end method
