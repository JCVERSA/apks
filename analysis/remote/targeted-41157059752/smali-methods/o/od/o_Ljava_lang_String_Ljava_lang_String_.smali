.method public static varargs o([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v5, 0x3

    if-nez v0, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :cond_0
    const/4 v5, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    const-string v1, "/"

    const/4 v5, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    array-length v2, p0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    const/4 v5, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    const-string p0, ""

    return-object p0
.end method
