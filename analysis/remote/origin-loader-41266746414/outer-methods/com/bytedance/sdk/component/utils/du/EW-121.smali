.method public static EW(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 6

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-class v4, Landroid/content/res/AssetManager;

    const-string v5, "addAssetPath"

    invoke-static {v4, v5, v2}, Lcom/bytedance/sdk/component/utils/XiW;->EW(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_0

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v0, v2, v3

    invoke-static {v4, v5, v2}, Lcom/bytedance/sdk/component/utils/XiW;->EW(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ltz v0, :cond_2

    :try_start_0
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return v1

    :catch_0
    nop

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    return v3
.end method
