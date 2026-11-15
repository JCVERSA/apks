.class Lcom/transsion/onlinevideo/web/VipWebActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/web/VipWebActivity;->W0(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/web/VipWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$2;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "go to last page"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[VishaUserDebug]"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$2;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object v1, v0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/transsion/onlinevideo/web/VipWebActivity;->j0:Z

    iget-object v0, v0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$2;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->h0:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
