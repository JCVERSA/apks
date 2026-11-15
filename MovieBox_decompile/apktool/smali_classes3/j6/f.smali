.class public Lj6/f;
.super Lj6/c;
.source "source.java"


# instance fields
.field private c:Lcom/bytedance/sdk/component/sP/Sj/Zq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Zq;Lj6/b;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lj6/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lj6/c;->a:Ljava/util/List;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ge v0, v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lj6/c;->a:Ljava/util/List;

    .line 29
    .line 30
    new-instance v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/sP/Sj/vS;->sP(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iput-object p2, p0, Lj6/c;->b:Lj6/b;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->TKC()Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Dq()Lcom/bytedance/sdk/component/sP/Sj/aa;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lj6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Dq()Lcom/bytedance/sdk/component/sP/Sj/aa;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/aa;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, "http/1.1"

    .line 23
    .line 24
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lj6/c;->e(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lj6/c;->e(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    return-object p2
.end method

.method public h()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/c;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lj6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lj6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x12c

    .line 18
    .line 19
    if-ge v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lj6/c;->f(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
