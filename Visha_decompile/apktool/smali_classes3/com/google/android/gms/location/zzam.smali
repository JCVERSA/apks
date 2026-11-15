.class final Lcom/google/android/gms/location/zzam;
.super Lcom/google/android/gms/location/zzao;
.source "SourceFile"


# instance fields
.field private final zza:Lfke;


# direct methods
.method public constructor <init>(Lzda;Lfke;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzda;",
            "Lfke;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/zzao;-><init>(Lzda;)V

    iput-object p2, p0, Lcom/google/android/gms/location/zzam;->zza:Lfke;

    return-void
.end method


# virtual methods
.method public final zzc()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/location/zzam;->zza:Lfke;

    invoke-interface {p0}, Lfke;->zza()V

    return-void
.end method
