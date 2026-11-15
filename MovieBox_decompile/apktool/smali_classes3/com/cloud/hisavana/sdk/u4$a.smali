.class Lcom/cloud/hisavana/sdk/u4$a;
.super Lcom/cloud/hisavana/sdk/g4;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/u4;->o()Lcom/cloud/hisavana/sdk/g4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/u4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/u4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u4$a;->d:Lcom/cloud/hisavana/sdk/u4;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/g4;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u4$a;->d:Lcom/cloud/hisavana/sdk/u4;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/x1;->c(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected b(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u4$a;->d:Lcom/cloud/hisavana/sdk/u4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/x1;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    shl-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    add-int/2addr p1, p2

    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    return-object p1
.end method

.method protected c(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u4$a;->d:Lcom/cloud/hisavana/sdk/u4;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/x1;->f(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u4$a;->d:Lcom/cloud/hisavana/sdk/u4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/x1;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u4$a;->d:Lcom/cloud/hisavana/sdk/u4;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/x1;->m(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u4$a;->d:Lcom/cloud/hisavana/sdk/u4;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/x1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected j(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u4$a;->d:Lcom/cloud/hisavana/sdk/u4;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/x1;->j(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected k()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u4$a;->d:Lcom/cloud/hisavana/sdk/u4;

    .line 2
    .line 3
    return-object v0
.end method

.method protected n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u4$a;->d:Lcom/cloud/hisavana/sdk/u4;

    .line 2
    .line 3
    iget v0, v0, Lcom/cloud/hisavana/sdk/x1;->c:I

    .line 4
    .line 5
    return v0
.end method
