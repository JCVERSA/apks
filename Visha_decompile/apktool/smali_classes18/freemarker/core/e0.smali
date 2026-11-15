.class public Lfreemarker/core/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbga;


# instance fields
.field public b:I

.field public c:Z

.field public final synthetic d:Ljava/util/regex/Matcher;

.field public final synthetic e:Lfreemarker/core/g0$a;


# direct methods
.method public constructor <init>(Lfreemarker/core/g0$a;Ljava/util/regex/Matcher;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/e0;->e:Lfreemarker/core/g0$a;

    iput-object p2, p0, Lfreemarker/core/e0;->d:Ljava/util/regex/Matcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lfreemarker/core/e0;->b:I

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    iput-boolean p1, p0, Lfreemarker/core/e0;->c:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/e0;->e:Lfreemarker/core/g0$a;

    invoke-static {v0}, Lfreemarker/core/g0$a;->b(Lfreemarker/core/g0$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lfreemarker/core/e0;->c:Z

    return p0

    :cond_0
    iget p0, p0, Lfreemarker/core/e0;->b:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Lzfa;
    .locals 4

    iget-object v0, p0, Lfreemarker/core/e0;->e:Lfreemarker/core/g0$a;

    invoke-static {v0}, Lfreemarker/core/g0$a;->b(Lfreemarker/core/g0$a;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "There were no more matches"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lfreemarker/core/e0;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lfreemarker/core/g0$a$a;

    iget-object v1, p0, Lfreemarker/core/e0;->e:Lfreemarker/core/g0$a;

    iget-object v1, v1, Lfreemarker/core/g0$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/core/e0;->d:Ljava/util/regex/Matcher;

    invoke-direct {v0, v1, v2}, Lfreemarker/core/g0$a$a;-><init>(Ljava/lang/String;Ljava/util/regex/Matcher;)V

    iget v1, p0, Lfreemarker/core/e0;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/core/e0;->b:I

    iget-object v1, p0, Lfreemarker/core/e0;->d:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    iput-boolean v1, p0, Lfreemarker/core/e0;->c:Z

    return-object v0

    :cond_0
    new-instance p0, Lfreemarker/core/_TemplateModelException;

    invoke-direct {p0, v1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    iget v2, p0, Lfreemarker/core/e0;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lfreemarker/core/e0;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzfa;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    invoke-direct {v0, p0, v1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v0
.end method
