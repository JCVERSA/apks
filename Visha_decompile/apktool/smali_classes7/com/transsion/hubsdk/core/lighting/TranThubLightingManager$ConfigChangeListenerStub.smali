.class Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;
.super Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigChangeListenerStub"
.end annotation


# instance fields
.field private final mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    return-void
.end method


# virtual methods
.method public onCustomEffectAdded(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;->onCustomEffectAdded(I)V

    return-void
.end method

.method public onLightingConfigChanged(Lcom/transsion/hubsdk/lighting/TranLightingConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->access$100(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;->onLightingConfigChanged(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSceneConfigChanged(ILcom/transsion/hubsdk/lighting/TranSceneConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    invoke-static {v0, p2}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->access$200(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;->onSceneConfigChanged(ILcom/transsion/hubsdk/api/lighting/TranSceneConfig;)V

    :cond_1
    :goto_0
    return-void
.end method
