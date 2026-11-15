.class public abstract Lcom/google/android/gms/internal/play_billing/zzbb;
.super Lcom/google/android/gms/internal/play_billing/zzav;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzbc;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideServiceCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzav;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzav;->enforceNoDataAvail(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzbc;->zza(I)V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
