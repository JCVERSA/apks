.class public Lfreemarker/core/BuiltInsForSequences$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Lnga;

.field public final c:Lbfa;

.field public final d:Lfreemarker/core/Environment;

.field public final synthetic e:Lfreemarker/core/BuiltInsForSequences$g;


# direct methods
.method public constructor <init>(Lfreemarker/core/BuiltInsForSequences$g;Lfreemarker/core/Environment;)V
    .locals 4

    .line 2
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->e:Lfreemarker/core/BuiltInsForSequences$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p2}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lnga;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences;->b(Lzfa;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnga;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->b:Lnga;

    if-nez v1, :cond_1

    .line 6
    instance-of v3, v0, Lbfa;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Lbfa;

    :cond_1
    iput-object v2, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->c:Lbfa;

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p0, Lfreemarker/core/NonSequenceOrCollectionException;

    iget-object p1, p1, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw p0

    .line 8
    :cond_3
    :goto_1
    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->d:Lfreemarker/core/Environment;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/BuiltInsForSequences$g;Lfreemarker/core/Environment;Lzl0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/BuiltInsForSequences$g$a;-><init>(Lfreemarker/core/BuiltInsForSequences$g;Lfreemarker/core/Environment;)V

    return-void
.end method


# virtual methods
.method public b(Lzfa;)I
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, Lfreemarker/core/BuiltInsForSequences$g$a;->e(Lzfa;II)I

    move-result p0

    return p0
.end method

.method public c(Lzfa;I)I
    .locals 2

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->e:Lfreemarker/core/BuiltInsForSequences$g;

    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$g;->h0(Lfreemarker/core/BuiltInsForSequences$g;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/core/BuiltInsForSequences$g$a;->e(Lzfa;II)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lfreemarker/core/BuiltInsForSequences$g$a;->e(Lzfa;II)I

    move-result p0

    return p0
.end method

.method public e(Lzfa;II)I
    .locals 5

    const/4 v0, -0x1

    if-gez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->c:Lbfa;

    invoke-interface {v1}, Lbfa;->iterator()Lbga;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lbga;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    if-le v2, p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lbga;->next()Lzfa;

    move-result-object v3

    if-lt v2, p2, :cond_3

    iget-object v4, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->d:Lfreemarker/core/Environment;

    invoke-static {v2, v3, p1, v4}, Lfreemarker/core/BuiltInsForSequences;->a(ILzfa;Lzfa;Lfreemarker/core/Environment;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->e:Lfreemarker/core/BuiltInsForSequences$g;

    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$g;->h0(Lfreemarker/core/BuiltInsForSequences$g;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public final exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->e:Lfreemarker/core/BuiltInsForSequences$g;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/j;->Y(III)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzfa;

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->e:Lfreemarker/core/BuiltInsForSequences$g;

    invoke-virtual {v0, p1, v3}, Lfreemarker/core/j;->b0(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->b:Lnga;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/BuiltInsForSequences$g$a;->m(Lzfa;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/BuiltInsForSequences$g$a;->c(Lzfa;I)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->b:Lnga;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lfreemarker/core/BuiltInsForSequences$g$a;->l(Lzfa;)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lfreemarker/core/BuiltInsForSequences$g$a;->b(Lzfa;)I

    move-result p0

    :goto_0
    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    sget-object p0, Lfreemarker/template/utility/Constants;->f:Lhga;

    goto :goto_1

    :cond_3
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public l(Lzfa;)I
    .locals 3

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->b:Lnga;

    invoke-interface {v0}, Lnga;->size()I

    move-result v0

    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->e:Lfreemarker/core/BuiltInsForSequences$g;

    invoke-static {v1}, Lfreemarker/core/BuiltInsForSequences$g;->h0(Lfreemarker/core/BuiltInsForSequences$g;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lfreemarker/core/BuiltInsForSequences$g$a;->n(Lzfa;II)I

    move-result p0

    return p0
.end method

.method public final m(Lzfa;I)I
    .locals 4

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->b:Lnga;

    invoke-interface {v0}, Lnga;->size()I

    move-result v0

    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->e:Lfreemarker/core/BuiltInsForSequences$g;

    invoke-static {v1}, Lfreemarker/core/BuiltInsForSequences$g;->h0(Lfreemarker/core/BuiltInsForSequences$g;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v2, :cond_1

    if-lt p2, v0, :cond_0

    return v3

    :cond_0
    if-gez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, v0, -0x1

    :cond_2
    if-gez p2, :cond_3

    return v3

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/core/BuiltInsForSequences$g$a;->n(Lzfa;II)I

    move-result p0

    return p0
.end method

.method public final n(Lzfa;II)I
    .locals 2

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->e:Lfreemarker/core/BuiltInsForSequences$g;

    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$g;->h0(Lfreemarker/core/BuiltInsForSequences$g;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :goto_0
    if-ge p2, p3, :cond_3

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->b:Lnga;

    invoke-interface {v0, p2}, Lnga;->get(I)Lzfa;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->d:Lfreemarker/core/Environment;

    invoke-static {p2, v0, p1, v1}, Lfreemarker/core/BuiltInsForSequences;->a(ILzfa;Lzfa;Lfreemarker/core/Environment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz p2, :cond_3

    iget-object p3, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->b:Lnga;

    invoke-interface {p3, p2}, Lnga;->get(I)Lzfa;

    move-result-object p3

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$g$a;->d:Lfreemarker/core/Environment;

    invoke-static {p2, p3, p1, v0}, Lfreemarker/core/BuiltInsForSequences;->a(ILzfa;Lzfa;Lfreemarker/core/Environment;)Z

    move-result p3

    if-eqz p3, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method
