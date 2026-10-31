.method public static k(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v4, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-static {}, Lo/sq5;->c()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {}, Lo/sq5;->b()Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {}, Lo/uh;->f()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v2}, Lo/sq5;->n(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x72ca2557 -> :sswitch_2
        -0x6c1165bf -> :sswitch_1
        0x516a29a7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
