.class Lcom/mgtv/ssp/play/PreviewEndScene$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PreviewEndScene;->createButtonView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

.field final synthetic val$component:Lcom/hunantv/imgo/net/entity/AuthInfo$Component;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PreviewEndScene;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PreviewEndScene$3;->this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

    iput-object p2, p0, Lcom/mgtv/ssp/play/PreviewEndScene$3;->val$component:Lcom/hunantv/imgo/net/entity/AuthInfo$Component;

    iput-object p3, p0, Lcom/mgtv/ssp/play/PreviewEndScene$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/mgtv/ssp/play/PreviewEndScene$3;->val$component:Lcom/hunantv/imgo/net/entity/AuthInfo$Component;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->action:Lcom/hunantv/imgo/net/entity/AuthInfo$Action;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene$3;->this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

    iget-object v1, p0, Lcom/mgtv/ssp/play/PreviewEndScene$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v0, p1}, Lcom/mgtv/ssp/play/PreviewEndScene;->onComponentAction(Landroid/content/Context;Lcom/mgtv/ssp/play/IScene;Lcom/hunantv/imgo/net/entity/AuthInfo$Action;)V

    iget-object p1, p0, Lcom/mgtv/ssp/play/PreviewEndScene$3;->this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

    iget-object p0, p0, Lcom/mgtv/ssp/play/PreviewEndScene$3;->val$component:Lcom/hunantv/imgo/net/entity/AuthInfo$Component;

    invoke-static {p1, p0}, Lcom/mgtv/ssp/play/PreviewEndScene;->access$200(Lcom/mgtv/ssp/play/PreviewEndScene;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)V

    :cond_0
    return-void
.end method
