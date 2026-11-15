.class public final synthetic Lcom/android/billingclient/api/zzau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic zzb:Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;

.field public final synthetic zzc:Lcom/android/billingclient/api/LaunchExternalLinkParams;

.field public final synthetic zzd:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/LaunchExternalLinkParams;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzau;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzau;->zzb:Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;

    iput-object p3, p0, Lcom/android/billingclient/api/zzau;->zzc:Lcom/android/billingclient/api/LaunchExternalLinkParams;

    iput-object p4, p0, Lcom/android/billingclient/api/zzau;->zzd:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/zzau;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v1, p0, Lcom/android/billingclient/api/zzau;->zzb:Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;

    iget-object v2, p0, Lcom/android/billingclient/api/zzau;->zzc:Lcom/android/billingclient/api/LaunchExternalLinkParams;

    iget-object p0, p0, Lcom/android/billingclient/api/zzau;->zzd:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzH(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/LaunchExternalLinkParams;Landroid/app/Activity;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method
