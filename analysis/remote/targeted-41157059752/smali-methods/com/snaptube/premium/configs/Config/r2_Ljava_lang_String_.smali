.method public static r2()Ljava/lang/String;
    .locals 2

    const-string v0, "key.web_search_result_url"

    const-string v1, "https://m.youtube.com/results?"

    invoke-static {v0, v1}, Lcom/snaptube/premium/configs/Config;->h1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
