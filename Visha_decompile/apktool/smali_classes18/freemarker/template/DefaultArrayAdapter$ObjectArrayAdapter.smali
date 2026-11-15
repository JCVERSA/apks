.class Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;
.super Lfreemarker/template/DefaultArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectArrayAdapter"
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;Lgc7;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0}, Lfreemarker/template/DefaultArrayAdapter;-><init>(Lgc7;Lxz1;)V

    .line 3
    iput-object p1, p0, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;->array:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/Object;Lgc7;Lxz1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;-><init>([Ljava/lang/Object;Lgc7;)V

    return-void
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;->array:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

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

    iget-object p0, p0, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;->array:[Ljava/lang/Object;

    return-object p0
.end method

.method public size()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object p0, p0, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;->array:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method
