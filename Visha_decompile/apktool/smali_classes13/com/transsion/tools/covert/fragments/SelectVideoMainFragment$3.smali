.class Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->Z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

.field final synthetic val$count:I


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$3;->this$0:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    iput p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$3;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$3;->this$0:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->t0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Lcom/transsion/widgets/BadgeView;

    move-result-object v0

    iget v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$3;->val$count:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    iget v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$3;->val$count:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$3;->this$0:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->t0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Lcom/transsion/widgets/BadgeView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
