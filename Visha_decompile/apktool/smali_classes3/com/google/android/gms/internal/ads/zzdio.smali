.class public final synthetic Lcom/google/android/gms/internal/ads/zzdio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lceg;

.field public final synthetic zzb:Ldfg;


# direct methods
.method public synthetic constructor <init>(Lceg;Ldfg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdio;->zza:Lceg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdio;->zzb:Ldfg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdio;->zza:Lceg;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdio;->zzb:Ldfg;

    invoke-static {v0, p0}, Lceg;->b(Lceg;Ldfg;)V

    return-void
.end method
