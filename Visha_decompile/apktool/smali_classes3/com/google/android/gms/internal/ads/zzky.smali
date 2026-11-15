.class public final synthetic Lcom/google/android/gms/internal/ads/zzky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Li8j;

.field public final synthetic zzb:Ll4i;

.field public final synthetic zzc:Lbnj;


# direct methods
.method public synthetic constructor <init>(Li8j;Ll4i;Lbnj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzky;->zza:Li8j;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzky;->zzb:Ll4i;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzky;->zzc:Lbnj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzky;->zza:Li8j;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzky;->zzb:Ll4i;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzky;->zzc:Lbnj;

    invoke-static {v0, v1, p0}, Li8j;->E(Li8j;Ll4i;Lbnj;)V

    return-void
.end method
