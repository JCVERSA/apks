.class Lcom/bytedance/adsdk/ugeno/vS/Sj$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/vS/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getCurrentItem()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    add-int/2addr v0, v1

    .line 19
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x400

    .line 29
    .line 30
    if-lt v0, v2, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 35
    .line 36
    const/16 v1, 0x200

    .line 37
    .line 38
    invoke-virtual {v0, v1, v3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 45
    .line 46
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->EjP(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Ljava/lang/Runnable;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB(Lcom/bytedance/adsdk/ugeno/vS/Sj;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    int-to-long v2, v2

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getAdapter()Lcom/bytedance/adsdk/ugeno/Dq/sP;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-lt v0, v2, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 83
    .line 84
    invoke-virtual {v0, v3, v3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->EjP(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Ljava/lang/Runnable;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB(Lcom/bytedance/adsdk/ugeno/vS/Sj;)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    int-to-long v2, v2

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 105
    .line 106
    iget-object v2, v2, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 107
    .line 108
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->EjP(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Ljava/lang/Runnable;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 118
    .line 119
    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB(Lcom/bytedance/adsdk/ugeno/vS/Sj;)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    int-to-long v2, v2

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    .line 126
    .line 127
    :cond_3
    return-void
.end method
