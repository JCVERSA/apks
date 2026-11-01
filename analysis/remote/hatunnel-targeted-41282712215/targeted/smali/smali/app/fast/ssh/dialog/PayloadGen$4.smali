.class Lapp/fast/ssh/dialog/PayloadGen$4;
.super Ljava/lang/Object;
.source "PayloadGen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/dialog/PayloadGen;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/dialog/PayloadGen;


# direct methods
.method constructor <init>(Lapp/fast/ssh/dialog/PayloadGen;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen$4;->this$0:Lapp/fast/ssh/dialog/PayloadGen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen$4;->this$0:Lapp/fast/ssh/dialog/PayloadGen;

    invoke-static {p1}, Lapp/fast/ssh/dialog/PayloadGen;->access$100(Lapp/fast/ssh/dialog/PayloadGen;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen$4;->this$0:Lapp/fast/ssh/dialog/PayloadGen;

    invoke-static {p1}, Lapp/fast/ssh/dialog/PayloadGen;->access$200(Lapp/fast/ssh/dialog/PayloadGen;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen$4;->this$0:Lapp/fast/ssh/dialog/PayloadGen;

    invoke-static {p1, v0}, Lapp/fast/ssh/dialog/PayloadGen;->access$300(Lapp/fast/ssh/dialog/PayloadGen;Z)V

    return-void
.end method
