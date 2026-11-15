.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lzcg;

.field public final synthetic zzb:Ldfg;


# direct methods
.method public synthetic constructor <init>(Lzcg;Ldfg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zza:Lzcg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zzb:Ldfg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zza:Lzcg;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zzb:Ldfg;

    invoke-static {v0, p0}, Lzcg;->b0(Lzcg;Ldfg;)V

    return-void
.end method
