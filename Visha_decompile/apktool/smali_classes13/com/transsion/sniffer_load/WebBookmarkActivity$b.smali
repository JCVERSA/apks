.class public Lcom/transsion/sniffer_load/WebBookmarkActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebBookmarkActivity;->g1(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic d:Landroid/widget/Button;

.field public final synthetic e:Lcom/transsion/sniffer_load/WebBookmarkActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->e:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    iput-object p2, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p3, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p4, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->d:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->e:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-static {p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->B0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->e:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-static {p2, v0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->H0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Z)V

    :cond_1
    iget-object p2, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->e:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-static {p2}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->C0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->e:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move v1, p4

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    invoke-static {v0, v1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->I0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Z)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->e:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-static {v1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->E0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->e:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-static {v1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->F0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->e:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-static {v1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->C0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;->e:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->B0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    move p3, p4

    :cond_5
    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
