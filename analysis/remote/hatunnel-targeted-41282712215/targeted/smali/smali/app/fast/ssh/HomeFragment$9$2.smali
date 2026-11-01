.class Lapp/fast/ssh/HomeFragment$9$2;
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


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$9$2;->this$1:Lapp/fast/ssh/HomeFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$9$2;->this$1:Lapp/fast/ssh/HomeFragment$9;

    iget-object v0, v0, Lapp/fast/ssh/HomeFragment$9;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1300(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    const-string/jumbo v1, "\u2eba"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
