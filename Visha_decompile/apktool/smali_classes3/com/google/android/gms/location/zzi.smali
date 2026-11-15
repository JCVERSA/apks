.class final Lcom/google/android/gms/location/zzi;
.super Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lzda;


# direct methods
.method public constructor <init>(Lj5;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/location/zzi;->zza:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/location/zzi;->zza:Lzda;

    invoke-static {p1, p0}, Ljea;->a(Lcom/google/android/gms/common/api/Status;Lzda;)V

    return-void
.end method
