.class public Lcom/google/common/collect/a$c;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/a$c;->b:Lcom/google/common/collect/a;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a$c;->b:Lcom/google/common/collect/a;

    invoke-interface {p0}, Lat6;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a$c;->b:Lcom/google/common/collect/a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a$c;->b:Lcom/google/common/collect/a;

    invoke-virtual {p0}, Lcom/google/common/collect/a;->valueIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a$c;->b:Lcom/google/common/collect/a;

    invoke-interface {p0}, Lat6;->size()I

    move-result p0

    return p0
.end method
