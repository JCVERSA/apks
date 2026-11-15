.class Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

.field final synthetic val$textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Landroid/text/TextWatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->val$textWatcher:Landroid/text/TextWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->p(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->p(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->val$textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->val$textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->p(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->val$textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->val$textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->E(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->C(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    :cond_0
    return-void
.end method
