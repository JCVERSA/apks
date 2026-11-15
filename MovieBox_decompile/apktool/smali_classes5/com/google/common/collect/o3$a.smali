.class Lcom/google/common/collect/o3$a;
.super Lcom/google/common/collect/Multisets$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/google/common/collect/o3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/o3;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/o3$a;->c:Lcom/google/common/collect/o3;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/common/collect/o3;->a:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object p1, p1, p2

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/common/collect/o3$a;->a:Ljava/lang/Object;

    .line 11
    .line 12
    iput p2, p0, Lcom/google/common/collect/o3$a;->b:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/o3$a;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/common/collect/o3$a;->c:Lcom/google/common/collect/o3;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/common/collect/o3;->C()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/common/collect/o3$a;->a:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/common/collect/o3$a;->c:Lcom/google/common/collect/o3;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/google/common/collect/o3;->a:[Ljava/lang/Object;

    .line 19
    .line 20
    iget v2, p0, Lcom/google/common/collect/o3$a;->b:I

    .line 21
    .line 22
    aget-object v1, v1, v2

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/o3$a;->c:Lcom/google/common/collect/o3;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/common/collect/o3$a;->a:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/common/collect/o3;->m(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/google/common/collect/o3$a;->b:I

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/o3$a;->a()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/common/collect/o3$a;->b:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/o3$a;->c:Lcom/google/common/collect/o3;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/google/common/collect/o3;->b:[I

    .line 14
    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    :goto_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/o3$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
