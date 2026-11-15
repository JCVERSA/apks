.class Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lv5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sj"
.end annotation


# instance fields
.field private final Dq:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field private EjP:Landroid/os/CountDownTimer;

.field private HiB:Lw5/b$b;

.field private final Jcg:Lb6/a;

.field private final Sj:J

.field private TKC:I

.field private sP:J

.field private vS:J


# direct methods
.method public constructor <init>(JLb6/a;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj:J

    .line 8
    .line 9
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Jcg:Lb6/a;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lw5/b$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->HiB:Lw5/b$b;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lb6/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Jcg:Lb6/a;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->vS:J

    return-wide v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->vS:J

    return-wide p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sP:J

    return-wide v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj:J

    return-wide v0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    return-object p0
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public EjP()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public Fmk()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public HiB()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public Jcg()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public Sj(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sP:J

    return-void
.end method

.method public Sj(Lw5/b$b;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->HiB:Lw5/b$b;

    return-void
.end method

.method public Sj()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public TEQ()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    .line 3
    .line 4
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->vS:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sP:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP:Landroid/os/CountDownTimer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP:Landroid/os/CountDownTimer;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public TKC()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public Ym()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP:Landroid/os/CountDownTimer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP:Landroid/os/CountDownTimer;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->HiB:Lw5/b$b;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->HiB:Lw5/b$b;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public Zq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->vS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public aa()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public sP()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public sef()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public uA()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sef()J

    .line 10
    .line 11
    .line 12
    move-result-wide v10

    .line 13
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sP:J

    .line 14
    .line 15
    sub-long v8, v10, v0

    .line 16
    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;

    .line 18
    .line 19
    const-wide/16 v6, 0xc8

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    move-object v3, p0

    .line 23
    move-wide v4, v8

    .line 24
    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;JJJJ)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP:Landroid/os/CountDownTimer;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public vS()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
