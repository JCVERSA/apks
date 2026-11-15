.class public final synthetic Lcom/google/android/gms/internal/ads/zzlg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ld9j;

.field public final synthetic zzb:Landroid/util/Pair;

.field public final synthetic zzc:Lsmj;

.field public final synthetic zzd:Lxmj;


# direct methods
.method public synthetic constructor <init>(Ld9j;Landroid/util/Pair;Lsmj;Lxmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zza:Ld9j;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzb:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzc:Lsmj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzd:Lxmj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzb:Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zza:Ld9j;

    iget-object v1, v1, Ld9j;->b:Lm9j;

    invoke-static {v1}, Lm9j;->e(Lm9j;)Lqaj;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lbnj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzc:Lsmj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzd:Lxmj;

    invoke-interface {v1, v2, v0, v3, p0}, Lsnj;->L(ILbnj;Lsmj;Lxmj;)V

    return-void
.end method
