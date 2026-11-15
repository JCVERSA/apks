.class final Lcom/google/android/gms/maps/zzy;
.super Lcom/google/android/gms/maps/internal/zzak;
.source "source.java"


# instance fields
.field private final synthetic zzag:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzy;->zzag:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzak;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzy;->zzag:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
