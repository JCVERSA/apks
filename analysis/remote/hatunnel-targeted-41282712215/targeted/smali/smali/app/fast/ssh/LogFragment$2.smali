.class Lapp/fast/ssh/LogFragment$2;
.super Ljava/lang/Object;
.source "LogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/LogFragment;->onDebugRestore(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/LogFragment;

.field final synthetic val$stringList:Ljava/util/List;


# direct methods
.method constructor <init>(Lapp/fast/ssh/LogFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/LogFragment$2;->this$0:Lapp/fast/ssh/LogFragment;

    iput-object p2, p0, Lapp/fast/ssh/LogFragment$2;->val$stringList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/LogFragment$2;->this$0:Lapp/fast/ssh/LogFragment;

    invoke-static {v0}, Lapp/fast/ssh/LogFragment;->access$100(Lapp/fast/ssh/LogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lapp/fast/ssh/LogFragment$2;->this$0:Lapp/fast/ssh/LogFragment;

    invoke-static {v0}, Lapp/fast/ssh/LogFragment;->access$100(Lapp/fast/ssh/LogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/LogFragment$2;->val$stringList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lapp/fast/ssh/LogFragment$2;->this$0:Lapp/fast/ssh/LogFragment;

    invoke-static {v0}, Lapp/fast/ssh/LogFragment;->access$100(Lapp/fast/ssh/LogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lapp/fast/ssh/LogFragment$2;->this$0:Lapp/fast/ssh/LogFragment;

    invoke-static {v0}, Lapp/fast/ssh/LogFragment;->access$100(Lapp/fast/ssh/LogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lapp/fast/ssh/LogFragment$2;->this$0:Lapp/fast/ssh/LogFragment;

    invoke-static {v0}, Lapp/fast/ssh/LogFragment;->access$200(Lapp/fast/ssh/LogFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lapp/fast/ssh/LogFragment$2;->this$0:Lapp/fast/ssh/LogFragment;

    invoke-static {v2}, Lapp/fast/ssh/LogFragment;->access$100(Lapp/fast/ssh/LogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method
