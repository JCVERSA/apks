.class public Lcom/transsion/hubsdk/core/view/TranThubDisplayCutoutManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutManagerAdapter;


# instance fields
.field private final mManager:Lcom/transsion/hubsdk/view/TranDisplayCutoutManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/view/TranDisplayCutoutManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranDisplayCutoutManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubDisplayCutoutManager;->mManager:Lcom/transsion/hubsdk/view/TranDisplayCutoutManager;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubDisplayCutoutManager;->mManager:Lcom/transsion/hubsdk/view/TranDisplayCutoutManager;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranDisplayCutoutManager;->clean()V

    return-void
.end method

.method public getDisplayCutoutModeSettings()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubDisplayCutoutManager;->mManager:Lcom/transsion/hubsdk/view/TranDisplayCutoutManager;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranDisplayCutoutManager;->getDisplayCutoutModeSettings()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public putDisplayCutoutModeSettings(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubDisplayCutoutManager;->mManager:Lcom/transsion/hubsdk/view/TranDisplayCutoutManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranDisplayCutoutManager;->putDisplayCutoutModeSettings(Ljava/util/Map;)V

    return-void
.end method
