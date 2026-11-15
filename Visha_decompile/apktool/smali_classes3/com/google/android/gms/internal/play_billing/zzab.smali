.class public abstract Lcom/google/android/gms/internal/play_billing/zzab;
.super Lcom/google/android/gms/internal/play_billing/zzav;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzac;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingDelegateToBackendCallback"

.field static final TRANSACTION_onDelegateToBackendResponse:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.android.vending.billing.IInAppBillingDelegateToBackendCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzav;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzac;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.vending.billing.IInAppBillingDelegateToBackendCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzac;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzac;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzaa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzaa;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lfse;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzav;->enforceNoDataAvail(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzac;->onDelegateToBackendResponse(Landroid/os/Bundle;)V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
