.class public Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/DownloadFeedBackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c$a;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/CheckedTextView;

.field public c:Landroid/widget/CheckedTextView;

.field public d:Z

.field public e:Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CheckedTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->c:Landroid/widget/CheckedTextView;

    return-void
.end method

.method public b(Landroid/widget/CheckedTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->b:Landroid/widget/CheckedTextView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->b:Landroid/widget/CheckedTextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->b(Landroid/widget/CheckedTextView;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lcom/transsion/sniffer_load/R$id;->cb1:I

    if-ne v0, v3, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/sniffer_load/R$id;->cb2:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    :goto_0
    const-string v0, "dl_brower_rp_c_adl_guide_fb_op_cl"

    const-string v3, "btn"

    invoke-static {v0, v3, p1}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->b:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->c:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->d:Z

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->e:Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c$a;

    if-eqz p0, :cond_6

    invoke-interface {p0, v1}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c$a;->a(Z)V

    :cond_6
    return-void
.end method

.method public setBreakListener(Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->e:Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c$a;

    return-void
.end method
