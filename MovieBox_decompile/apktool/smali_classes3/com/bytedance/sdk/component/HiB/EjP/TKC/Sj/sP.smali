.class public Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/sP;
.implements Ljava/lang/Cloneable;


# static fields
.field private static volatile uA:Lcom/bytedance/sdk/component/HiB/sP;


# instance fields
.field private Dq:Ljava/io/File;

.field private EjP:I

.field private HiB:Z

.field private Jcg:Z

.field private Sj:J

.field private TKC:I

.field private sP:I

.field private vS:Z


# direct methods
.method public constructor <init>(IIIJLjava/io/File;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v0

    :goto_1
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v10, p6

    .line 1
    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;-><init>(IIIJZZLjava/io/File;)V

    return-void
.end method

.method public constructor <init>(IIIJZZLjava/io/File;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p4, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->Sj:J

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->sP:I

    .line 5
    iput p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->TKC:I

    .line 6
    iput p3, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->EjP:I

    .line 7
    iput-boolean p6, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->HiB:Z

    .line 8
    iput-boolean p7, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->vS:Z

    .line 9
    iput-object p8, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->Dq:Ljava/io/File;

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->Jcg:Z

    return-void
.end method

.method public static Sj(Ljava/io/File;)Lcom/bytedance/sdk/component/HiB/sP;
    .locals 11

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 6
    sget-object v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->uA:Lcom/bytedance/sdk/component/HiB/sP;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    const/16 v1, 0xe

    const-wide/16 v2, 0x14

    :goto_0
    move v6, v0

    move v7, v1

    move-wide v8, v2

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->uA:Lcom/bytedance/sdk/component/HiB/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/sP;->Sj()J

    move-result-wide v2

    .line 8
    sget-object v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->uA:Lcom/bytedance/sdk/component/HiB/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/sP;->TKC()I

    move-result v0

    .line 9
    sget-object v1, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->uA:Lcom/bytedance/sdk/component/HiB/sP;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/HiB/sP;->EjP()I

    move-result v1

    goto :goto_0

    .line 10
    :goto_1
    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;

    const/4 v5, 0x0

    move-object v4, v0

    move-object v10, p0

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;-><init>(IIIJLjava/io/File;)V

    return-object v0
.end method

.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/sP;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    sput-object p1, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->uA:Lcom/bytedance/sdk/component/HiB/sP;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v0, "image"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->Sj(Ljava/io/File;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->uA:Lcom/bytedance/sdk/component/HiB/sP;

    return-void
.end method

.method public static TEQ()Lcom/bytedance/sdk/component/HiB/sP;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->uA:Lcom/bytedance/sdk/component/HiB/sP;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public Dq()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->Dq:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public EjP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->EjP:I

    .line 2
    .line 3
    return v0
.end method

.method public HiB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->HiB:Z

    .line 2
    .line 3
    return v0
.end method

.method public Jcg()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->vS:Z

    .line 2
    .line 3
    return v0
.end method

.method public Sj()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->Sj:J

    return-wide v0
.end method

.method public TKC()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->TKC:I

    .line 2
    .line 3
    return v0
.end method

.method public sP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->sP:I

    .line 2
    .line 3
    return v0
.end method

.method public uA()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public vS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->Jcg:Z

    .line 2
    .line 3
    return v0
.end method
