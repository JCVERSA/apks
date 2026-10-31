.method public static d(J)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lo/nr;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/sql/Date;

    invoke-direct {v1, p0, p1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
