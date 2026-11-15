.class public abstract Lyz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj81;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lyz4;-><init>(ILjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyz4;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyz4;->b:Ljava/util/List;

    .line 5
    iput p1, p0, Lyz4;->c:I

    .line 6
    iput-object p2, p0, Lyz4;->d:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lyz4;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lorg/schabi/newpipe/extractor/InfoItem;)V
    .locals 0

    iget-object p0, p0, Lyz4;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lxz4;)V
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Lj81;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/InfoItem;

    invoke-virtual {p0, p1}, Lyz4;->c(Lorg/schabi/newpipe/extractor/InfoItem;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lyz4;->b(Ljava/lang/Exception;)V

    :catch_1
    :goto_0
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyz4;->b:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lyz4;->d:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyz4;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_0
    iget-object p0, p0, Lyz4;->a:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lyz4;->c:I

    return p0
.end method
