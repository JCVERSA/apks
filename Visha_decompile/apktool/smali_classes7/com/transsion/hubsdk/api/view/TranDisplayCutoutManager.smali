.class public Lcom/transsion/hubsdk/api/view/TranDisplayCutoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/hubsdk/common/api/TranAdapter<",
            "Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutManagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/api/TranAdapter;

    new-instance v1, Laxa;

    invoke-direct {v1}, Laxa;-><init>()V

    new-instance v2, Lbxa;

    invoke-direct {v2}, Lbxa;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/common/api/TranAdapter;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/hubsdk/api/view/TranDisplayCutoutManager;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/api/view/TranDisplayCutoutManager;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const-string v0, "37.5.1.1"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutManagerAdapter;

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutManagerAdapter;->clean()V

    return-void
.end method

.method public getDisplayCutoutModeSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/transsion/hubsdk/api/view/TranDisplayCutoutManager;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const-string v0, "37.5.1.1"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutManagerAdapter;

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutManagerAdapter;->getDisplayCutoutModeSettings()Ljava/util/Map;

    move-result-object p0

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

    sget-object p0, Lcom/transsion/hubsdk/api/view/TranDisplayCutoutManager;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const-string v0, "37.5.1.1"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutManagerAdapter;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutManagerAdapter;->putDisplayCutoutModeSettings(Ljava/util/Map;)V

    return-void
.end method
