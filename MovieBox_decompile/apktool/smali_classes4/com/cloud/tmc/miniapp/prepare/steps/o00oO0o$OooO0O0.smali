.class public Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;
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

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

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
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getActivity()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ExtendModel;->getH5Url()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, ""

    .line 35
    .line 36
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    const-string v2, "nevermore"

    .line 53
    .line 54
    const-string v3, "startWarmup \u72ec\u7acb\u7ad9 \u5f00\u542f\u79bb\u5c4f\u6e32\u67d3"

    .line 55
    .line 56
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/KUrlUtils;->generateShellUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v1, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->INSTANCE:Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;

    .line 68
    .line 69
    sget-object v2, Lcom/cloud/tmc/kernel/constants/PageType;->H5_SHELL:Lcom/cloud/tmc/kernel/constants/PageType;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 72
    .line 73
    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->offScreenRender(Ljava/lang/String;Lcom/cloud/tmc/kernel/constants/PageType;Landroid/app/Activity;Lcom/cloud/tmc/integration/model/PrepareContext;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    const/4 p1, 0x0

    .line 77
    return-object p1
.end method
