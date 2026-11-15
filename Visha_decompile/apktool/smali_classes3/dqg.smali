.class public final Ldqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2g;
.implements Lf9g;
.implements Lb1g;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lsmg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqg;->b:Landroid/content/Context;

    iput-object p2, p0, Ldqg;->c:Lsmg;

    return-void
.end method

.method public static synthetic a(Ldqg;Landroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Ldqg;->c:Lsmg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzf()Lcom/google/android/gms/internal/ads/zzbdh;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzbdh;->d(Landroid/content/Context;Lsmg;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcye;->N4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzef;->a:Lg8i;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdvh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdvh;-><init>(Ldqg;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 1

    sget-object p1, Lcye;->P4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldqg;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Ldqg;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final w(Lvmh;)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;)V
    .locals 1

    sget-object p1, Lcye;->Q4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldqg;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Ldqg;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzt()V
    .locals 2

    sget-object v0, Lcye;->R4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldqg;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ldqg;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
