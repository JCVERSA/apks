.class public Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lw5/c;
.implements Lc6/a;
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;
.implements Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/TzV$sP;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/dNu$Sj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw5/c;",
        "Lc6/a;",
        "Lcom/bytedance/sdk/component/utils/LqL$Sj;",
        "Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;",
        "Lcom/bytedance/sdk/openadsdk/core/widget/TzV$sP;",
        "Lcom/bytedance/sdk/openadsdk/core/widget/dNu$Sj;"
    }
.end annotation


# instance fields
.field Dq:Landroid/widget/ImageView;

.field EjP:Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

.field private FPG:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;

.field Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

.field HiB:Landroid/widget/ImageView;

.field JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

.field Jcg:Landroid/view/View;

.field LD:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

.field LqL:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

.field Mts:Z

.field RiZ:I

.field protected final Sj:I

.field TEQ:Landroid/view/View;

.field TKC:Landroid/view/ViewGroup;

.field TzV:I

.field WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

.field private Wjd:J

.field Yf:Z

.field Ym:Landroid/widget/ImageView;

.field Zq:Landroid/widget/TextView;

.field aa:Landroid/view/View;

.field dNu:I

.field dx:Z

.field fF:Lw5/b;

.field ib:I

.field kF:I

.field ley:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

.field protected final sP:I

.field sU:I

.field sef:Landroid/widget/TextView;

.field uA:Landroid/view/View;

.field uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field uvD:Landroid/widget/TextView;

.field vS:Landroid/view/View;

.field wE:Landroid/content/Context;

.field private final xD:Ljava/lang/String;

.field zR:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/sU;Lw5/b;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 20
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/sU;Lw5/b;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/sU;Lw5/b;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe4

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj:I

    const/16 v0, 0xa0

    .line 3
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->dx:Z

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Yf:Z

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Mts:Z

    .line 7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->xD:Ljava/lang/String;

    .line 8
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP;

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    .line 10
    invoke-virtual {p0, p7}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP(Z)V

    .line 11
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    .line 12
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->dx:Z

    .line 13
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->kF:I

    .line 14
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->fF:Lw5/b;

    .line 15
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/16 p2, 0x8

    .line 16
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP(I)V

    .line 17
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Landroid/content/Context;Landroid/view/View;)V

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP()V

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->aa()V

    return-void
.end method

.method private HiB(I)I
    .locals 3

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->RiZ:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sU:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    const/high16 v1, 0x43640000    # 228.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    const/high16 v2, 0x43200000    # 160.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    .line 5
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->RiZ:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 6
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sU:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->FPG:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;

    return-object p0
.end method

.method private Sj(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 7

    .line 118
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$7;

    const-string v2, "load_vast_icon_fail"

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method private uP()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fF()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ndK()Lcom/bytedance/sdk/openadsdk/core/model/LqL;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    :goto_0
    move v0, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move v0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->LD()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ne v0, v2, :cond_2

    .line 53
    .line 54
    return v2

    .line 55
    :cond_2
    return v1
.end method

.method private vS(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->aa:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method EjP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;->Sj(Lc6/a;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public EjP(I)V
    .locals 1

    .line 12
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->ib:I

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method public EjP(Z)V
    .locals 1

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Yf:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Z)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Z)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Z)V

    :cond_3
    return-void
.end method

.method public Fmk()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public HiB()V
    .locals 0

    .line 1
    return-void
.end method

.method public Jcg()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->vS(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Jcg:Landroid/view/View;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->vS(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Dq:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, La6/b;->r()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Dq:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->vS(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, La6/b;->r()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, La6/b;->t()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, La6/b;->C()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Dq:Landroid/widget/ImageView;

    .line 77
    .line 78
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 79
    .line 80
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void
.end method

.method RiZ()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TEQ:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Ym:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->aa:Landroid/view/View;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Zq:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :catch_0
    return-void
.end method

.method public Sj()V
    .locals 2

    const/4 v0, 0x0

    .line 52
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->dx:Z

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(ZZ)V

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->RiZ()V

    return-void
.end method

.method public Sj(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result p1

    :cond_0
    if-gtz p1, :cond_1

    return-void

    .line 47
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->dNu:I

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->dx()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TEQ()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->kF:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TzV:I

    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TzV:I

    .line 51
    :goto_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->dNu:I

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TzV:I

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(II)V

    return-void
.end method

.method public Sj(J)V
    .locals 0

    .line 2
    return-void
.end method

.method public Sj(JJ)V
    .locals 0

    .line 3
    return-void
.end method

.method Sj(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->MGU()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ewz()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->AVc()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->fF:Lw5/b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lw5/b;->dNu()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/EjP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/EjP;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 21
    :cond_3
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/TKC;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/TKC;-><init>(Landroid/content/Context;)V

    .line 22
    :goto_0
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 23
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    move-object v1, p2

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const/16 v0, 0x8

    .line 26
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 27
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    .line 28
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->vb:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    .line 29
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->GMp:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS:Landroid/view/View;

    .line 30
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TX:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Jcg:Landroid/view/View;

    .line 31
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->hzV:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Dq:Landroid/widget/ImageView;

    .line 32
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->mj:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uA:Landroid/view/View;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public Sj(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p2, 0x1

    .line 125
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->zR:Z

    .line 126
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 127
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LqL:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    invoke-interface {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;->Sj(Lw5/c;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 0

    .line 4
    return-void
.end method

.method public Sj(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->zR:Z

    .line 121
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LqL:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;->Sj(Lw5/c;Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public Sj(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 123
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    invoke-interface {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    if-eq p1, p2, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD()Z

    return-void
.end method

.method Sj(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 34
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uA:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TEQ:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uA:Landroid/view/View;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TEQ:Landroid/view/View;

    .line 36
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Ph:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Ym:Landroid/widget/ImageView;

    .line 37
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->gq:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->aa:Landroid/view/View;

    .line 38
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->jb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    .line 39
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Ei:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    .line 40
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->HpB:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Zq:Landroid/widget/TextView;

    .line 41
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->xhi:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Landroid/view/View;Z)V
    .locals 0

    .line 5
    return-void
.end method

.method public Sj(Landroid/view/ViewGroup;)V
    .locals 0

    .line 6
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->FPG:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/ref/WeakReference;Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->dx:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(ZZ)V

    .line 56
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Landroid/view/View;Landroid/content/Context;)V

    .line 57
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TEQ:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 58
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 59
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Ym:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 60
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 61
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->aa:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 62
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Ym:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p2

    invoke-virtual {p2}, La6/b;->r()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p2

    invoke-virtual {p2}, La6/b;->r()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p2

    invoke-virtual {p2}, La6/b;->t()I

    move-result v2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p2

    invoke-virtual {p2}, La6/b;->C()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Ym:Landroid/widget/ImageView;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 67
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 68
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->gR()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 69
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->gR()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 70
    :cond_6
    const-string p2, ""

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    const v1, 0x22000001

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/uA/sP;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$5;

    invoke-direct {v6, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-direct {v4, p1, v5, v6}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->sP(J)V

    goto :goto_1

    .line 78
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    invoke-virtual {v0, v4, v5, p1}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 79
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    const-string v4, "VAST_ICON"

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :catchall_0
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v0

    .line 83
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    if-eqz v4, :cond_a

    .line 84
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$6;

    invoke-direct {v5, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;Lcom/bytedance/sdk/openadsdk/core/Ym/sP;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 85
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 88
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 90
    :cond_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    const/4 v4, 0x1

    .line 94
    invoke-virtual {p2, p3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 98
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Zq:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Zq:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Zq:Landroid/widget/TextView;

    const-string v0, "VAST_TITLE"

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 103
    :cond_f
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Zq:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 104
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 105
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    move-result-object p2

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 107
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result p1

    const-string p2, "tt_video_mobile_go_detail"

    if-eq p1, v2, :cond_12

    const/4 p3, 0x3

    if-eq p1, p3, :cond_12

    if-eq p1, v3, :cond_11

    const/4 p3, 0x5

    if-eq p1, p3, :cond_10

    const/16 p3, 0x8

    if-eq p1, p3, :cond_12

    .line 108
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 109
    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    const-string p2, "tt_video_dial_phone"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 110
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    const-string p2, "tt_video_download_apk"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 111
    :cond_12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 112
    :cond_13
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD:Landroid/widget/TextView;

    if-eqz p1, :cond_14

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    :cond_14
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Mts:Z

    if-nez p1, :cond_15

    .line 117
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS(I)V

    :cond_15
    return-void
.end method

.method public bridge synthetic Sj(Ljava/lang/Object;Ljava/lang/ref/WeakReference;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 10
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 7
    return-void
.end method

.method public Sj(Lw5/a;)V
    .locals 1

    .line 43
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LqL:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef()V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Mts:Z

    return-void
.end method

.method public Sj(ZZ)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method public Sj(ZZZ)V
    .locals 0

    .line 131
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method public Sj(ILa6/b;Z)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj(ILa6/b;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public Sj(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->zR:Z

    .line 129
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LqL:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;->sP(Lw5/c;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public TEQ()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public TKC()Landroid/view/View;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public TKC(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public TKC(II)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->RiZ:I

    .line 6
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sU:I

    return-void
.end method

.method public TKC(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP(I)V

    return-void
.end method

.method public TKC(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public TzV()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;->getView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public Ym()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Zq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method aa()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Yf:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "embeded_ad"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "embeded_ad_landingpage"

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v0, "rewarded_video"

    .line 20
    .line 21
    const/4 v1, 0x7

    .line 22
    :goto_1
    move-object v7, v0

    .line 23
    move v8, v1

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ss()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const-string v0, "fullscreen_interstitial_ad"

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ewz()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const-string v0, "banner_ad"

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move-object v7, v0

    .line 50
    move v8, v2

    .line 51
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x4

    .line 58
    if-ne v0, v1, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 63
    .line 64
    invoke-static {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LD:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    .line 69
    .line 70
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 75
    .line 76
    invoke-direct {v0, v1, v3, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->sP(Z)V

    .line 87
    .line 88
    .line 89
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Yf:Z

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->TKC(Z)V

    .line 108
    .line 109
    .line 110
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->fF:Lw5/b;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lw5/b;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->HiB(Z)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 123
    .line 124
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$1;

    .line 125
    .line 126
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LD:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    .line 133
    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->JcM:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 137
    .line 138
    if-eqz v1, :cond_6

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;

    .line 150
    .line 151
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    .line 152
    .line 153
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 154
    .line 155
    move-object v3, v0

    .line 156
    move-object v4, p0

    .line 157
    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 161
    .line 162
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$3;

    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->sP(Z)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 176
    .line 177
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Yf:Z

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Z)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 183
    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->fF:Lw5/b;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lw5/b;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->HiB(Z)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LD:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    .line 195
    .line 196
    if-eqz v0, :cond_7

    .line 197
    .line 198
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 199
    .line 200
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    .line 201
    .line 202
    .line 203
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->WMZ:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 204
    .line 205
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;)V

    .line 206
    .line 207
    .line 208
    :cond_8
    return-void
.end method

.method public dNu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->vS(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Jcg:Landroid/view/View;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->vS(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public dx()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->dx:Z

    .line 2
    .line 3
    return v0
.end method

.method public getVideoProgress()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Wjd:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, La6/b;->K()D

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    mul-double/2addr v0, v2

    .line 35
    double-to-long v0, v0

    .line 36
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Wjd:J

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->fF:Lw5/b;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Lw5/b;->Dq()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Wjd:J

    .line 47
    .line 48
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Wjd:J

    .line 49
    .line 50
    return-wide v0
.end method

.method public ib()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method kF()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->kF:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->dx:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public sP()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Jcg:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Dq:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 14
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public sP(II)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-lez p1, :cond_2

    .line 8
    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_3

    if-lez p2, :cond_4

    .line 9
    :cond_3
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public sP(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->zR:Z

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LqL:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;->sP(Lw5/c;Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public sP(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    return-void
.end method

.method public sP(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public sP(ZZ)V
    .locals 1

    .line 4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    const-string v0, "tt_play_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    const-string v0, "tt_stop_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public sP(I)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public sU()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Ym:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method sef()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LqL:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->wE:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC:Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LqL:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;Lcom/bytedance/sdk/openadsdk/core/widget/TzV$sP;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public uA()V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->kF()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Dq:Landroid/widget/ImageView;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TEQ:Landroid/view/View;

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Ym:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->aa:Landroid/view/View;

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Zq:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj(Z)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method uvD()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LqL:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    return v0
.end method

.method public vS()V
    .locals 0

    .line 1
    return-void
.end method

.method public zR()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->zR:Z

    .line 2
    .line 3
    return v0
.end method
