.class public final synthetic Lv2b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

.field public final synthetic b:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2b;->a:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    iput-object p2, p0, Lv2b;->b:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv2b;->a:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    iget-object p0, p0, Lv2b;->b:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->d(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;

    move-result-object p0

    return-object p0
.end method
