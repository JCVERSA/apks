.class public abstract Llvd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/mgmi/model/VASTAd;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u00b7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "\u5e7f\u544a"

    return-object p0
.end method

.method public static b(Lcom/mgmi/model/VASTAd;Landroid/widget/TextView;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->isShowAdLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Llvd;->a(Lcom/mgmi/model/VASTAd;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-static {p1, p0}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method
