.class public final Lcom/android/billingclient/api/GetBillingChoiceInfoParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/android/billingclient/api/zze;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;,
        Lcom/android/billingclient/api/GetBillingChoiceInfoParams$ImageLayout;
    }
.end annotation


# instance fields
.field private final billingProgram:I

.field private final playBillingChoiceImageLayout:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final userLocale:Ljava/util/Locale;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzc(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->userLocale:Ljava/util/Locale;

    .line 3
    invoke-static {p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zza(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->billingProgram:I

    .line 4
    invoke-static {p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzb(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->playBillingChoiceImageLayout:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;Lcom/android/billingclient/api/zzdw;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;-><init>(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;-><init>(Lcom/android/billingclient/api/zzdw;)V

    return-object v0
.end method


# virtual methods
.method public getBillingProgram()I
    .locals 0

    iget p0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->billingProgram:I

    return p0
.end method

.method public getPlayBillingChoiceImageLayout()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->playBillingChoiceImageLayout:Ljava/lang/String;

    return-object p0
.end method

.method public getUserLocale()Ljava/util/Locale;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->userLocale:Ljava/util/Locale;

    return-object p0
.end method
