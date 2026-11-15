.class Lcom/transsion/widgetslib/dialog/InputDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;->B(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->val$text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v0, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v0, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->f(Lcom/transsion/widgetslib/dialog/InputDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
