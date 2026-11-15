.class public Lcom/bytedance/sdk/component/adexpress/vS/vS;
.super Lcom/bytedance/sdk/component/adexpress/vS/zR;
.source "source.java"


# instance fields
.field private Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/vS/zR;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj(Landroid/content/Context;IIILorg/json/JSONObject;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private Sj(Landroid/content/Context;IIILorg/json/JSONObject;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/bytedance/sdk/component/adexpress/vS/sU;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/TKC/Sj;->TKC(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    move-object v0, v7

    .line 8
    move-object v1, p1

    .line 9
    move v3, p2

    .line 10
    move v4, p3

    .line 11
    move v5, p4

    .line 12
    move-object v6, p5

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/adexpress/vS/sU;-><init>(Landroid/content/Context;Landroid/view/View;IIILorg/json/JSONObject;)V

    .line 14
    .line 15
    .line 16
    iput-object v7, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    .line 17
    .line 18
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 22
    .line 23
    const/4 p2, -0x2

    .line 24
    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    const/16 p2, 0xe

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    .line 31
    .line 32
    const/16 p2, 0xc

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public getShakeView()Lcom/bytedance/sdk/component/adexpress/vS/sU;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    .line 2
    .line 3
    return-object v0
.end method

.method public setShakeText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/vS/sU;->setShakeText(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/vS/sU;->setShakeText(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
