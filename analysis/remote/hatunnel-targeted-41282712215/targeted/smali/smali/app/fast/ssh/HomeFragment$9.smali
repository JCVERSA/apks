.class Lapp/fast/ssh/HomeFragment$9;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$9;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$app-fast-ssh-HomeFragment$9()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$9;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/core/VpnConnection;->getFirstActiveNetworkDnsResolver(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment$9;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v1}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lapp/fast/ssh/HomeFragment$9$1;

    invoke-direct {v2, p0, v0}, Lapp/fast/ssh/HomeFragment$9$1;-><init>(Lapp/fast/ssh/HomeFragment$9;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/core/VpnStatus;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$9;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lapp/fast/ssh/HomeFragment$9$2;

    invoke-direct {v1, p0}, Lapp/fast/ssh/HomeFragment$9$2;-><init>(Lapp/fast/ssh/HomeFragment$9;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lapp/fast/ssh/HomeFragment$9$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lapp/fast/ssh/HomeFragment$9$$ExternalSyntheticLambda0;-><init>(Lapp/fast/ssh/HomeFragment$9;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
