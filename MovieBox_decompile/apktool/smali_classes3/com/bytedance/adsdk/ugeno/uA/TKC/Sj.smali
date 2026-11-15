.class public abstract Lcom/bytedance/adsdk/ugeno/uA/TKC/Sj;
.super Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;
.source "source.java"


# instance fields
.field private SP:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, -0x1000000

    .line 5
    .line 6
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/TKC/Sj;->SP:I

    .line 7
    .line 8
    return-void
.end method

.method private uA(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/TKC/Sj;->Jcg(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "local://"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method


# virtual methods
.method public abstract Jcg(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    const-string v0, "textColor"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/TKC/Sj;->SP:I

    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public sP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/uA/TKC/Sj;->uA(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    .line 8
    .line 9
    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->sP()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 13
    .line 14
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    .line 15
    .line 16
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/uA/TKC/Sj;->SP:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 22
    .line 23
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    .line 24
    .line 25
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
