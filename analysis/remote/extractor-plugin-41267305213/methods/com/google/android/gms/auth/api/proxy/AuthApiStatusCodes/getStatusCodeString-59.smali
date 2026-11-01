.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "AUTH_APP_CERT_ERROR"

    return-object p0

    :pswitch_1
    const-string p0, "AUTH_URL_RESOLUTION"

    return-object p0

    :pswitch_2
    const-string p0, "AUTH_TOKEN_ERROR"

    return-object p0

    :pswitch_3
    const-string p0, "AUTH_API_SERVER_ERROR"

    return-object p0

    :pswitch_4
    const-string p0, "AUTH_API_CLIENT_ERROR"

    return-object p0

    :pswitch_5
    const-string p0, "AUTH_API_ACCESS_FORBIDDEN"

    return-object p0

    :pswitch_6
    const-string p0, "AUTH_API_INVALID_CREDENTIALS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
