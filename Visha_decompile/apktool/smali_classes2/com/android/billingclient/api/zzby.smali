.class public final synthetic Lcom/android/billingclient/api/zzby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzbz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzbz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzby;->zza:Lcom/android/billingclient/api/zzbz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzby;->zza:Lcom/android/billingclient/api/zzbz;

    invoke-static {p0}, Lcom/android/billingclient/api/zzbz;->zzb(Lcom/android/billingclient/api/zzbz;)V

    return-void
.end method
