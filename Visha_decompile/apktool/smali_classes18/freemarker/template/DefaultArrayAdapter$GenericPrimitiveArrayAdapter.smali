.class Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;
.super Lfreemarker/template/DefaultArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericPrimitiveArrayAdapter"
.end annotation


# instance fields
.field private final array:Ljava/lang/Object;

.field private final length:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgc7;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0}, Lfreemarker/template/DefaultArrayAdapter;-><init>(Lgc7;Lxz1;)V

    .line 3
    iput-object p1, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->array:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->length:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lgc7;Lxz1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;-><init>(Ljava/lang/Object;Lgc7;)V

    return-void
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->array:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnpc;->wrap(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->array:Ljava/lang/Object;

    return-object p0
.end method

.method public size()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget p0, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->length:I

    return p0
.end method
