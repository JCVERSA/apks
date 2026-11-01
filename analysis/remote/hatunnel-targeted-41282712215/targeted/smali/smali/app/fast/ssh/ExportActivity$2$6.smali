.class Lapp/fast/ssh/ExportActivity$2$6;
.super Ljava/lang/Object;
.source "ExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/ExportActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/ExportActivity$2;

.field final synthetic val$checkBox:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lapp/fast/ssh/ExportActivity$2;Landroid/widget/CompoundButton;)V
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

    iput-object p1, p0, Lapp/fast/ssh/ExportActivity$2$6;->this$1:Lapp/fast/ssh/ExportActivity$2;

    iput-object p2, p0, Lapp/fast/ssh/ExportActivity$2$6;->val$checkBox:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    iget-object p1, p0, Lapp/fast/ssh/ExportActivity$2$6;->this$1:Lapp/fast/ssh/ExportActivity$2;

    iget-object p1, p1, Lapp/fast/ssh/ExportActivity$2;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-static {p1}, Lapp/fast/ssh/ExportActivity;->access$400(Lapp/fast/ssh/ExportActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/ExportActivity$2$6;->val$checkBox:Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
