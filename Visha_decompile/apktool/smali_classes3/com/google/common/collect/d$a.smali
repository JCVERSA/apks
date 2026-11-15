.class public Lcom/google/common/collect/d$a;
.super Lcom/google/common/collect/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d;->createDescendingMultiset()Lcom/google/common/collect/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d$a;->e:Lcom/google/common/collect/d;

    invoke-direct {p0}, Lcom/google/common/collect/h;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/d$a;->e:Lcom/google/common/collect/d;

    invoke-virtual {p0}, Lcom/google/common/collect/d;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public l()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/d$a;->e:Lcom/google/common/collect/d;

    invoke-virtual {p0}, Lcom/google/common/collect/d;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public m()Lcom/google/common/collect/p;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/d$a;->e:Lcom/google/common/collect/d;

    return-object p0
.end method
