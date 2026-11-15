.class Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->E0(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

.field final synthetic val$showTitleBar:I


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$2;->this$0:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    iput p2, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$2;->val$showTitleBar:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$2;->this$0:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    invoke-static {v0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->s0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$2;->val$showTitleBar:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
