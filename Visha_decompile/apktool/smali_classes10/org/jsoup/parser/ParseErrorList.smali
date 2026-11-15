.class public Lorg/jsoup/parser/ParseErrorList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lsw7;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private final initialCapacity:I

.field private final maxSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iput p1, p0, Lorg/jsoup/parser/ParseErrorList;->initialCapacity:I

    .line 3
    iput p2, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/ParseErrorList;)V
    .locals 1

    .line 4
    iget v0, p1, Lorg/jsoup/parser/ParseErrorList;->initialCapacity:I

    iget p1, p1, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    return-void
.end method

.method public static noTracking()Lorg/jsoup/parser/ParseErrorList;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    return-object v0
.end method

.method public static tracking(I)Lorg/jsoup/parser/ParseErrorList;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public canAddError()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget p0, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMaxSize()I
    .locals 0

    iget p0, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    return p0
.end method
