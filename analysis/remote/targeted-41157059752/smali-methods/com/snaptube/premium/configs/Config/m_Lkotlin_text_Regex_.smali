.method public static m()Lkotlin/text/Regex;
    .locals 2

    :try_start_0
    const-string v0, "key.adult_website"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/snaptube/premium/configs/Config;->h1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "https?://.*\\.(pornhub|xvideos|xnxx)\\..*"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
