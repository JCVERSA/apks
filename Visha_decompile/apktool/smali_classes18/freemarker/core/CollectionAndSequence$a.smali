.class public Lfreemarker/core/CollectionAndSequence$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/CollectionAndSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lnga;

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>(Lnga;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lfreemarker/core/CollectionAndSequence$a;->d:I

    iput-object p1, p0, Lfreemarker/core/CollectionAndSequence$a;->b:Lnga;

    invoke-interface {p1}, Lnga;->size()I

    move-result p1

    iput p1, p0, Lfreemarker/core/CollectionAndSequence$a;->c:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lfreemarker/core/CollectionAndSequence$a;->d:I

    iget p0, p0, Lfreemarker/core/CollectionAndSequence$a;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Lzfa;
    .locals 3

    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence$a;->b:Lnga;

    iget v1, p0, Lfreemarker/core/CollectionAndSequence$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/core/CollectionAndSequence$a;->d:I

    invoke-interface {v0, v1}, Lnga;->get(I)Lzfa;

    move-result-object p0

    return-object p0
.end method
