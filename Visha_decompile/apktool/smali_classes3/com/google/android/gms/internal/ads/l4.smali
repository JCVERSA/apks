.class public final Lcom/google/android/gms/internal/ads/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l4;->a:Lqyi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/l4;->b:Lqyi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/l4;->c:Lqyi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/l4;->d:Lqyi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/l4;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l4;->a:Lqyi;

    check-cast v0, Lkag;

    invoke-virtual {v0}, Lkag;->a()Lndf;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l4;->b:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l4;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lrdf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l4;->d:Lqyi;

    check-cast v0, Lbag;

    invoke-virtual {v0}, Lbag;->a()Landroid/view/View;

    move-result-object v5

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/l4;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    new-instance p0, Lcom/google/android/gms/internal/ads/k4;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/k4;-><init>(Lndf;Landroid/content/Context;Lrdf;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;)V

    return-object p0
.end method
