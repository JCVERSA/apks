.class Lapp/fast/ssh/HomeFragment$26$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment$26;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/HomeFragment$26;

.field final synthetic val$click_target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment$26;Ljava/lang/String;)V
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

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$26$1;->this$1:Lapp/fast/ssh/HomeFragment$26;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment$26$1;->val$click_target:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "\u2e9f"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$26$1;->val$click_target:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$26$1;->this$1:Lapp/fast/ssh/HomeFragment$26;

    iget-object v0, v0, Lapp/fast/ssh/HomeFragment$26;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0, p1}, Lapp/fast/ssh/HomeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
