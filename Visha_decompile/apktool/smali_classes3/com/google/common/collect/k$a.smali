.class public Lcom/google/common/collect/k$a;
.super Lcom/google/common/collect/Multisets$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/google/common/collect/k;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/k$a;->d:Lcom/google/common/collect/k;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$b;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/k;->a:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/k$a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/k$a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/k$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/k$a;->d:Lcom/google/common/collect/k;

    invoke-virtual {v1}, Lcom/google/common/collect/k;->C()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/k$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/k$a;->d:Lcom/google/common/collect/k;

    iget-object v1, v1, Lcom/google/common/collect/k;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/k$a;->c:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/k$a;->d:Lcom/google/common/collect/k;

    iget-object v1, p0, Lcom/google/common/collect/k$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/k;->m(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/k$a;->c:I

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/k$a;->a()V

    iget v0, p0, Lcom/google/common/collect/k$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/k$a;->d:Lcom/google/common/collect/k;

    iget-object p0, p0, Lcom/google/common/collect/k;->b:[I

    aget p0, p0, v0

    :goto_0
    return p0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/k$a;->b:Ljava/lang/Object;

    return-object p0
.end method
