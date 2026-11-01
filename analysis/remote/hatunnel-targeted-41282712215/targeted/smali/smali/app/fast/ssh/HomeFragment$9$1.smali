.class Lapp/fast/ssh/HomeFragment$9$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/HomeFragment$9;

.field final synthetic val$dns:Ljava/lang/String;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment$9;Ljava/lang/String;)V
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

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$9$1;->this$1:Lapp/fast/ssh/HomeFragment$9;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment$9$1;->val$dns:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$9$1;->this$1:Lapp/fast/ssh/HomeFragment$9;

    iget-object v0, v0, Lapp/fast/ssh/HomeFragment$9;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1300(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment$9$1;->val$dns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
