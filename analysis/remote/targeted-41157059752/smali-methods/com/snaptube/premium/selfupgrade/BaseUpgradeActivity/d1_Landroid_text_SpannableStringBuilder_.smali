.method public final d1()Landroid/text/SpannableStringBuilder;
    .locals 8

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getChangeLog()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    new-instance v6, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$e;

    invoke-direct {v6, p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$e;-><init>(Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;)V

    const/16 v7, 0x21

    invoke-virtual {v1, v6, v5, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
