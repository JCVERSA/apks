.class public abstract Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;
.source "source.java"


# instance fields
.field protected Dq:I

.field protected EjP:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

.field protected HiB:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field protected Jcg:I

.field private Sj:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field protected TEQ:Z

.field protected TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field protected Ym:Z

.field protected aa:Ljava/lang/String;

.field protected sP:Landroid/content/Context;

.field protected uA:I

.field protected vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, "embeded_ad"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->vS:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TEQ:Z

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Ym:Z

    .line 5
    const-string p1, "tt_express_backup_fl_tag_26"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 7
    const-string p1, "embeded_ad"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->vS:Ljava/lang/String;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TEQ:Z

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Ym:Z

    .line 10
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->aa:Ljava/lang/String;

    .line 11
    const-string p1, "tt_express_backup_fl_tag_26"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-void
.end method

.method protected Sj(I)V
    .locals 3

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->uA:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TKC(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Ym:Z

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TEQ:Z

    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 18
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_3

    .line 19
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TEQ:Z

    return-void

    :cond_3
    const/4 v2, 0x5

    if-ne v2, p1, :cond_5

    .line 21
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 22
    :cond_4
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TEQ:Z

    :cond_5
    return-void
.end method

.method protected Sj(Landroid/view/View;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->LD()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TEQ:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Sj(Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected abstract Sj(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/model/sef;)V
.end method

.method protected Sj(Landroid/view/View;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->vS:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->vS:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    .line 10
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;)V

    .line 13
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sP;)V

    return-void
.end method

.method protected getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->gR()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->gR()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    const-string v0, ""

    .line 40
    .line 41
    return-object v0
.end method

.method protected getNameOrSource()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_2
    return-object v1
.end method

.method public getRealHeight()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Dq:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    return v0
.end method

.method public getRealWidth()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Jcg:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "tt_express_backup_fl_tag_26"

    .line 2
    .line 3
    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_2
    const-string v0, ""

    .line 75
    .line 76
    return-object v0
.end method

.method protected getVideoView()Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->vS:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v2, v0

    .line 30
    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->aa:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoCacheUrl(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj$2;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TEQ:Z

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setIsAutoPlay(Z)V

    .line 49
    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Ym:Z

    .line 52
    .line 53
    const-string v3, "bannerGetVideoView"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    :cond_1
    move-object v0, v1

    .line 60
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    const/4 v3, 0x0

    .line 72
    const-wide/16 v4, 0x0

    .line 73
    .line 74
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(JZZ)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    return-object v0

    .line 82
    :cond_3
    :goto_1
    return-object v1
.end method

.method public setDislikeInner(Lcom/bytedance/sdk/openadsdk/core/uP;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->nru()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Ljava/lang/String;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 21
    .line 22
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 1
    const-string p1, "tt_express_backup_fl_tag_26"

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
