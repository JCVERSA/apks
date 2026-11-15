.class public Loj5;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lpj5;


# static fields
.field public static final c:Lpj5;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loj5;

    invoke-direct {v0}, Loj5;-><init>()V

    invoke-virtual {v0}, Loj5;->getUnmodifiableView()Lpj5;

    move-result-object v0

    sput-object v0, Loj5;->c:Lpj5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loj5;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lpj5;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Loj5;->b:Ljava/util/List;

    .line 5
    invoke-virtual {p0, p1}, Loj5;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static c(Ljava/lang/Object;)Lpo0;
    .locals 1

    instance-of v0, p0, Lpo0;

    if-eqz v0, :cond_0

    check-cast p0, Lpo0;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lpo0;->k(Ljava/lang/String;)Lpo0;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lpo0;->i([B)Lpo0;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Lpo0;

    if-eqz v0, :cond_1

    check-cast p0, Lpo0;

    invoke-virtual {p0}, Lpo0;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Loj5;->b(ILjava/lang/String;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1

    .line 2
    instance-of v0, p2, Lpj5;

    if-eqz v0, :cond_0

    check-cast p2, Lpj5;

    invoke-interface {p2}, Lpj5;->getUnderlyingElements()Ljava/util/List;

    move-result-object p2

    .line 3
    :cond_0
    iget-object v0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 4
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Loj5;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Loj5;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public g(Lpo0;)V
    .locals 1

    iget-object v0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Loj5;->i(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getByteString(I)Lpo0;
    .locals 2

    iget-object v0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj5;->c(Ljava/lang/Object;)Lpo0;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getUnderlyingElements()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Loj5;->b:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUnmodifiableView()Lpj5;
    .locals 1

    new-instance v0, Legb;

    invoke-direct {v0, p0}, Legb;-><init>(Lpj5;)V

    return-object v0
.end method

.method public i(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v1, v0, Lpo0;

    if-eqz v1, :cond_2

    check-cast v0, Lpo0;

    invoke-virtual {v0}, Lpo0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lpo0;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    check-cast v0, [B

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a([B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public j(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {p1}, Loj5;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Loj5;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Loj5;->j(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Loj5;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Loj5;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
