.class Lcom/cloud/hisavana/sdk/e$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/e4$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/e;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/e;->s(Lcom/cloud/hisavana/sdk/e;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/e;->g(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    if-gez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/e;->k(Lcom/cloud/hisavana/sdk/e;)Lcom/cloud/hisavana/sdk/p3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->a()I

    move-result p1

    :goto_0
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/e;->r(Lcom/cloud/hisavana/sdk/e;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/e;->B(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)Ljava/util/List;

    .line 5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    move-result-object p1

    const-string v0, "ssp"

    const-string v1, "onWebRecommendInfoSuccess"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/cloud/hisavana/sdk/e;->s(Lcom/cloud/hisavana/sdk/e;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    .line 7
    .line 8
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/e;->g(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, 0x1

    .line 13
    if-eq p1, p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    .line 16
    .line 17
    if-gez p1, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/e;->k(Lcom/cloud/hisavana/sdk/e;)Lcom/cloud/hisavana/sdk/p3;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->a()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    :goto_0
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/e;->r(Lcom/cloud/hisavana/sdk/e;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :catchall_0
    :cond_1
    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/e;->A(Lcom/cloud/hisavana/sdk/e;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/e;->A(Lcom/cloud/hisavana/sdk/e;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-le p1, v0, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/e;->x(Lcom/cloud/hisavana/sdk/e;Z)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/e;->s(Lcom/cloud/hisavana/sdk/e;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/e;->g(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eq p1, v0, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    .line 42
    .line 43
    if-gez p1, :cond_1

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/e;->k(Lcom/cloud/hisavana/sdk/e;)Lcom/cloud/hisavana/sdk/p3;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->a()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    :goto_0
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/e;->r(Lcom/cloud/hisavana/sdk/e;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :catchall_0
    :cond_2
    return-void
.end method
