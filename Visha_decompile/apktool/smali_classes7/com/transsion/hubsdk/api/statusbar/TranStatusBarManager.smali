.class public Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FINGERPRINTSTARTAPPENABLE:Ljava/lang/String; = "fingerprintStartAppEnable"

.field public static final GESTURESPENABLE:Ljava/lang/String; = "gestureSpEnable"

.field public static final HIDENOTIFICATIONINMODE:Ljava/lang/String; = "hideNotificationInMode"

.field public static final MAGAZINEENABLE:Ljava/lang/String; = "magazineEnable"

.field public static final MULTIUSERENABLE:Ljava/lang/String; = "multiUserEnable"

.field public static final NOTIFICATIONEVENTENABLE:Ljava/lang/String; = "notificationEventEnable"

.field public static final NOTIFICATIONSUMMARYENABLE:Ljava/lang/String; = "notificationSummaryEnable"

.field public static final SHOWULTRAPOWER:Ljava/lang/String; = "showUltraPower"

.field private static final TAG:Ljava/lang/String; = "TranStatusBarManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;

.field private mThubService:Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;


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
.method public autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public collapsePanels()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->collapsePanels()V

    return-void
.end method

.method public customGesturesEnable(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->customGesturesEnable(Ljava/lang/String;Z)V

    return-void
.end method

.method public customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public customNotificationStyle(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->customNotificationStyle(Ljava/lang/String;Z)V

    return-void
.end method

.method public customPanelEnable(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->customPanelEnable(Ljava/lang/String;Z)V

    return-void
.end method

.method public disable(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->disable(I)V

    return-void
.end method

.method public disable2(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->disable2(I)V

    return-void
.end method

.method public enableAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->enableAction(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public expandNotificationsPanel()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33221:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->expandNotificationsPanel()V

    return-void
.end method

.method public expandSettingsPanel()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33221:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->expandSettingsPanel()V

    return-void
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mThubService:Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mThubService:Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospStatusBarManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mAospService:Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mAospService:Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;

    :cond_2
    return-object p1
.end method

.method public onDestoryCallback(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->onDestoryCallback(Ljava/lang/String;)V

    return-void
.end method

.method public registerTranStatusBar(Lcom/transsion/hubsdk/api/app/ITranStatusBar;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->registerTranStatusBar(Lcom/transsion/hubsdk/api/app/ITranStatusBar;)V

    return-void
.end method

.method public setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->showPinningEscapeToast()V

    return-void
.end method

.method public updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
