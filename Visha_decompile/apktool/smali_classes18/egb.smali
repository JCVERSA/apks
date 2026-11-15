.class public Legb;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lpj5;


# instance fields
.field public final b:Lpj5;


# direct methods
.method public constructor <init>(Lpj5;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Legb;->b:Lpj5;

    return-void
.end method

.method public static synthetic b(Legb;)Lpj5;
    .locals 0

    iget-object p0, p0, Legb;->b:Lpj5;

    return-object p0
.end method


# virtual methods
.method public c(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Legb;->b:Lpj5;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public g(Lpo0;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Legb;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getByteString(I)Lpo0;
    .locals 0

    iget-object p0, p0, Legb;->b:Lpj5;

    invoke-interface {p0, p1}, Lpj5;->getByteString(I)Lpo0;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingElements()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Legb;->b:Lpj5;

    invoke-interface {p0}, Lpj5;->getUnderlyingElements()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUnmodifiableView()Lpj5;
    .locals 0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Legb$b;

    invoke-direct {v0, p0}, Legb$b;-><init>(Legb;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Legb$a;

    invoke-direct {v0, p0, p1}, Legb$a;-><init>(Legb;I)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Legb;->b:Lpj5;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
