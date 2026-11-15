.class public Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAppWidgetManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/appwidget/TranAospAppWidgetManager;

.field private mThubService:Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;


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
.method public getInstalledProviders(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;->getInstalledProviders(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAppWidgetManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->mThubService:Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->mThubService:Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospAppWidgetManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->mAospService:Lcom/transsion/hubsdk/aosp/appwidget/TranAospAppWidgetManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/appwidget/TranAospAppWidgetManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/appwidget/TranAospAppWidgetManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->mAospService:Lcom/transsion/hubsdk/aosp/appwidget/TranAospAppWidgetManager;

    :cond_2
    return-object p1
.end method

.method public registerAppWidgetListener(Lcom/transsion/hubsdk/api/app/ITranAppWidget;I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;->registerAppWidgetListener(Lcom/transsion/hubsdk/api/app/ITranAppWidget;I)V

    return-void
.end method

.method public unregisterAppWidgetListener(Lcom/transsion/hubsdk/api/app/ITranAppWidget;I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;->unregisterAppWidgetListener(Lcom/transsion/hubsdk/api/app/ITranAppWidget;I)V

    return-void
.end method
