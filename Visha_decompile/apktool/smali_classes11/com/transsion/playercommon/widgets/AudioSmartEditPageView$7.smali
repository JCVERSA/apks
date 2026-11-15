.class Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;
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

.field final synthetic val$onInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

.field final synthetic val$titleOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;->val$titleOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;->val$onInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    const/16 v1, 0x4b

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;->val$titleOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;->val$onInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->p(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;->val$onInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;->val$onInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    invoke-virtual {v0, v2, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    return-void
.end method
