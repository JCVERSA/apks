.class Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/vS/Sj/sP/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->sP(Ljava/util/List;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Z

.field final synthetic TKC:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

.field final synthetic sP:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;ZJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$3;->TKC:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$3;->Sj:Z

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$3;->sP:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public Sj(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$3;->TKC:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->sP(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;->sP()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-object v3, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$3;->TKC:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    .line 42
    .line 43
    iget-boolean v4, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$3;->Sj:Z

    .line 44
    .line 45
    iget-wide v7, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$3;->sP:J

    .line 46
    .line 47
    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;ZLcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    :cond_1
    return-void
.end method
