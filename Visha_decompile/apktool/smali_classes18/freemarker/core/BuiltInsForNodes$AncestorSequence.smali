.class Lfreemarker/core/BuiltInsForNodes$AncestorSequence;
.super Lfreemarker/template/SimpleSequence;
.source "SourceFile"

# interfaces
.implements Lxfa;


# instance fields
.field private env:Lfreemarker/core/Environment;


# direct methods
.method public constructor <init>(Lfreemarker/core/Environment;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/template/SimpleSequence;-><init>()V

    iput-object p1, p0, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;->env:Lfreemarker/core/Environment;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;->env:Lfreemarker/core/Environment;

    invoke-direct {v0, v1}, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;-><init>(Lfreemarker/core/Environment;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lfreemarker/template/SimpleSequence;->get(I)Lzfa;

    move-result-object v3

    check-cast v3, Lgga;

    invoke-interface {v3}, Lgga;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lgga;->g()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;->env:Lfreemarker/core/Environment;

    invoke-static {v7, v4, v5, v8}, Ln0a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v3}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    return-object p0
.end method
