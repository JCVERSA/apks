.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lzcg;

.field public final synthetic zzb:Z


# direct methods
.method public synthetic constructor <init>(Lzcg;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zza:Lzcg;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zzb:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zza:Lzcg;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zzb:Z

    invoke-static {v0, p0}, Lzcg;->X(Lzcg;Z)V

    return-void
.end method
