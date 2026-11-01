.class Lapp/fast/ssh/HomeFragment$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/HomeFragment;
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

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$3;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$3;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$1000(Lapp/fast/ssh/HomeFragment;)Lapp/fast/ssh/adapter/MethodAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lapp/fast/ssh/adapter/MethodAdapter;->setPosition(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$3;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$100(Lapp/fast/ssh/HomeFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo p4, "\u2eaa"

    invoke-static {p4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    invoke-interface {p1, p4, p5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$3;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$100(Lapp/fast/ssh/HomeFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p4, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x7f09021c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f0800d1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
