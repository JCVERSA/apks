.class Lapp/fast/ssh/HomeFragment$12;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment;->onByteCount(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/HomeFragment;

.field final synthetic val$in:J

.field final synthetic val$out:J


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$12;->this$0:Lapp/fast/ssh/HomeFragment;

    iput-wide p2, p0, Lapp/fast/ssh/HomeFragment$12;->val$out:J

    iput-wide p4, p0, Lapp/fast/ssh/HomeFragment$12;->val$in:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$12;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1500(Lapp/fast/ssh/HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-wide v1, p0, Lapp/fast/ssh/HomeFragment$12;->val$out:J

    invoke-static {v1, v2}, Lapp/fast/ssh/HomeFragment;->access$1400(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$12;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1600(Lapp/fast/ssh/HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-wide v1, p0, Lapp/fast/ssh/HomeFragment$12;->val$in:J

    invoke-static {v1, v2}, Lapp/fast/ssh/HomeFragment;->access$1400(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
