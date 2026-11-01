.class Lapp/fast/ssh/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/MainActivity;->processUpdate(Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/MainActivity;


# direct methods
.method constructor <init>(Lapp/fast/ssh/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/MainActivity$3;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lapp/fast/ssh/MainActivity$3;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-static {p1}, Lapp/fast/ssh/MainActivity;->access$200(Lapp/fast/ssh/MainActivity;)Lapp/fast/ssh/HomeFragment;

    move-result-object p1

    invoke-static {p1}, Lapp/fast/ssh/core/VpnStatus;->removeVpnStateListener(Lapp/fast/ssh/core/VpnStatus$VpnStateListener;)V

    iget-object p1, p0, Lapp/fast/ssh/MainActivity$3;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-static {p1}, Lapp/fast/ssh/MainActivity;->access$200(Lapp/fast/ssh/MainActivity;)Lapp/fast/ssh/HomeFragment;

    move-result-object p1

    invoke-virtual {p1}, Lapp/fast/ssh/HomeFragment;->stopCurrentProfile()V

    iget-object p1, p0, Lapp/fast/ssh/MainActivity$3;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-static {p1}, Lapp/fast/ssh/MainActivity;->access$200(Lapp/fast/ssh/MainActivity;)Lapp/fast/ssh/HomeFragment;

    move-result-object p1

    invoke-virtual {p1}, Lapp/fast/ssh/HomeFragment;->stopService()V

    iget-object p1, p0, Lapp/fast/ssh/MainActivity$3;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-virtual {p1}, Lapp/fast/ssh/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lapp/fast/ssh/MainActivity$3;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-virtual {p2}, Lapp/fast/ssh/MainActivity;->finish()V

    iget-object p2, p0, Lapp/fast/ssh/MainActivity$3;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-virtual {p2, p1}, Lapp/fast/ssh/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
