.class public final synthetic Lcom/android/billingclient/api/zzcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnij;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzda;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzda;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzcr;->zza:Lcom/android/billingclient/api/zzda;

    iput p2, p0, Lcom/android/billingclient/api/zzcr;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/u;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzcr;->zza:Lcom/android/billingclient/api/zzda;

    iget p0, p0, Lcom/android/billingclient/api/zzcr;->zzb:I

    invoke-static {v0, p0, p1}, Lcom/android/billingclient/api/zzda;->zzaM(Lcom/android/billingclient/api/zzda;ILcom/google/android/gms/internal/play_billing/u;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
