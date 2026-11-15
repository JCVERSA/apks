.class public Lcom/google/common/collect/h$a;
.super Lcom/google/common/collect/Multisets$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/h;->k()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/h;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$d;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/common/collect/j;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    invoke-virtual {p0}, Lcom/google/common/collect/h;->l()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    invoke-virtual {p0}, Lcom/google/common/collect/h;->m()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method
