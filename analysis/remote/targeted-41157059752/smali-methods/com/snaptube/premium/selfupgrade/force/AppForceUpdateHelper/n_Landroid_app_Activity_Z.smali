.method public final n(Landroid/app/Activity;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "intercom"

    invoke-static {v0, v5, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->S(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    instance-of v0, p1, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
