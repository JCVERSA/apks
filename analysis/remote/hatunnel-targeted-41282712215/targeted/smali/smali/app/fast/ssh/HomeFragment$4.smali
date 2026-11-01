.class Lapp/fast/ssh/HomeFragment$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/HomeFragment;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$4;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$4;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {p1}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/FastSSH;

    invoke-virtual {p1}, Lapp/fast/ssh/FastSSH;->getBillingManager()Lapp/fast/ssh/BillingManager;

    move-result-object p1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$4;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {p1, v0}, Lapp/fast/ssh/BillingManager;->setStateListener(Lapp/fast/ssh/BillingManager$StateListener;)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$4;->this$0:Lapp/fast/ssh/HomeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lapp/fast/ssh/HomeFragment;->access$1102(Lapp/fast/ssh/HomeFragment;Z)Z

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$4;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lapp/fast/ssh/BillingManager;->purchase(Landroid/app/Activity;)V

    return-void
.end method
