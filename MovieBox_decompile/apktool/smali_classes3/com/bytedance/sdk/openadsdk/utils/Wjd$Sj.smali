.class Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/Wjd;->Sj(Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/utils/Wjd$sP;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sj"
.end annotation


# instance fields
.field Sj:Landroid/view/View;

.field final synthetic sP:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->sP:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->Sj:Landroid/view/View;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    const v0, 0x1f000045

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->sP:Landroid/view/ViewGroup;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/bytedance/sdk/openadsdk/utils/Wjd$sP;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->Sj:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    new-instance v2, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->Sj:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 24
    .line 25
    .line 26
    new-instance v3, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->sP:Landroid/view/ViewGroup;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const v3, 0x1f000043

    .line 41
    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->sP:Landroid/view/ViewGroup;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-interface {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/Wjd$sP;->Sj(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->sP:Landroid/view/ViewGroup;

    .line 57
    .line 58
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->sP:Landroid/view/ViewGroup;

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-interface {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/Wjd$sP;->Sj(Landroid/view/View;Z)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->sP:Landroid/view/ViewGroup;

    .line 73
    .line 74
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->sP:Landroid/view/ViewGroup;

    .line 81
    .line 82
    const v3, 0x1f000046

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/Wjd;->Sj(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/utils/Wjd$sP;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "onGlobalLayout exception "

    .line 98
    .line 99
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/Wjd$Sj;->sP:Landroid/view/ViewGroup;

    .line 103
    .line 104
    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v2, "ViewUtils"

    .line 116
    .line 117
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
