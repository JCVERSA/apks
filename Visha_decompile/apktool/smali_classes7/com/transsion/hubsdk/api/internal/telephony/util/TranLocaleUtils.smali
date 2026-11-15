.class public Lcom/transsion/hubsdk/api/internal/telephony/util/TranLocaleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_MCC:I = 0x3e8


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/telephony/util/TranThubLocaleUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/telephony/util/TranLocaleUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/telephony/util/ITranLocaleUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/telephony/util/ITranLocaleUtilsAdapter;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocaleFromMcc(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Locale;
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    const/16 v0, 0x3e8

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/internal/telephony/util/TranLocaleUtils;->mAospService:Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/internal/telephony/util/TranLocaleUtils;->mAospService:Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/telephony/util/TranLocaleUtils;->mAospService:Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;->getLocaleFromMcc(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arguement is illegal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/telephony/util/ITranLocaleUtilsAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/telephony/util/TranLocaleUtils;->mThubService:Lcom/transsion/hubsdk/core/internal/telephony/util/TranThubLocaleUtils;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/internal/telephony/util/TranThubLocaleUtils;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/telephony/util/TranThubLocaleUtils;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/telephony/util/TranLocaleUtils;->mThubService:Lcom/transsion/hubsdk/core/internal/telephony/util/TranThubLocaleUtils;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/telephony/util/TranLocaleUtils;->mAospService:Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/telephony/util/TranLocaleUtils;->mAospService:Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;

    :cond_2
    return-object p1
.end method
