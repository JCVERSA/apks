.class public Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/pm/ITranShortcutManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospShortcutManager"

.field private static sIShortcutServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sServiceManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mShortcutManager:Landroid/content/pm/ShortcutManager;

.field private mTranAospShortcutManagerExt:Lcom/transsion/hubsdk/aosp/pm/TranAospShortcutManagerExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;->sServiceManagerClass:Ljava/lang/Class;

    const-string v0, "android.content.pm.IShortcutService$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;->sIShortcutServiceClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;->mContext:Landroid/content/Context;

    const-string v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    return-void
.end method

.method private getTranAospShortcutManagerExt()Lcom/transsion/hubsdk/aosp/pm/TranAospShortcutManagerExt;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;->mTranAospShortcutManagerExt:Lcom/transsion/hubsdk/aosp/pm/TranAospShortcutManagerExt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/pm/TranAospShortcutManagerExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/pm/TranAospShortcutManagerExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;->mTranAospShortcutManagerExt:Lcom/transsion/hubsdk/aosp/pm/TranAospShortcutManagerExt;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;->mTranAospShortcutManagerExt:Lcom/transsion/hubsdk/aosp/pm/TranAospShortcutManagerExt;

    return-object p0
.end method


# virtual methods
.method public requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p4, Landroid/content/pm/ShortcutInfo;

    const-class v0, Landroid/content/IntentSender;

    filled-new-array {p4, v0}, [Ljava/lang/Class;

    move-result-object p4

    const-string v0, "requestPinShortcut"

    invoke-static {p1, v0, p4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    sget-object p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestPinShortcut result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospShortcutManager;->getTranAospShortcutManagerExt()Lcom/transsion/hubsdk/aosp/pm/TranAospShortcutManagerExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/aosp/pm/TranAospShortcutManagerExt;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z

    move-result p0

    return p0

    :cond_2
    return v2
.end method
