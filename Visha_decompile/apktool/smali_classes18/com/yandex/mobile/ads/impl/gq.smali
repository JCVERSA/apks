.class public final enum Lcom/yandex/mobile/ads/impl/gq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/gq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/mobile/ads/impl/gq;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/yandex/mobile/ads/impl/gq$a;

.field private static final synthetic e:[Lcom/yandex/mobile/ads/impl/gq;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/yandex/mobile/ads/impl/gq;

    const-string v1, "IABConsent_ConsentString"

    const-string v2, "IABTCF_TCString"

    const/4 v6, 0x0

    const-string v3, "CONSENT_STRING"

    invoke-direct {v0, v6, v3, v1, v2}, Lcom/yandex/mobile/ads/impl/gq;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/gq;

    const-string v2, "IABConsent_SubjectToGDPR"

    const-string v3, "IABTCF_gdprApplies"

    const/4 v4, 0x1

    const-string v5, "GDPR"

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/yandex/mobile/ads/impl/gq;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/gq;

    const-string v3, "IABConsent_CMPPresent"

    const-string v4, "IABTCF_CmpSdkID"

    const/4 v5, 0x2

    const-string v7, "CMP_PRESENT"

    invoke-direct {v2, v5, v7, v3, v4}, Lcom/yandex/mobile/ads/impl/gq;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/gq;

    const-string v4, "IABConsent_ParsedPurposeConsents"

    const-string v5, "IABTCF_PurposeConsents"

    const/4 v7, 0x3

    const-string v8, "PURPOSE_CONSENTS"

    invoke-direct {v3, v7, v8, v4, v5}, Lcom/yandex/mobile/ads/impl/gq;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/gq;

    const-string v5, "IABConsent_ParsedVendorConsents"

    const-string v7, "IABTCF_VendorConsents"

    const/4 v8, 0x4

    const-string v9, "VENDOR_CONSENTS"

    invoke-direct {v4, v8, v9, v5, v7}, Lcom/yandex/mobile/ads/impl/gq;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/gq;

    const/4 v7, 0x0

    const-string v8, "IABTCF_AddtlConsent"

    const/4 v9, 0x5

    const-string v10, "ADDITIONAL_CONSENT"

    invoke-direct {v5, v9, v10, v7, v8}, Lcom/yandex/mobile/ads/impl/gq;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array/range {v0 .. v5}, [Lcom/yandex/mobile/ads/impl/gq;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/gq;->e:[Lcom/yandex/mobile/ads/impl/gq;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    new-instance v0, Lcom/yandex/mobile/ads/impl/gq$a;

    invoke-direct {v0, v6}, Lcom/yandex/mobile/ads/impl/gq$a;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/gq;->d:Lcom/yandex/mobile/ads/impl/gq$a;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gq;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gq;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/gq;
    .locals 1

    const-class v0, Lcom/yandex/mobile/ads/impl/gq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/gq;

    return-object p0
.end method

.method public static values()[Lcom/yandex/mobile/ads/impl/gq;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/gq;->e:[Lcom/yandex/mobile/ads/impl/gq;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/impl/gq;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gq;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gq;->c:Ljava/lang/String;

    return-object p0
.end method
