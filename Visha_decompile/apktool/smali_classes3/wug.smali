.class public final Lwug;
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

    iput-object p1, p0, Lwug;->a:Lqyi;

    iput-object p2, p0, Lwug;->b:Lqyi;

    iput-object p3, p0, Lwug;->c:Lqyi;

    iput-object p4, p0, Lwug;->d:Lqyi;

    iput-object p5, p0, Lwug;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/z4;
    .locals 7

    iget-object v0, p0, Lwug;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lwug;->b:Lqyi;

    check-cast v0, Lmyf;

    invoke-virtual {v0}, Lmyf;->a()Llyf;

    move-result-object v3

    iget-object v0, p0, Lwug;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lpug;

    iget-object v0, p0, Lwug;->d:Lqyi;

    check-cast v0, Lmug;

    invoke-virtual {v0}, Lmug;->a()Llug;

    move-result-object v5

    iget-object p0, p0, Lwug;->e:Lqyi;

    check-cast p0, Lpkf;

    invoke-virtual {p0}, Lpkf;->a()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v6

    new-instance p0, Lcom/google/android/gms/internal/ads/z4;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/z4;-><init>(Landroid/content/Context;Llyf;Lpug;Llug;Lcom/google/android/gms/ads/internal/util/zzg;)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lwug;->a()Lcom/google/android/gms/internal/ads/z4;

    move-result-object p0

    return-object p0
.end method
