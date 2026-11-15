.class public Lcom/transsion/hubsdk/api/content/pm/TranShortcutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranShortcutManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;

.field private mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranShortcutManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranShortcutManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubShortcutManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranShortcutManager;->mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranShortcutManager;->mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranShortcutManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospShortcutManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranShortcutManager;->mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranShortcutManager;->mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;

    :cond_2
    return-object p1
.end method

.method public requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranShortcutManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranShortcutManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranShortcutManagerAdapter;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z

    move-result p0

    return p0
.end method
