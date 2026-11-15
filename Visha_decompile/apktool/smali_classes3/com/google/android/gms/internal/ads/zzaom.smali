.class final Lcom/google/android/gms/internal/ads/zzaom;
.super Lcom/google/android/gms/internal/ads/zzaon;
.source "SourceFile"


# instance fields
.field private final zza:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaon;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaom;->zza:[B

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zza:[B

    return-object p0
.end method
