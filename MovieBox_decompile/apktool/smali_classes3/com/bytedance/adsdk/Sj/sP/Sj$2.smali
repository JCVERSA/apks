.class final Lcom/bytedance/adsdk/Sj/sP/Sj$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/Sj/sP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;

.field final synthetic sP:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP/Sj$2;->Sj:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/adsdk/Sj/sP/Sj$2;->sP:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;ILjava/util/Deque;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Deque<",
            "Lcom/bytedance/adsdk/Sj/sP/sP/Sj;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP/Sj$2;->Sj:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/Sj/sP/Sj$2;->sP:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;->Sj(Ljava/lang/String;ILjava/util/Deque;Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
