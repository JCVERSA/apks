.class public final synthetic Lcom/android/billingclient/api/zzbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzbz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzbz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbx;->zza:Lcom/android/billingclient/api/zzbz;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzbx;->zza:Lcom/android/billingclient/api/zzbz;

    invoke-static {p0}, Lcom/android/billingclient/api/zzbz;->zza(Lcom/android/billingclient/api/zzbz;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method
