.class public final Lfga$b;
.super Lfga;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfga;-><init>(Lega;)V

    return-void
.end method

.method public synthetic constructor <init>(Lega;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfga$b;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lfga;->a(Ljava/lang/String;)V

    const/16 v0, 0x5c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lfga$b;->g(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v2, v0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {p0, v0}, Lfga$b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfga$b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lfga$b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfga$b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Lfreemarker/template/MalformedTemplateNameException;

    const-string v0, "The \':\' character can only be used after the scheme name (if there\'s any), not in the path part"

    invoke-direct {p0, p1, v0}, Lfreemarker/template/MalformedTemplateNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lfreemarker/template/MalformedTemplateNameException;

    const-string v0, "Backslash (\"\\\") is not allowed in template names. Use slash (\"/\") instead."

    invoke-direct {p0, p1, v0}, Lfreemarker/template/MalformedTemplateNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p2}, Lfga$b;->g(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lfga$b;->g(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    return-object p2

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lfga$b;->g(Ljava/lang/String;)I

    move-result v0

    :cond_4
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_5
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/String;)I
    .locals 3

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    add-int/lit8 v1, p0, -0x1

    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v2, :cond_1

    add-int/lit8 p0, p0, 0x3

    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    if-gez p0, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, p0, -0x1

    const/16 v1, 0x2f

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, p0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object p1, p0

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_2
    move p0, v0

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :goto_0
    const-string p0, "//"

    const-string v0, "/"

    invoke-static {p1, p0, v0}, Ln0a;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-ne p1, p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move-object p1, p0

    goto :goto_0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :goto_0
    const-string p0, "*/*"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    const/16 v1, 0x2f

    if-ne p0, v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p0, :cond_1

    add-int/lit8 v0, p0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    add-int/lit8 v0, p0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, p1

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-ne p1, p0, :cond_6

    move-object p1, p0

    :goto_3
    const-string p0, "*"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    const-string p1, ""

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v1, :cond_5

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_4
    return-object p1

    :cond_6
    move-object p1, p0

    goto :goto_0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const-string v1, ".."

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    if-eqz v0, :cond_a

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_3

    move v1, p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_1
    add-int/lit8 v3, v0, -0x2

    move v5, p0

    :goto_2
    const/4 v6, -0x1

    if-eq v3, v6, :cond_9

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    const/16 v8, 0x2a

    if-ne v7, v6, :cond_5

    if-nez v3, :cond_6

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p2}, Lfga;->b(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;

    move-result-object p0

    throw p0

    :cond_5
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_6

    add-int/lit8 v3, v7, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_6

    add-int/lit8 v3, v7, -0x1

    move v5, v4

    goto :goto_2

    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {p1, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_7

    const-string v4, "*/"

    goto :goto_4

    :cond_7
    const-string v4, ""

    :goto_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    goto :goto_5

    :cond_8
    const/4 v1, 0x2

    :goto_5
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    move v0, v3

    goto/16 :goto_0

    :cond_9
    invoke-static {p2}, Lfga;->b(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;

    move-result-object p0

    throw p0

    :cond_a
    invoke-static {p2}, Lfga;->b(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;

    move-result-object p0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "TemplateNameFormat.DEFAULT_2_4_0"

    return-object p0
.end method
