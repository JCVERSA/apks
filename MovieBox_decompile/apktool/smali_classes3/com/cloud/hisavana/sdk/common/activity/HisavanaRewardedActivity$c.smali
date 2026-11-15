.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Z

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->J(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-static {v0, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->N(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 41
    .line 42
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->R(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    sub-float/2addr p2, v0

    .line 53
    float-to-double v0, p2

    .line 54
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 55
    .line 56
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->T(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    sub-float/2addr p2, v2

    .line 67
    float-to-double v2, p2

    .line 68
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    .line 73
    .line 74
    cmpg-double p2, v0, v2

    .line 75
    .line 76
    if-gez p2, :cond_2

    .line 77
    .line 78
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->a:Z

    .line 79
    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->V()Lcom/cloud/hisavana/sdk/k0;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    new-instance v7, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->R(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->T(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    move-object v0, v7

    .line 128
    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    .line 129
    .line 130
    .line 131
    const/4 p1, 0x0

    .line 132
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p2, p1, v7, v0}, Lcom/cloud/hisavana/sdk/k0;->e(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->b:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;->a:Z

    .line 156
    .line 157
    return p1
.end method
