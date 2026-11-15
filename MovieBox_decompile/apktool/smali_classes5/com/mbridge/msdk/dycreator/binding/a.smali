.class public Lcom/mbridge/msdk/dycreator/binding/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/dycreator/viewdata/base/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    instance-of v0, p1, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    instance-of v0, p1, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/viewdata/base/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/viewdata/base/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isCanSkip()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    instance-of v1, p1, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/mbridge/msdk/dycreator/utils/d;->a(Landroid/view/View;Lcom/mbridge/msdk/dycreator/viewdata/base/a;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 49
    .line 50
    instance-of v1, v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    .line 55
    .line 56
    move-object v1, p1

    .line 57
    check-cast v1, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;->getxInScreen()F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setxInScreen(F)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 67
    .line 68
    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;->getyInScreen()F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setyInScreen(F)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 78
    .line 79
    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setClickType(I)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    instance-of v1, p1, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;

    .line 90
    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    invoke-static {p1, v0}, Lcom/mbridge/msdk/dycreator/utils/d;->a(Landroid/view/View;Lcom/mbridge/msdk/dycreator/viewdata/base/a;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 100
    .line 101
    instance-of v1, v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    .line 106
    .line 107
    move-object v1, p1

    .line 108
    check-cast v1, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;->getxInScreen()F

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setxInScreen(F)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 118
    .line 119
    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;->getyInScreen()F

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setyInScreen(F)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 129
    .line 130
    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setClickType(I)V

    .line 134
    .line 135
    .line 136
    :cond_2
    move-object v0, p1

    .line 137
    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    .line 138
    .line 139
    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;->getStrategyDes()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_3

    .line 148
    .line 149
    invoke-static {}, Lcom/mbridge/msdk/dycreator/binding/c;->a()Lcom/mbridge/msdk/dycreator/binding/c;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/dycreator/binding/c;->a(Ljava/lang/String;)Lcom/mbridge/msdk/dycreator/binding/base/BaseStrategy;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_3

    .line 158
    .line 159
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    .line 160
    .line 161
    invoke-interface {v0, p1, v1}, Lcom/mbridge/msdk/dycreator/binding/base/BaseStrategy;->bindClickData(Landroid/view/View;Lcom/mbridge/msdk/dycreator/viewdata/base/a;)V

    .line 162
    .line 163
    .line 164
    :cond_3
    return-void
.end method
