.class Lcom/cloud/hisavana/sdk/api/view/MediaView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/api/view/MediaView;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic b:Lcom/cloud/hisavana/sdk/u3;

.field final synthetic c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field final synthetic d:Lcom/cloud/hisavana/sdk/api/view/MediaView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/u3;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->b:Lcom/cloud/hisavana/sdk/u3;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e(Lcom/cloud/hisavana/sdk/api/view/MediaView;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->b:Lcom/cloud/hisavana/sdk/u3;

    .line 10
    .line 11
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/x2;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Lcom/cloud/hisavana/sdk/x2;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e(Lcom/cloud/hisavana/sdk/api/view/MediaView;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 30
    .line 31
    new-instance v10, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 34
    .line 35
    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->j(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->m(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 46
    .line 47
    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->o(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 52
    .line 53
    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->q(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 58
    .line 59
    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e(Lcom/cloud/hisavana/sdk/api/view/MediaView;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->d:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 68
    .line 69
    invoke-static {v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e(Lcom/cloud/hisavana/sdk/api/view/MediaView;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    move-object v3, v10

    .line 78
    invoke-direct/range {v3 .. v9}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    .line 79
    .line 80
    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/p3;->v()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    const/4 v3, 0x0

    .line 96
    :goto_1
    invoke-static {v1, v2, v10, v3}, Lcom/cloud/hisavana/sdk/J0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 102
    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/x2;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/x2;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->y(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method
