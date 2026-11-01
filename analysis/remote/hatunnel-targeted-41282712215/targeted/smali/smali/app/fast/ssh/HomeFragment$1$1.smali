.class Lapp/fast/ssh/HomeFragment$1$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment$1;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/HomeFragment$1;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$1$1;->this$1:Lapp/fast/ssh/HomeFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$1$1;->this$1:Lapp/fast/ssh/HomeFragment$1;

    iget-object v0, v0, Lapp/fast/ssh/HomeFragment$1;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lapp/fast/ssh/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$1$1;->this$1:Lapp/fast/ssh/HomeFragment$1;

    iget-object v0, v0, Lapp/fast/ssh/HomeFragment$1;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
