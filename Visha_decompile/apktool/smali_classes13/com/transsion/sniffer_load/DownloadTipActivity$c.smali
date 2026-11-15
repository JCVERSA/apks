.class public Lcom/transsion/sniffer_load/DownloadTipActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/DownloadTipActivity;->p0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

.field public final synthetic b:Landroid/widget/Button;

.field public final synthetic c:Lcom/transsion/sniffer_load/DownloadTipActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadTipActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$c;->c:Lcom/transsion/sniffer_load/DownloadTipActivity;

    iput-object p2, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$c;->a:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    iput-object p3, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$c;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$c;->a:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$c;->b:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$c;->a:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    :goto_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$c;->b:Landroid/widget/Button;

    xor-int/2addr p1, v3

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_2
    return-void
.end method
