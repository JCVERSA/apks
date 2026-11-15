.class public Lcom/bytedance/sdk/component/Jcg/sP;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private Dq:Ljava/io/File;

.field final EjP:Ljava/lang/String;

.field final HiB:J

.field Jcg:Lcom/bytedance/sdk/component/sP/Sj/TEQ;

.field final Sj:I

.field private TEQ:[B

.field final TKC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final sP:Ljava/lang/String;

.field private final uA:Z

.field final vS:J


# direct methods
.method public constructor <init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Dq:Ljava/io/File;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->TEQ:[B

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Jcg/sP;->uA:Z

    .line 10
    .line 11
    iput p2, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Sj:I

    .line 12
    .line 13
    iput-object p3, p0, Lcom/bytedance/sdk/component/Jcg/sP;->sP:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/bytedance/sdk/component/Jcg/sP;->TKC:Ljava/util/Map;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/bytedance/sdk/component/Jcg/sP;->EjP:Ljava/lang/String;

    .line 18
    .line 19
    iput-wide p6, p0, Lcom/bytedance/sdk/component/Jcg/sP;->HiB:J

    .line 20
    .line 21
    iput-wide p8, p0, Lcom/bytedance/sdk/component/Jcg/sP;->vS:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public EjP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->EjP:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public HiB()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Dq:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public Jcg()Lcom/bytedance/sdk/component/sP/Sj/TEQ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Jcg:Lcom/bytedance/sdk/component/sP/Sj/TEQ;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Sj:I

    return v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/TEQ;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Jcg:Lcom/bytedance/sdk/component/sP/Sj/TEQ;

    return-void
.end method

.method public Sj(Ljava/io/File;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Dq:Ljava/io/File;

    return-void
.end method

.method public Sj([B)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP;->TEQ:[B

    return-void
.end method

.method public TKC()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->TKC:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->sP:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public vS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->uA:Z

    .line 2
    .line 3
    return v0
.end method
