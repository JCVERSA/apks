.class final Lcom/google/android/gms/maps/zzq;
.super Lcom/google/android/gms/maps/internal/zzbg;
.source "source.java"


# instance fields
.field private final synthetic zzy:Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzq;->zzy:Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbg;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/maps/zzz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzq;->zzy:Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/maps/model/Polyline;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Polyline;-><init>(Lcom/google/android/gms/internal/maps/zzz;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;->onPolylineClick(Lcom/google/android/gms/maps/model/Polyline;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
