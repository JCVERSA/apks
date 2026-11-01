.class Lapp/fast/ssh/LogFragment$1;
.super Ljava/lang/Object;
.source "LogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/LogFragment;->onDebugReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/LogFragment;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lapp/fast/ssh/LogFragment;Ljava/lang/String;)V
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

    iput-object p1, p0, Lapp/fast/ssh/LogFragment$1;->this$0:Lapp/fast/ssh/LogFragment;

    iput-object p2, p0, Lapp/fast/ssh/LogFragment$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/LogFragment$1;->this$0:Lapp/fast/ssh/LogFragment;

    invoke-static {v0}, Lapp/fast/ssh/LogFragment;->access$000(Lapp/fast/ssh/LogFragment;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/LogFragment$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lapp/fast/ssh/LogFragment$1;->this$0:Lapp/fast/ssh/LogFragment;

    invoke-static {v0}, Lapp/fast/ssh/LogFragment;->access$100(Lapp/fast/ssh/LogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
