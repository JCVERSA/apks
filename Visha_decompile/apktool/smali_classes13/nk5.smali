.class public Lnk5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnk5$h;,
        Lnk5$d;,
        Lnk5$g;,
        Lnk5$c;,
        Lnk5$e;,
        Lnk5$b;,
        Lnk5$f;
    }
.end annotation


# instance fields
.field public final a:Lopa;

.field public final b:Lnk5$d;

.field public final c:Ljava/util/Stack;

.field public final d:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lnk5;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lopa;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lopa;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lnk5;->a:Lopa;

    .line 3
    new-instance p1, Lnk5$d;

    invoke-direct {p1}, Lnk5$d;-><init>()V

    iput-object p1, p0, Lnk5;->b:Lnk5$d;

    .line 4
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lnk5;->c:Ljava/util/Stack;

    .line 5
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lnk5;->d:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public a(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z
    .locals 0

    iget-boolean p0, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isOp:Z

    if-nez p0, :cond_1

    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq p1, p0, :cond_1

    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public b()Lnk5$h;
    .locals 4

    iget-object v0, p0, Lnk5;->a:Lopa;

    invoke-virtual {v0}, Lopa;->t()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnk5;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnk5;->a:Lopa;

    invoke-virtual {v1, v0}, Lopa;->w(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)V

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->REGEXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    :cond_1
    new-instance v1, Lnk5$h;

    iget-object v2, p0, Lnk5;->a:Lopa;

    iget v3, v2, Lopa;->o:I

    iget v2, v2, Lopa;->p:I

    invoke-direct {v1, v0, v3, v2}, Lnk5$h;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;II)V

    invoke-virtual {p0, v1}, Lnk5;->i(Lnk5$h;)V

    return-object v1
.end method

.method public c(I)V
    .locals 3

    iget-object v0, p0, Lnk5;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lnk5;->b:Lnk5$d;

    new-instance v0, Lnk5$c;

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object v2, p0, Lnk5;->a:Lopa;

    iget v2, v2, Lopa;->k:I

    iget-object p0, p0, Lnk5;->c:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnk5$b;

    invoke-direct {v0, v1, v2, p0}, Lnk5$c;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILnk5$b;)V

    invoke-virtual {p1, v0}, Lnk5$d;->c(Lnk5$e;)V

    return-void

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unmatched closing brace at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(I)V
    .locals 3

    iget-object v0, p0, Lnk5;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lnk5;->b:Lnk5$d;

    new-instance v0, Lnk5$g;

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object v2, p0, Lnk5;->a:Lopa;

    iget v2, v2, Lopa;->k:I

    iget-object p0, p0, Lnk5;->d:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnk5$f;

    invoke-direct {v0, v1, v2, p0}, Lnk5$g;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILnk5$f;)V

    invoke-virtual {p1, v0}, Lnk5$d;->c(Lnk5$e;)V

    return-void

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unmached closing paren at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->a()Lnk5$e;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lnk5$a;->a:[I

    iget-object v2, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v2}, Lnk5$d;->a()Lnk5$e;

    move-result-object v2

    iget-object v2, v2, Lnk5$e;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->a()Lnk5$e;

    move-result-object v0

    iget-object v0, v0, Lnk5$e;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-boolean v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isOp:Z

    xor-int/2addr v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->e()Lnk5$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->e()Lnk5$e;

    move-result-object v0

    iget v0, v0, Lnk5$e;->b:I

    iget-object v3, p0, Lnk5;->a:Lopa;

    iget v3, v3, Lopa;->k:I

    if-eq v0, v3, :cond_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnk5;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnk5;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnk5$b;

    iget-boolean v0, v0, Lnk5$b;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :pswitch_2
    move v1, v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->a()Lnk5$e;

    move-result-object v0

    instance-of v0, v0, Lnk5$g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->a()Lnk5$e;

    move-result-object v0

    iget-object v0, v0, Lnk5$e;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->a()Lnk5$e;

    move-result-object v0

    check-cast v0, Lnk5$g;

    iget-object v0, v0, Lnk5$g;->c:Lnk5$f;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v2, Lnk5$b;

    invoke-direct {v2, v1, v0}, Lnk5$b;-><init>(ZLnk5$f;)V

    iget-object v0, p0, Lnk5;->c:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    new-instance v1, Lnk5$c;

    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object p0, p0, Lnk5;->a:Lopa;

    iget p0, p0, Lopa;->k:I

    invoke-direct {v1, v3, p0, v2}, Lnk5$c;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILnk5$b;)V

    invoke-virtual {v0, v1}, Lnk5$d;->c(Lnk5$e;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v0, v1}, Lnk5$d;->b(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->e()Lnk5$e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->e()Lnk5$e;

    move-result-object v0

    iget-object v0, v0, Lnk5$e;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {p0, v0}, Lnk5;->a(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0, v1}, Lnk5$d;->f(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->d()Lnk5$e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->d()Lnk5$e;

    move-result-object v0

    iget-object v0, v0, Lnk5$e;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {p0, v0}, Lnk5;->a(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    iget-object v1, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v1}, Lnk5$d;->a()Lnk5$e;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v1}, Lnk5$d;->a()Lnk5$e;

    move-result-object v1

    iget-object v1, v1, Lnk5$e;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isConditional()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    new-instance v1, Lnk5$f;

    invoke-direct {v1, v0, v2}, Lnk5$f;-><init>(ZZ)V

    iget-object v0, p0, Lnk5;->d:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    new-instance v2, Lnk5$g;

    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object p0, p0, Lnk5;->a:Lopa;

    iget p0, p0, Lopa;->k:I

    invoke-direct {v2, v3, p0, v1}, Lnk5$g;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILnk5$f;)V

    invoke-virtual {v0, v2}, Lnk5$d;->c(Lnk5$e;)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lnk5;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnk5;->d:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()Z
    .locals 4

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->a()Lnk5$e;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v0}, Lnk5$d;->a()Lnk5$e;

    move-result-object v0

    iget-object v0, v0, Lnk5$e;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-boolean v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isKeyw:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v2}, Lnk5$d;->a()Lnk5$e;

    move-result-object v2

    instance-of v2, v2, Lnk5$g;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {p0}, Lnk5$d;->a()Lnk5$e;

    move-result-object p0

    check-cast p0, Lnk5$g;

    iget-object p0, p0, Lnk5$g;->c:Lnk5$f;

    iget-boolean p0, p0, Lnk5$f;->b:Z

    return p0

    :cond_2
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {v2}, Lnk5$d;->a()Lnk5$e;

    move-result-object v2

    instance-of v2, v2, Lnk5$c;

    if-eqz v2, :cond_5

    iget-object p0, p0, Lnk5;->b:Lnk5$d;

    invoke-virtual {p0}, Lnk5$d;->a()Lnk5$e;

    move-result-object p0

    check-cast p0, Lnk5$c;

    iget-object p0, p0, Lnk5$c;->c:Lnk5$b;

    iget-boolean v0, p0, Lnk5$b;->a:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lnk5$b;->b:Lnk5$f;

    if-eqz p0, :cond_3

    iget-boolean p0, p0, Lnk5$f;->a:Z

    xor-int/2addr p0, v1

    return p0

    :cond_3
    return v1

    :cond_4
    return v3

    :cond_5
    iget-boolean p0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isPunct:Z

    if-eqz p0, :cond_7

    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, p0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    return v1

    :cond_7
    return v3

    :cond_8
    return v1
.end method

.method public i(Lnk5$h;)V
    .locals 2

    iget-object v0, p1, Lnk5$h;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-boolean v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isPunct:Z

    if-eqz v1, :cond_4

    sget-object v1, Lnk5$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Lnk5$h;->b:I

    invoke-virtual {p0, p1}, Lnk5;->c(I)V

    return-void

    :cond_1
    iget p1, p1, Lnk5$h;->b:I

    invoke-virtual {p0, p1}, Lnk5;->d(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lnk5;->e()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lnk5;->f()V

    return-void

    :cond_4
    :goto_0
    iget-object p1, p1, Lnk5$h;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lnk5;->b:Lnk5$d;

    new-instance v1, Lnk5$e;

    iget-object p0, p0, Lnk5;->a:Lopa;

    iget p0, p0, Lopa;->k:I

    invoke-direct {v1, p1, p0}, Lnk5$e;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;I)V

    invoke-virtual {v0, v1}, Lnk5$d;->c(Lnk5$e;)V

    :cond_5
    return-void
.end method
