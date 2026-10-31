.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "InflatePool"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->x1()V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->h:Lo/or4;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
