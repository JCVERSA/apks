.class Lapp/fast/ssh/dialog/PayloadGen$7;
.super Ljava/lang/Object;
.source "PayloadGen.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/dialog/PayloadGen;->generate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/dialog/PayloadGen;

.field final synthetic val$back_query:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lapp/fast/ssh/dialog/PayloadGen;Landroid/widget/CheckBox;)V
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

    iput-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen$7;->this$0:Lapp/fast/ssh/dialog/PayloadGen;

    iput-object p2, p0, Lapp/fast/ssh/dialog/PayloadGen$7;->val$back_query:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    if-eqz p2, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen$7;->val$back_query:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen$7;->val$back_query:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
