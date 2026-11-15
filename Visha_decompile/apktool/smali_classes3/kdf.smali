.class public final Lkdf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lfy0;

.field public c:Lcom/google/android/gms/ads/internal/util/zzg;

.field public d:Lrdf;


# direct methods
.method public synthetic constructor <init>(Lmdf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/util/zzg;)Lkdf;
    .locals 0

    iput-object p1, p0, Lkdf;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Lkdf;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lkdf;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final c(Lfy0;)Lkdf;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lkdf;->b:Lfy0;

    return-object p0
.end method

.method public final d(Lrdf;)Lkdf;
    .locals 0

    iput-object p1, p0, Lkdf;->d:Lrdf;

    return-object p0
.end method

.method public final e()Lsdf;
    .locals 4

    iget-object v0, p0, Lkdf;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lkdf;->b:Lfy0;

    const-class v1, Lfy0;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lkdf;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    const-class v1, Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lkdf;->d:Lrdf;

    const-class v1, Lrdf;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lldf;

    iget-object v1, p0, Lkdf;->a:Landroid/content/Context;

    iget-object v2, p0, Lkdf;->b:Lfy0;

    iget-object v3, p0, Lkdf;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object p0, p0, Lkdf;->d:Lrdf;

    invoke-direct {v0, v1, v2, v3, p0}, Lldf;-><init>(Landroid/content/Context;Lfy0;Lcom/google/android/gms/ads/internal/util/zzg;Lrdf;)V

    return-object v0
.end method
