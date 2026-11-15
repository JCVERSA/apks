.class public Lfreemarker/template/Template$a;
.super Ljava/io/FilterReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/StringBuffer;

.field public c:I

.field public d:Z

.field public e:Ljava/io/IOException;

.field public final synthetic f:Lfreemarker/template/Template;


# direct methods
.method public constructor <init>(Lfreemarker/template/Template;Ljava/io/Reader;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/template/Template$a;->f:Lfreemarker/template/Template;

    invoke-direct {p0, p2}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lfreemarker/template/Template$a;->b:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xd

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lfreemarker/template/Template$a;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x8

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lfreemarker/template/Template$a;->b:Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/template/Template$a;->b:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    :goto_1
    iget v3, p0, Lfreemarker/template/Template$a;->c:I

    if-ne v3, v1, :cond_3

    if-ne p1, v2, :cond_3

    iget-object v0, p0, Lfreemarker/template/Template$a;->f:Lfreemarker/template/Template;

    invoke-static {v0}, Lfreemarker/template/Template;->m0(Lfreemarker/template/Template;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lfreemarker/template/Template$a;->f:Lfreemarker/template/Template;

    invoke-static {v1}, Lfreemarker/template/Template;->m0(Lfreemarker/template/Template;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/template/Template$a;->f:Lfreemarker/template/Template;

    invoke-static {v3}, Lfreemarker/template/Template;->m0(Lfreemarker/template/Template;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lfreemarker/template/Template$a;->b:Ljava/lang/StringBuffer;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/template/Template$a;->f:Lfreemarker/template/Template;

    invoke-static {v1}, Lfreemarker/template/Template;->m0(Lfreemarker/template/Template;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/template/Template$a;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lfreemarker/template/Template$a;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_4
    :goto_2
    iput p1, p0, Lfreemarker/template/Template$a;->c:I

    return-void
.end method

.method public final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    iget-boolean v0, p0, Lfreemarker/template/Template$a;->d:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lfreemarker/template/Template$a;->e:Ljava/io/IOException;

    :cond_0
    return-object p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lfreemarker/template/Template$a;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lfreemarker/template/Template$a;->f:Lfreemarker/template/Template;

    invoke-static {v0}, Lfreemarker/template/Template;->m0(Lfreemarker/template/Template;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/template/Template$a;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lfreemarker/template/Template$a;->b:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    invoke-super {p0}, Ljava/io/FilterReader;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfreemarker/template/Template$a;->d:Z

    return-void
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lfreemarker/template/Template$a;->e:Ljava/io/IOException;

    if-nez p0, :cond_0

    return-void

    :cond_0
    throw p0
.end method

.method public read()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lfreemarker/template/Template$a;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {p0, v0}, Lfreemarker/template/Template$a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public read([CII)I
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p3

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 5
    aget-char v1, p1, v0

    .line 6
    invoke-virtual {p0, v1}, Lfreemarker/template/Template$a;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return p3

    .line 7
    :goto_1
    invoke-virtual {p0, p1}, Lfreemarker/template/Template$a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method
