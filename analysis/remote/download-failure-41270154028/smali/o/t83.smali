.class public Lo/t83;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x5

    if-nez v0, :cond_0

    :try_start_0
    const/4 v2, 0x0

    const-string v0, "max-age="

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    return p0

    :catch_0
    :cond_0
    const/4 v2, 0x4

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/List;)I
    .locals 5

    const/4 v0, 0x7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v4, 0x0

    return v0

    :cond_0
    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_2

    const/4 v4, 0x4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x7

    check-cast v1, Lcom/snaptube/video/videoextractor/net/HttpHeader;

    const/4 v4, 0x3

    invoke-virtual {v1}, Lcom/snaptube/video/videoextractor/net/HttpHeader;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    const-string v3, "reslonCChotac"

    const-string v3, "Cache-Control"

    const/4 v4, 0x7

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/snaptube/video/videoextractor/net/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    invoke-static {p0}, Lo/t83;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Lo/a93;)I
    .locals 2

    const-string v0, "Cache-Control"

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lo/a93;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-static {p0}, Lo/t83;->a(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x4

    return p0
.end method
