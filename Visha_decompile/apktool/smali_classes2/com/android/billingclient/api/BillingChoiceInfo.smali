.class public final Lcom/android/billingclient/api/BillingChoiceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/android/billingclient/api/zze;
.end annotation


# instance fields
.field private final playBillingChoiceImageUrl:Ljava/lang/String;

.field private final playBillingLoyaltyInfo:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingChoiceInfo;->playBillingChoiceImageUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingChoiceInfo;->playBillingLoyaltyInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPlayBillingChoiceImageUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/billingclient/api/BillingChoiceInfo;->playBillingChoiceImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayBillingLoyaltyInfo()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/billingclient/api/BillingChoiceInfo;->playBillingLoyaltyInfo:Ljava/lang/String;

    return-object p0
.end method
