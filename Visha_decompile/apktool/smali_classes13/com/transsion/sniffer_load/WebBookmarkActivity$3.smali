.class Lcom/transsion/sniffer_load/WebBookmarkActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebBookmarkActivity;->e1(Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mRetries:I

.field final synthetic this$0:Lcom/transsion/sniffer_load/WebBookmarkActivity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;->this$0:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    iput-object p2, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;->mRetries:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;->val$editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;->mRetries:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;->mRetries:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;->val$editText:Landroid/widget/EditText;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
