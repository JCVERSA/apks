.class public final Lcom/android/billingclient/api/GetBillingConfigParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/android/billingclient/api/zzl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/GetBillingConfigParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzdy;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/billingclient/api/GetBillingConfigParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/GetBillingConfigParams;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/android/billingclient/api/GetBillingConfigParams;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/GetBillingConfigParams;-><init>(Lcom/android/billingclient/api/zzdy;)V

    return-object p0
.end method
