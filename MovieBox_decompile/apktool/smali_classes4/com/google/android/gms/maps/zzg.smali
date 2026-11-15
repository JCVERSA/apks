.class final Lcom/google/android/gms/maps/zzg;
.super Lcom/google/android/gms/maps/internal/zzi;
.source "source.java"


# instance fields
.field private final synthetic zzo:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzg;->zzo:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/internal/maps/zzt;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzg;->zzo:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/maps/zzt;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzg;->zzo:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
