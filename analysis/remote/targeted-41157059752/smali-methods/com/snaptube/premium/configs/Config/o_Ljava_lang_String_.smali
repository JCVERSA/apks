.method public static o()Ljava/lang/String;
    .locals 2

    const-string v0, "key.audio_support_multi_download_regex"

    const-string v1, "https?://[^/]*(youtube.com|youtu.be).*"

    invoke-static {v0, v1}, Lcom/snaptube/premium/configs/Config;->h1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
