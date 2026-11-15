.class public Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/sP/Sj/Fmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field Dq:Ljava/lang/String;

.field EjP:Ljava/lang/String;

.field HiB:Ljava/lang/Object;

.field Jcg:I

.field Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj;

.field TKC:Lcom/bytedance/sdk/component/sP/Sj/Jcg;

.field sP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field vS:Lcom/bytedance/sdk/component/sP/Sj/sef;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->TKC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->EjP:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->EjP()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP:Ljava/util/Map;

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Sj()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->HiB:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Dq()Lcom/bytedance/sdk/component/sP/Sj/sef;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->vS:Lcom/bytedance/sdk/component/sP/Sj/sef;

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->HiB()Lcom/bytedance/sdk/component/sP/Sj/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj;

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Jcg()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Jcg:I

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->vS()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Dq:Ljava/lang/String;

    return-void
.end method

.method private Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/sP/Sj/sef;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->EjP:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->vS:Lcom/bytedance/sdk/component/sP/Sj/sef;

    return-object p0
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 2

    .line 7
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/sP/Sj/sef;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v0

    return-object v0
.end method

.method public Sj(I)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Jcg:I

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/Jcg;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/Sj;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/sef;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 1

    .line 10
    const-string v0, "POST"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/sP/Sj/sef;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Ljava/lang/Object;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->HiB:Ljava/lang/Object;

    return-object p0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Dq:Ljava/lang/String;

    return-object p0
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    return-object p1
.end method

.method public sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Jcg;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    return-object p1
.end method

.method public sP(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;
    .locals 1

    .line 5
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj$1;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;)V

    return-object v0
.end method
