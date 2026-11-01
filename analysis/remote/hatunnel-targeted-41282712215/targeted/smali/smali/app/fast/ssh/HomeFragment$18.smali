.class Lapp/fast/ssh/HomeFragment$18;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment;->processImportString(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/HomeFragment;

.field final synthetic val$conf:Ljava/lang/String;

.field final synthetic val$protextras:Lorg/json/JSONObject;

.field final synthetic val$query:Lapp/fast/ssh/ExportActivity$TextQuery;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment;Lapp/fast/ssh/ExportActivity$TextQuery;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$18;->this$0:Lapp/fast/ssh/HomeFragment;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment$18;->val$query:Lapp/fast/ssh/ExportActivity$TextQuery;

    iput-object p3, p0, Lapp/fast/ssh/HomeFragment$18;->val$protextras:Lorg/json/JSONObject;

    iput-object p4, p0, Lapp/fast/ssh/HomeFragment$18;->val$conf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    :try_start_0
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$18;->val$query:Lapp/fast/ssh/ExportActivity$TextQuery;

    invoke-virtual {p1}, Lapp/fast/ssh/ExportActivity$TextQuery;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapp/fast/ssh/util/AESEncryption;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment$18;->val$protextras:Lorg/json/JSONObject;

    const-string/jumbo v0, "\u2e8e"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$18;->val$protextras:Lorg/json/JSONObject;

    const-string/jumbo v0, "\u2e8f"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$18;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$3100(Lapp/fast/ssh/HomeFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapp/fast/ssh/util/AESEncryption;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$18;->val$protextras:Lorg/json/JSONObject;

    const-string/jumbo v1, "\u2e90"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$18;->this$0:Lapp/fast/ssh/HomeFragment;

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment$18;->val$conf:Ljava/lang/String;

    invoke-static {p1, p2}, Lapp/fast/ssh/HomeFragment;->access$3200(Lapp/fast/ssh/HomeFragment;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$18;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {p1}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "\u2e91"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$18;->this$0:Lapp/fast/ssh/HomeFragment;

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment$18;->val$conf:Ljava/lang/String;

    invoke-static {p1, p2}, Lapp/fast/ssh/HomeFragment;->access$3200(Lapp/fast/ssh/HomeFragment;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$18;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {p1}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "\u2e92"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
