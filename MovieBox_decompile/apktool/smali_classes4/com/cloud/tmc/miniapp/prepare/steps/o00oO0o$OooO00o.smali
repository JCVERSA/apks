.class public Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getActivity()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p1, "nevermore"

    .line 18
    .line 19
    const-string v0, "startWarmup \u5e38\u89c4\u5c0f\u7a0b\u5e8f \u9996\u9875\u662fH5 \u9884\u70edwebview \u5f00\u542f\u79bb\u5c4f\u6e32\u67d3"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->INSTANCE:Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO0O0:Ljava/lang/String;

    .line 27
    .line 28
    sget-object v1, Lcom/cloud/tmc/kernel/constants/PageType;->H5:Lcom/cloud/tmc/kernel/constants/PageType;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getActivity()Landroid/app/Activity;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->offScreenRender(Ljava/lang/String;Lcom/cloud/tmc/kernel/constants/PageType;Landroid/app/Activity;Lcom/cloud/tmc/integration/model/PrepareContext;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method
