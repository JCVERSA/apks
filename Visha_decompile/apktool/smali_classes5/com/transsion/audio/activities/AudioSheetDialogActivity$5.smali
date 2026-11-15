.class Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/AudioSheetDialogActivity;->K0(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

.field final synthetic val$albumEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field final synthetic val$artistEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field final synthetic val$onInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

.field final synthetic val$titleEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;->this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iput-object p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;->val$titleEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p3, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;->val$onInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    iput-object p4, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;->val$artistEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p5, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;->val$albumEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;->val$titleEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;->val$onInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;->val$artistEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;->val$onInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;->val$albumEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$5;->val$onInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    invoke-virtual {v0, v2, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    return-void
.end method
