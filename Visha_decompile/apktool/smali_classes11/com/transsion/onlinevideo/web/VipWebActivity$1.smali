.class Lcom/transsion/onlinevideo/web/VipWebActivity$1;
.super Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/web/VipWebActivity;
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

    iput-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;-><init>()V

    return-void
.end method


# virtual methods
.method public jsToNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsToNative:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[VishaUserDebug]"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;

    invoke-static {v0, v2}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->C0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->B0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-static {p1}, Lg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;

    invoke-static {p1, p2}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->z0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-static {p0, v0, p2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->F0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lt95;->c()Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;

    move-result-object p1

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native->>js:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    invoke-static {p1}, Lg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/just/agentweb/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-static {p0, p2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->y0(Lcom/transsion/onlinevideo/web/VipWebActivity;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-static {p0, p2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->x0(Lcom/transsion/onlinevideo/web/VipWebActivity;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->E0(Lcom/transsion/onlinevideo/web/VipWebActivity;)V

    goto :goto_0

    :pswitch_9
    const-string p1, "close webview"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->A0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V

    goto :goto_0

    :pswitch_a
    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;->this$0:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-static {p0, v0, p2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->D0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
