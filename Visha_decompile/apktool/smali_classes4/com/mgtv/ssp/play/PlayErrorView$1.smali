.class Lcom/mgtv/ssp/play/PlayErrorView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PlayErrorView;->getErrorView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/PlayErrorView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PlayErrorView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayErrorView$1;->this$0:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayErrorView$1;->this$0:Lcom/mgtv/ssp/play/PlayErrorView;

    iget-object v0, v0, Lcom/mgtv/ssp/play/PlayErrorView;->mContext:Landroid/content/Context;

    const-class v1, Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getReportH5()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayErrorView$1;->this$0:Lcom/mgtv/ssp/play/PlayErrorView;

    invoke-static {v1}, Lcom/mgtv/ssp/play/PlayErrorView;->access$000(Lcom/mgtv/ssp/play/PlayErrorView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__VCODE__"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "webUrl"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView$1;->this$0:Lcom/mgtv/ssp/play/PlayErrorView;

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayErrorView;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
