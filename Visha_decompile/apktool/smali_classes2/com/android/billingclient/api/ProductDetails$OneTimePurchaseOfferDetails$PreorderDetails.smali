.class public final Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$PreorderDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/android/billingclient/api/zzr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreorderDetails"
.end annotation


# instance fields
.field private final preorderPresaleEndTimeMillis:J

.field private final preorderReleaseTimeMillis:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "preorderReleaseTimeMillis"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$PreorderDetails;->preorderReleaseTimeMillis:J

    const-string v0, "preorderPresaleEndTimeMillis"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$PreorderDetails;->preorderPresaleEndTimeMillis:J

    return-void
.end method


# virtual methods
.method public getPreorderPresaleEndTimeMillis()J
    .locals 2
    .annotation build Lcom/android/billingclient/api/zzr;
    .end annotation

    iget-wide v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$PreorderDetails;->preorderPresaleEndTimeMillis:J

    return-wide v0
.end method

.method public getPreorderReleaseTimeMillis()J
    .locals 2
    .annotation build Lcom/android/billingclient/api/zzr;
    .end annotation

    iget-wide v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$PreorderDetails;->preorderReleaseTimeMillis:J

    return-wide v0
.end method
