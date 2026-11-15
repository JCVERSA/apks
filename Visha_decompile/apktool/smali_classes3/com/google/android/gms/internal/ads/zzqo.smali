.class public final synthetic Lcom/google/android/gms/internal/ads/zzqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lohj;

.field public final synthetic zzb:Lehj;


# direct methods
.method public synthetic constructor <init>(Lohj;Lehj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqo;->zza:Lohj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzb:Lehj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqo;->zza:Lohj;

    check-cast v0, Lbjj;

    iget-object v0, v0, Lbjj;->a:Ldjj;

    invoke-static {v0}, Ldjj;->N0(Ldjj;)Lchj;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzb:Lehj;

    invoke-virtual {v0, p0}, Lchj;->p(Lehj;)V

    return-void
.end method
