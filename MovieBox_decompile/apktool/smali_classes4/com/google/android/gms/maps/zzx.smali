.class final Lcom/google/android/gms/maps/zzx;
.super Lcom/google/android/gms/maps/internal/zzo;
.source "source.java"


# instance fields
.field private final synthetic zzaf:Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzx;->zzaf:Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzo;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraIdle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzx;->zzaf:Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;->onCameraIdle()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
