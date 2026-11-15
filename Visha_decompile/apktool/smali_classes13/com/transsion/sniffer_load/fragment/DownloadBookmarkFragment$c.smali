.class public Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->C0(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/dbdata/beans/sniff/Bookmark;

.field public final synthetic e:Landroid/widget/Button;

.field public final synthetic f:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;ZLcom/transsion/dbdata/beans/sniff/Bookmark;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;->f:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-boolean p3, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;->c:Z

    iput-object p4, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;->d:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iput-object p5, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;->e:Landroid/widget/Button;

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
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;->c:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;->d:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;->d:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;->e:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
