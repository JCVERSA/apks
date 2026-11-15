.class public final Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/shorttv/order/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field final synthetic b:Lcom/transsion/shorttv/bean/Subject;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->b:Lcom/transsion/shorttv/bean/Subject;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->d(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$callPayMethod(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    const-string v1, "errorCode"

    .line 8
    .line 9
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "errorMsg"

    .line 13
    .line 14
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static/range {p0 .. p2}, Lcom/transsion/shorttv/order/b$a;->a(Lcom/transsion/shorttv/order/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getTAG$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "callPayMethod onPayFail, errorCode="

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", errorMsg="

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const/4 v11, 0x4

    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    invoke-static/range {v7 .. v12}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object v1, Lwr/b;->a:Lwr/b;

    .line 60
    .line 61
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->b:Lcom/transsion/shorttv/bean/Subject;

    .line 62
    .line 63
    iget v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->c:I

    .line 64
    .line 65
    const-string v4, "fail"

    .line 66
    .line 67
    const-string v7, "play"

    .line 68
    .line 69
    invoke-virtual/range {v1 .. v7}, Lwr/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v8, Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog;->e:Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;

    .line 73
    .line 74
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_pay_failed_title:I

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    const-string v1, "getString(...)"

    .line 87
    .line 88
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_pay_failed_message:I

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_payment_retry:I

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 122
    .line 123
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->d:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v12, Lcom/transsion/shorttv/ui/widget/y0;

    .line 126
    .line 127
    invoke-direct {v12, v1, v2}, Lcom/transsion/shorttv/ui/widget/y0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_payment_cancel:I

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    const/16 v15, 0x20

    .line 143
    .line 144
    const/16 v16, 0x0

    .line 145
    .line 146
    const/4 v14, 0x0

    .line 147
    invoke-static/range {v8 .. v16}, Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;->b(Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const-string v3, "ShortTvAlertDialog"

    .line 158
    .line 159
    invoke-virtual {v1, v2, v3}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->i0(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public b(Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static/range {p0 .. p1}, Lcom/transsion/shorttv/order/b$a;->b(Lcom/transsion/shorttv/order/b;Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 11
    .line 12
    invoke-static {v3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getTAG$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "callPayMethod onPurchase, orderStatus="

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    filled-new-array {v4}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v6, 0x4

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-static/range {v2 .. v7}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Ljr/b;->a:Ljr/b$a;

    .line 44
    .line 45
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    sget v4, Lcom/transsion/shorttv/R$string;->short_tv_pay_series_successfully:I

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Ljr/b$a;->e(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getOrderStatus()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v2, 0x0

    .line 74
    :goto_0
    if-nez v2, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    const/4 v4, 0x2

    .line 82
    if-ne v3, v4, :cond_3

    .line 83
    .line 84
    sget-object v5, Lwr/b;->a:Lwr/b;

    .line 85
    .line 86
    iget-object v6, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->b:Lcom/transsion/shorttv/bean/Subject;

    .line 87
    .line 88
    iget v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->c:I

    .line 89
    .line 90
    const-string v10, "0"

    .line 91
    .line 92
    const-string v11, "play"

    .line 93
    .line 94
    const-string v8, "success"

    .line 95
    .line 96
    const-string v9, ""

    .line 97
    .line 98
    invoke-virtual/range {v5 .. v11}, Lwr/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getMShortTvViewModel$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R0(I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 114
    .line 115
    invoke-static {v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/f;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 120
    .line 121
    invoke-static {v3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayerView$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/ui/ORPlayerView;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 126
    .line 127
    invoke-static {v4}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getData$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lnr/e;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lnr/e;)V

    .line 132
    .line 133
    .line 134
    goto :goto_9

    .line 135
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    const/4 v4, 0x3

    .line 143
    if-ne v3, v4, :cond_5

    .line 144
    .line 145
    sget-object v5, Lwr/b;->a:Lwr/b;

    .line 146
    .line 147
    iget-object v6, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->b:Lcom/transsion/shorttv/bean/Subject;

    .line 148
    .line 149
    iget v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->c:I

    .line 150
    .line 151
    const-string v10, "0"

    .line 152
    .line 153
    const-string v11, "play"

    .line 154
    .line 155
    const-string v8, "cancel"

    .line 156
    .line 157
    const-string v9, ""

    .line 158
    .line 159
    invoke-virtual/range {v5 .. v11}, Lwr/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_9

    .line 163
    :cond_5
    :goto_2
    sget-object v12, Lwr/b;->a:Lwr/b;

    .line 164
    .line 165
    iget-object v13, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->b:Lcom/transsion/shorttv/bean/Subject;

    .line 166
    .line 167
    iget v14, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->c:I

    .line 168
    .line 169
    if-eqz v1, :cond_7

    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getDescription()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-nez v1, :cond_6

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_6
    :goto_3
    move-object/from16 v16, v1

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_7
    :goto_4
    const-string v1, ""

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :goto_5
    if-eqz v2, :cond_9

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-nez v1, :cond_8

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_8
    :goto_6
    move-object/from16 v17, v1

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_9
    :goto_7
    const-string v1, "-1"

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :goto_8
    const-string v18, "play"

    .line 200
    .line 201
    const-string v15, "fail"

    .line 202
    .line 203
    invoke-virtual/range {v12 .. v18}, Lwr/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_9
    return-void
.end method
