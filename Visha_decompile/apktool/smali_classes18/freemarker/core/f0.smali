.class public Lfreemarker/core/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbga;


# instance fields
.field public b:I

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lfreemarker/core/g0$a;


# direct methods
.method public constructor <init>(Lfreemarker/core/g0$a;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/f0;->d:Lfreemarker/core/g0$a;

    iput-object p2, p0, Lfreemarker/core/f0;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lfreemarker/core/f0;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lfreemarker/core/f0;->b:I

    iget-object p0, p0, Lfreemarker/core/f0;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Lzfa;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lfreemarker/core/f0;->c:Ljava/util/ArrayList;

    iget v1, p0, Lfreemarker/core/f0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/core/f0;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzfa;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    const-string v1, "There were no more matches"

    invoke-direct {v0, p0, v1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v0
.end method
