.class final Lcom/google/android/gms/internal/appset/zzo;
.super Lcom/google/android/gms/internal/appset/zze;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lzda;


# direct methods
.method public constructor <init>(Lagj;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/appset/zzo;->zza:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/internal/appset/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/appset/zzc;)V
    .locals 2
    .param p2    # Lcom/google/android/gms/appset/zzc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    new-instance v0, Lze;

    invoke-virtual {p2}, Lcom/google/android/gms/appset/zzc;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/appset/zzc;->zza()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lze;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/appset/zzo;->zza:Lzda;

    invoke-static {p1, v0, p0}, Ljea;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)V

    return-void
.end method
