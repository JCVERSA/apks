.class public Lcom/google/common/collect/b$b;
.super Lcom/google/common/collect/Multisets$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/b$b;->b:Lcom/google/common/collect/b;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$d;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/common/collect/j;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/b$b;->b:Lcom/google/common/collect/b;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/b$b;->b:Lcom/google/common/collect/b;

    invoke-virtual {p0}, Lcom/google/common/collect/b;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/b$b;->b:Lcom/google/common/collect/b;

    invoke-virtual {p0}, Lcom/google/common/collect/b;->distinctElements()I

    move-result p0

    return p0
.end method
