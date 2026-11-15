.class public final synthetic Lcom/google/android/gms/internal/ads/zzld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ld9j;

.field public final synthetic zzb:Landroid/util/Pair;

.field public final synthetic zzc:Lsmj;

.field public final synthetic zzd:Lxmj;

.field public final synthetic zze:Ljava/io/IOException;

.field public final synthetic zzf:Z


# direct methods
.method public synthetic constructor <init>(Ld9j;Landroid/util/Pair;Lsmj;Lxmj;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzld;->zza:Ld9j;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzld;->zzc:Lsmj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzld;->zzd:Lxmj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzld;->zze:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzld;->zzf:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzld;->zza:Ld9j;

    iget-object v1, v1, Ld9j;->b:Lm9j;

    invoke-static {v1}, Lm9j;->e(Lm9j;)Lqaj;

    move-result-object v2

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lbnj;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzld;->zzc:Lsmj;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzld;->zzd:Lxmj;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzld;->zze:Ljava/io/IOException;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzld;->zzf:Z

    invoke-interface/range {v2 .. v8}, Lsnj;->t(ILbnj;Lsmj;Lxmj;Ljava/io/IOException;Z)V

    return-void
.end method
