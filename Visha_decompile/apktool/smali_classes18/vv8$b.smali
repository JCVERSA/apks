.class public Lvv8$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvv8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lvv8$b;->a:Ljava/util/Stack;

    return-void
.end method

.method public synthetic constructor <init>(Lvv8$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lvv8$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lvv8$b;Lpo0;Lpo0;)Lpo0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lvv8$b;->b(Lpo0;Lpo0;)Lpo0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lpo0;Lpo0;)Lpo0;
    .locals 2

    invoke-virtual {p0, p1}, Lvv8$b;->c(Lpo0;)V

    invoke-virtual {p0, p2}, Lvv8$b;->c(Lpo0;)V

    iget-object p1, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpo0;

    :goto_0
    iget-object p2, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpo0;

    new-instance v0, Lvv8;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lvv8;-><init>(Lpo0;Lpo0;Lvv8$a;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final c(Lpo0;)V
    .locals 2

    invoke-virtual {p1}, Lpo0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lvv8$b;->e(Lpo0;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lvv8;

    if-eqz v0, :cond_1

    check-cast p1, Lvv8;

    invoke-static {p1}, Lvv8;->z(Lvv8;)Lpo0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvv8$b;->c(Lpo0;)V

    invoke-static {p1}, Lvv8;->A(Lvv8;)Lpo0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvv8$b;->c(Lpo0;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(I)I
    .locals 0

    invoke-static {}, Lvv8;->B()[I

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method

.method public final e(Lpo0;)V
    .locals 5

    invoke-virtual {p1}, Lpo0;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lvv8$b;->d(I)I

    move-result v0

    invoke-static {}, Lvv8;->B()[I

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpo0;

    invoke-virtual {v2}, Lpo0;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lvv8;->B()[I

    move-result-object v1

    aget v0, v1, v0

    iget-object v1, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpo0;

    :goto_0
    iget-object v2, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpo0;

    invoke-virtual {v2}, Lpo0;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    iget-object v2, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpo0;

    new-instance v4, Lvv8;

    invoke-direct {v4, v2, v1, v3}, Lvv8;-><init>(Lpo0;Lpo0;Lvv8$a;)V

    move-object v1, v4

    goto :goto_0

    :cond_1
    new-instance v0, Lvv8;

    invoke-direct {v0, v1, p1, v3}, Lvv8;-><init>(Lpo0;Lpo0;Lvv8$a;)V

    :goto_1
    iget-object p1, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lpo0;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lvv8$b;->d(I)I

    move-result p1

    invoke-static {}, Lvv8;->B()[I

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    iget-object v1, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpo0;

    invoke-virtual {v1}, Lpo0;->size()I

    move-result v1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpo0;

    new-instance v1, Lvv8;

    invoke-direct {v1, p1, v0, v3}, Lvv8;-><init>(Lpo0;Lpo0;Lvv8$a;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p0, p0, Lvv8$b;->a:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method
