.class public abstract Lh85;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnk5;

    invoke-direct {p1, p0}, Lnk5;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lnk5;->b()Lnk5$h;

    move-result-object v2

    iget-object v3, v2, Lnk5$h;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnk5;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    iget p1, v2, Lnk5$h;->c:I

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v3, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Could not find matching braces"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Start not found"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
