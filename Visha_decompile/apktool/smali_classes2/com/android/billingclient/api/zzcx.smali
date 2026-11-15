.class final Lcom/android/billingclient/api/zzcx;
.super Lcom/google/android/gms/internal/play_billing/zzbb;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbb;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzcx;->zza:Lcom/google/android/gms/internal/play_billing/u;

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzcx;->zza:Lcom/google/android/gms/internal/play_billing/u;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/u;->b(Ljava/lang/Object;)Z

    return-void
.end method
