.class public Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranLocalePickerManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllAssetLocales(Z)Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;->getAllAssetLocales(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;

    :cond_2
    return-object p1
.end method

.method public updateLocale(Ljava/util/Locale;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;->updateLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public updateLocales(Landroid/os/LocaleList;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;->updateLocales(Landroid/os/LocaleList;)V

    return-void
.end method
