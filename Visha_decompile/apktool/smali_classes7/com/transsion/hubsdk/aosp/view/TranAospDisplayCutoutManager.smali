.class public Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutoutManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutManagerAdapter;


# static fields
.field private static final CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Ljava/lang/Object;

.field private static final METHOD_getDisplayCutoutModeSettings:Ljava/lang/reflect/Method;

.field private static final METHOD_instance:Ljava/lang/reflect/Method;

.field private static final METHOD_putDisplayCutoutModeSettings:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.transsion.view.DisplayCutoutManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutoutManager;->CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getDisplayCutoutModeSettings"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutoutManager;->METHOD_getDisplayCutoutModeSettings:Ljava/lang/reflect/Method;

    const-class v2, Ljava/util/Map;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "putDisplayCutoutModeSettings"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutoutManager;->METHOD_putDisplayCutoutModeSettings:Ljava/lang/reflect/Method;

    const-string v2, "instance"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutoutManager;->METHOD_instance:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutoutManager;->INSTANCE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    return-void
.end method

.method public getDisplayCutoutModeSettings()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutoutManager;->METHOD_getDisplayCutoutModeSettings:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutoutManager;->INSTANCE:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public putDisplayCutoutModeSettings(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutoutManager;->METHOD_putDisplayCutoutModeSettings:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutoutManager;->INSTANCE:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
