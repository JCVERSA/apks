.class final Lcom/google/android/gms/maps/zze;
.super Lcom/google/android/gms/maps/internal/zzag;
.source "source.java"


# instance fields
.field private final synthetic zzm:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zze;->zzm:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzag;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zze;->zzm:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;->onInfoWindowLongClick(Lcom/google/android/gms/maps/model/Marker;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
