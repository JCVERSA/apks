.class public final synthetic Lcom/google/android/gms/internal/ads/zzpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lchj;

.field public final synthetic zzb:Ld1j;


# direct methods
.method public synthetic constructor <init>(Lchj;Ld1j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->zza:Lchj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzb:Ld1j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->zza:Lchj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzb:Ld1j;

    invoke-static {v0, p0}, Lchj;->a(Lchj;Ld1j;)V

    return-void
.end method
