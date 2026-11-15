.class public Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/vS/Sj/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private Dq:Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

.field private EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private HiB:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private Jcg:Lcom/bytedance/sdk/component/vS/Sj/HiB;

.field private Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;

.field private TEQ:I

.field private TKC:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private Ym:I

.field private aa:J

.field private sP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private uA:Z

.field private vS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1388

    .line 5
    .line 6
    iput v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->TEQ:I

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    iput v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Ym:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public Sj(I)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;
    .locals 0

    .line 7
    iput p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->TEQ:I

    return-object p0
.end method

.method public Sj(J)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->aa:J

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/HiB;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Dq:Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;

    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->vS:Z

    return-object p0
.end method

.method public Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj;
    .locals 3

    .line 8
    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/Sj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;-><init>(Lcom/bytedance/sdk/component/vS/Sj/Sj$1;)V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj;Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;)Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;

    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->TKC:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->sP(Lcom/bytedance/sdk/component/vS/Sj/Sj;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->TKC(Lcom/bytedance/sdk/component/vS/Sj/Sj;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->HiB:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->EjP(Lcom/bytedance/sdk/component/vS/Sj/Sj;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 14
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->vS:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj;Z)Z

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj;Lcom/bytedance/sdk/component/vS/Sj/HiB;)Lcom/bytedance/sdk/component/vS/Sj/HiB;

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Dq:Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj;Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;)Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    .line 17
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->uA:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->sP(Lcom/bytedance/sdk/component/vS/Sj/Sj;Z)Z

    .line 18
    iget v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Ym:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj;I)I

    .line 19
    iget v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->TEQ:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->sP(Lcom/bytedance/sdk/component/vS/Sj/Sj;I)I

    .line 20
    iget-wide v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->aa:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj;J)J

    return-object v0
.end method

.method public TKC(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 2
    .line 3
    return-object p0
.end method

.method public sP(I)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Ym:I

    return-object p0
.end method

.method public sP(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->TKC:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-object p0
.end method
