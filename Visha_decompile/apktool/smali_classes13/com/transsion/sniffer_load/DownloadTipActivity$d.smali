.class public Lcom/transsion/sniffer_load/DownloadTipActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/DownloadTipActivity;->p0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;

.field public final synthetic c:Landroid/widget/Button;

.field public final synthetic d:Lcom/transsion/sniffer_load/DownloadTipActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadTipActivity;Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$d;->d:Lcom/transsion/sniffer_load/DownloadTipActivity;

    iput-object p2, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$d;->b:Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;

    iput-object p3, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$d;->c:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$d;->b:Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;

    iget-boolean v0, v0, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$d;->c:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_0
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
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$d;->c:Landroid/widget/Button;

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
