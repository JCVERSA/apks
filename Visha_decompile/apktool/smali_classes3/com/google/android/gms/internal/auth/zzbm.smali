.class final Lcom/google/android/gms/internal/auth/zzbm;
.super Lcom/google/android/gms/internal/auth/zzbd;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lzda;


# direct methods
.method public constructor <init>(Ld7f;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzbm;->zza:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget v1, p1, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->googlePlayServicesStatusCode:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzbm;->zza:Lzda;

    invoke-static {v0, p1, p0}, Ljea;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)V

    return-void
.end method
