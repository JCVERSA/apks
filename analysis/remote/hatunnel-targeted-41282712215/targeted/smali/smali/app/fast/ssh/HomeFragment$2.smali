.class Lapp/fast/ssh/HomeFragment$2;
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

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$300(Lapp/fast/ssh/HomeFragment;)Lapp/fast/ssh/adapter/MethodAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lapp/fast/ssh/adapter/MethodAdapter;->setPosition(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$100(Lapp/fast/ssh/HomeFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo p4, "\u2ea4"

    invoke-static {p4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    invoke-interface {p1, p4, p5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$100(Lapp/fast/ssh/HomeFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p4, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 p1, 0x5

    const/4 p4, 0x1

    const/16 v0, 0x8

    if-eqz p3, :cond_5

    if-eq p3, p4, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    const/4 v1, 0x4

    if-eq p3, v1, :cond_1

    if-eq p3, p1, :cond_5

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$500(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$600(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$400(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$800(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$500(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$600(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$400(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$800(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$600(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$500(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$400(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$800(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$500(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$600(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$400(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$800(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$400(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$500(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$600(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$800(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-ne p3, p1, :cond_6

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$100(Lapp/fast/ssh/HomeFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo p3, "\u2ea5"

    invoke-static {p3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_0
    const-string/jumbo v1, "\u2ea6"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lapp/fast/ssh/util/AESEncryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "\u2ea7"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "\u2ea8"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u2ea9"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-static {p1, p5}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$800(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$100(Lapp/fast/ssh/HomeFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$2;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$200(Lapp/fast/ssh/HomeFragment;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object p1

    invoke-virtual {p1, p5, p4}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V

    :cond_6
    :goto_0
    if-eqz p2, :cond_7

    const p1, 0x7f09021c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f0800d1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
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
