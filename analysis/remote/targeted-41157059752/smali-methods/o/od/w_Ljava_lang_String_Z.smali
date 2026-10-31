.method public static w(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x5

    const-string v1, "nmilorbl/lrb/_ufese_sdxe/eeri_aanrspudigxn"

    const-string v1, "/selfbuild/adx_banner/impression_url_regex"

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x7

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 v3, 0x3

    const/4 p0, 0x0

    const/4 v3, 0x6

    return p0
.end method
