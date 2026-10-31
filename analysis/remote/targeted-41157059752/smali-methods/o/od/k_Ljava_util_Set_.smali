.method public static k()Ljava/util/Set;
    .locals 6

    const/4 v5, 0x6

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v5, 0x3

    const-string v1, "abwrs/brcdo_elosy/p"

    const-string v1, "/ad_policy/browsers"

    const-string v2, ""

    const/4 v5, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-instance v1, Ljava/util/HashSet;

    const/4 v5, 0x3

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ","

    const/4 v5, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    if-eqz v2, :cond_0

    const/4 v5, 0x7

    array-length v0, v2

    const/4 v5, 0x2

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x6

    if-ge v3, v0, :cond_1

    const/4 v5, 0x4

    aget-object v4, v2, v3

    const/4 v5, 0x5

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    new-instance v1, Ljava/util/HashSet;

    const/4 v5, 0x7

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v5, 0x7

    return-object v1
.end method
