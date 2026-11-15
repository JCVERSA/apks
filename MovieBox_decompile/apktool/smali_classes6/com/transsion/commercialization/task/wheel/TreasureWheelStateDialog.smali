.class public final Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u0017\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "r0",
        "q0",
        "",
        "moduleName",
        "p0",
        "(Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;",
        "target",
        "u0",
        "(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;",
        "Lsj/g;",
        "c",
        "Lsj/g;",
        "bind",
        "d",
        "Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;",
        "",
        "e",
        "Z",
        "isDisplayed",
        "Commercialization_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private c:Lsj/g;

.field private d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/commercialization/R$layout;->dialog_treasure_wheel_state_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->s0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->t0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p0(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "dialog_name"

    .line 13
    .line 14
    const-string v3, "lucky_wheel_result"

    .line 15
    .line 16
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string v2, "module_name"

    .line 20
    .line 21
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "getSimpleName(...)"

    .line 35
    .line 36
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private final q0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->e:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "dialog_name"

    .line 21
    .line 22
    const-string v3, "lucky_wheel_result"

    .line 23
    .line 24
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    sget-object v2, Lqi/h;->a:Lqi/h;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v3, "getSimpleName(...)"

    .line 38
    .line 39
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Lqi/h;->p(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method private final r0()V
    .locals 11

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> render() --> target = "

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lwj/h;->c(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lsj/g;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Lsj/g;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    new-instance v1, Lcom/transsion/commercialization/task/wheel/i;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/i;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lsj/g;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, v0, Lsj/g;->n:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    new-instance v1, Lcom/transsion/commercialization/task/wheel/j;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/j;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->getPrice()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;->getPriceType()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move-object v0, v1

    .line 81
    :goto_0
    const-string v2, "THANK_YOU"

    .line 82
    .line 83
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lsj/g;

    .line 96
    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    iget-object v2, v2, Lsj/g;->k:Landroid/widget/TextView;

    .line 100
    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    sget v3, Lcom/transsion/commercializationapi/R$string;->treasure_don_not_give_up_more_amazing_prizes_are_waiting_for_you:I

    .line 104
    .line 105
    invoke-static {v0, v3}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lsj/g;

    .line 113
    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    iget-object v2, v2, Lsj/g;->i:Landroid/widget/TextView;

    .line 117
    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    sget v3, Lcom/transsion/commercializationapi/R$string;->treasure_view_more_prizes:I

    .line 121
    .line 122
    invoke-static {v0, v3}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lsj/g;

    .line 130
    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    iget-object v2, v2, Lsj/g;->j:Landroid/widget/TextView;

    .line 134
    .line 135
    if-eqz v2, :cond_5

    .line 136
    .line 137
    sget v3, Lcom/transsion/commercializationapi/R$string;->treasure_so_close:I

    .line 138
    .line 139
    invoke-static {v0, v3}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lsj/g;

    .line 147
    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    iget-object v0, v0, Lsj/g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 151
    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    const/16 v2, 0x8

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    :cond_6
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lsj/g;

    .line 160
    .line 161
    const/4 v2, 0x4

    .line 162
    if-eqz v0, :cond_7

    .line 163
    .line 164
    iget-object v0, v0, Lsj/g;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    :cond_7
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lsj/g;

    .line 172
    .line 173
    if-eqz v0, :cond_a

    .line 174
    .line 175
    iget-object v0, v0, Lsj/g;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 176
    .line 177
    if-eqz v0, :cond_a

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    if-eqz v4, :cond_a

    .line 188
    .line 189
    sget-object v3, Ldi/c;->a:Ldi/c;

    .line 190
    .line 191
    sget v0, Lcom/transsion/commercializationapi/R$string;->treasure_you_have_just_won_a:I

    .line 192
    .line 193
    invoke-static {v4, v0}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    const-string v0, "getString(...)"

    .line 198
    .line 199
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    sget v6, Lcom/tn/lib/widget/R$font;->mulish_bold:I

    .line 203
    .line 204
    sget v0, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 205
    .line 206
    invoke-static {v4, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    .line 211
    .line 212
    invoke-static {v4, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    iget-object v7, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 217
    .line 218
    if-eqz v7, :cond_9

    .line 219
    .line 220
    invoke-virtual {v7}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->getPrice()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    if-eqz v7, :cond_9

    .line 225
    .line 226
    invoke-virtual {v7}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;->getName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    goto :goto_1

    .line 231
    :cond_9
    move-object v7, v1

    .line 232
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v9, "  "

    .line 238
    .line 239
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    sget v9, Lcom/tn/lib/widget/R$font;->mulish_regular:I

    .line 250
    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    invoke-virtual/range {v3 .. v10}, Ldi/c;->c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Landroid/text/SpannableString;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lsj/g;

    .line 264
    .line 265
    if-eqz v2, :cond_a

    .line 266
    .line 267
    iget-object v2, v2, Lsj/g;->k:Landroid/widget/TextView;

    .line 268
    .line 269
    if-eqz v2, :cond_a

    .line 270
    .line 271
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lsj/g;

    .line 275
    .line 276
    if-eqz v0, :cond_c

    .line 277
    .line 278
    iget-object v0, v0, Lsj/g;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 279
    .line 280
    if-eqz v0, :cond_c

    .line 281
    .line 282
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 283
    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    const-string v4, "getContext(...)"

    .line 289
    .line 290
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    iget-object v3, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 298
    .line 299
    if-eqz v3, :cond_b

    .line 300
    .line 301
    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->getPrice()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    if-eqz v3, :cond_b

    .line 306
    .line 307
    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;->getImgUrl()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    :cond_b
    invoke-virtual {v2, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 316
    .line 317
    .line 318
    :cond_c
    return-void
.end method

.method private static final s0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "close"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->p0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "treasure_wheel_result_dismissed"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->F1(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final t0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "/rewards/center"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "source"

    .line 8
    .line 9
    const-string v1, "TreasureWheelStateDialog"

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x3

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v1, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->getPrice()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;->getPriceType()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_0
    const-string p1, "THANK_YOU"

    .line 35
    .line 36
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const-string p1, "view_more_prizes"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->p0(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string p1, "claim_now"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->p0(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lcom/tn/lib/widget/R$style;->BaseDialogStyle:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->q0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    const/4 v1, -0x2

    .line 23
    invoke-virtual {p2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object p2, Lcom/transsion/commercialization/pslink/f;->a:Lcom/transsion/commercialization/pslink/f;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/transsion/commercialization/pslink/f;->f()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {p1}, Lsj/g;->a(Landroid/view/View;)Lsj/g;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lsj/g;

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->r0()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final u0(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 2
    .line 3
    return-object p0
.end method
