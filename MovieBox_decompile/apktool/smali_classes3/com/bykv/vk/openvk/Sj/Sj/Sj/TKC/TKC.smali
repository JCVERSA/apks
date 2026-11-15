.class public Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private Dq:I

.field public EjP:I

.field private Fmk:I

.field private HiB:La6/b;

.field private Jcg:Ljava/lang/String;

.field private RiZ:I

.field public Sj:Ljava/lang/String;

.field private TEQ:I

.field public final TKC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private TzV:I

.field private Ym:Ljava/lang/String;

.field private Zq:J

.field private aa:I

.field private dNu:Z

.field private dx:I

.field private ib:I

.field private kF:Lorg/json/JSONObject;

.field public sP:I

.field private sU:I

.field private sef:Ljava/lang/String;

.field private uA:I

.field private uvD:Z

.field private vS:La6/b;

.field private zR:I


# direct methods
.method public constructor <init>(Ljava/lang/String;La6/b;La6/b;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x32000

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Dq:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->uA:I

    .line 11
    .line 12
    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TEQ:I

    .line 13
    .line 14
    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TzV:I

    .line 15
    .line 16
    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->RiZ:I

    .line 17
    .line 18
    new-instance v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC:Ljava/util/HashMap;

    .line 24
    .line 25
    const/16 v1, 0x2710

    .line 26
    .line 27
    iput v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sU:I

    .line 28
    .line 29
    iput v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dx:I

    .line 30
    .line 31
    iput v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->zR:I

    .line 32
    .line 33
    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->ib:I

    .line 34
    .line 35
    new-instance v0, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->kF:Lorg/json/JSONObject;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:La6/b;

    .line 45
    .line 46
    iput-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:La6/b;

    .line 47
    .line 48
    iput p4, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TzV:I

    .line 49
    .line 50
    iput p5, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->RiZ:I

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->uvD:Z

    .line 2
    .line 3
    return v0
.end method

.method public EjP(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sU:I

    return-void
.end method

.method public EjP(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj:Ljava/lang/String;

    return-void
.end method

.method public EjP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dNu:Z

    return v0
.end method

.method public Fmk()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:La6/b;

    .line 8
    .line 9
    invoke-virtual {v0}, La6/b;->x()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:La6/b;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, La6/b;->x()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public HiB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->aa:I

    return v0
.end method

.method public declared-synchronized HiB(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public HiB(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dx:I

    return-void
.end method

.method public Jcg()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Zq:J

    return-wide v0
.end method

.method public Jcg(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->ib:I

    return-void
.end method

.method public RiZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->ib:I

    .line 2
    .line 3
    return v0
.end method

.method public Sj()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->kF:Lorg/json/JSONObject;

    const-string v1, "pitaya_cache_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Sj(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->aa:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Zq:J

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized Sj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public Sj(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->uvD:Z

    return-void
.end method

.method public TEQ()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:La6/b;

    .line 8
    .line 9
    invoke-virtual {v0}, La6/b;->B()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:La6/b;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, La6/b;->B()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    return v0
.end method

.method public TKC()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:La6/b;

    invoke-virtual {v0}, La6/b;->y()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:La6/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, La6/b;->y()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public TKC(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP:I

    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef:Ljava/lang/String;

    return-void
.end method

.method public TzV()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->zR:I

    .line 2
    .line 3
    return v0
.end method

.method public Ym()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->RiZ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:La6/b;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, La6/b;->x()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lv5/b;->j()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x1a

    .line 30
    .line 31
    if-lt v0, v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TzV:I

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    return v1
.end method

.method public Zq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TzV:I

    .line 2
    .line 3
    return v0
.end method

.method public aa()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:La6/b;

    .line 8
    .line 9
    invoke-virtual {v0}, La6/b;->a()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:La6/b;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, La6/b;->a()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .line 24
    .line 25
    return v0
.end method

.method public dNu()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dx:I

    .line 2
    .line 3
    return v0
.end method

.method public dx()La6/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:La6/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg:Ljava/lang/String;

    return-object v0
.end method

.method public sP(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk:I

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym:Ljava/lang/String;

    return-void
.end method

.method public sU()La6/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:La6/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public sef()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:La6/b;

    .line 8
    .line 9
    invoke-virtual {v0}, La6/b;->G()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:La6/b;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, La6/b;->G()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public uA()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:La6/b;

    .line 8
    .line 9
    invoke-virtual {v0}, La6/b;->g()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:La6/b;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, La6/b;->g()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    :cond_1
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    return-wide v0
.end method

.method public uvD()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sU:I

    .line 2
    .line 3
    return v0
.end method

.method public vS()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk:I

    return v0
.end method

.method public vS(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->zR:I

    return-void
.end method
