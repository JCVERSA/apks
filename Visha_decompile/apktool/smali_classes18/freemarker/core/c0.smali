.class public Lfreemarker/core/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnga;


# instance fields
.field public final b:I

.field public final synthetic c:I

.field public final synthetic d:Lfreemarker/core/BuiltInsForSequences$a$b;


# direct methods
.method public constructor <init>(Lfreemarker/core/BuiltInsForSequences$a$b;I)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/c0;->d:Lfreemarker/core/BuiltInsForSequences$a$b;

    iput p2, p0, Lfreemarker/core/c0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$a$b;->b(Lfreemarker/core/BuiltInsForSequences$a$b;)I

    move-result p1

    mul-int/2addr p2, p1

    iput p2, p0, Lfreemarker/core/c0;->b:I

    return-void
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 2

    iget v0, p0, Lfreemarker/core/c0;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lfreemarker/core/c0;->d:Lfreemarker/core/BuiltInsForSequences$a$b;

    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$a$b;->c(Lfreemarker/core/BuiltInsForSequences$a$b;)Lnga;

    move-result-object p1

    invoke-interface {p1}, Lnga;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget-object p0, p0, Lfreemarker/core/c0;->d:Lfreemarker/core/BuiltInsForSequences$a$b;

    invoke-static {p0}, Lfreemarker/core/BuiltInsForSequences$a$b;->c(Lfreemarker/core/BuiltInsForSequences$a$b;)Lnga;

    move-result-object p0

    invoke-interface {p0, v0}, Lnga;->get(I)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lfreemarker/core/c0;->d:Lfreemarker/core/BuiltInsForSequences$a$b;

    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$a$b;->e(Lfreemarker/core/BuiltInsForSequences$a$b;)I

    move-result p1

    iget-object v1, p0, Lfreemarker/core/c0;->d:Lfreemarker/core/BuiltInsForSequences$a$b;

    invoke-static {v1}, Lfreemarker/core/BuiltInsForSequences$a$b;->b(Lfreemarker/core/BuiltInsForSequences$a$b;)I

    move-result v1

    mul-int/2addr p1, v1

    if-ge v0, p1, :cond_1

    iget-object p0, p0, Lfreemarker/core/c0;->d:Lfreemarker/core/BuiltInsForSequences$a$b;

    invoke-static {p0}, Lfreemarker/core/BuiltInsForSequences$a$b;->l(Lfreemarker/core/BuiltInsForSequences$a$b;)Lzfa;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lfreemarker/core/c0;->d:Lfreemarker/core/BuiltInsForSequences$a$b;

    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$a$b;->l(Lfreemarker/core/BuiltInsForSequences$a$b;)Lzfa;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lfreemarker/core/c0;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lfreemarker/core/c0;->d:Lfreemarker/core/BuiltInsForSequences$a$b;

    invoke-static {v1}, Lfreemarker/core/BuiltInsForSequences$a$b;->e(Lfreemarker/core/BuiltInsForSequences$a$b;)I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/c0;->d:Lfreemarker/core/BuiltInsForSequences$a$b;

    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$a$b;->c(Lfreemarker/core/BuiltInsForSequences$a$b;)Lnga;

    move-result-object v0

    invoke-interface {v0}, Lnga;->size()I

    move-result v0

    iget p0, p0, Lfreemarker/core/c0;->b:I

    sub-int/2addr v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lfreemarker/core/c0;->d:Lfreemarker/core/BuiltInsForSequences$a$b;

    invoke-static {p0}, Lfreemarker/core/BuiltInsForSequences$a$b;->b(Lfreemarker/core/BuiltInsForSequences$a$b;)I

    move-result v0

    :goto_1
    return v0
.end method
