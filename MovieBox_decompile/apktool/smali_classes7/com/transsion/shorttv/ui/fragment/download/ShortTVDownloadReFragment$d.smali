.class public final Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/shorttv/order/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->U0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

.field final synthetic b:Lcom/transsion/shorttv/bean/Subject;

.field final synthetic c:I

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Lcom/transsion/shorttv/bean/Subject;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->G0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)V

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
    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->getTAG()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    const-string v1, "<get-TAG>(...)"

    .line 29
    .line 30
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "callPayMethod onPayFail, errorCode="

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ", errorMsg="

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    const/4 v11, 0x4

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    invoke-static/range {v7 .. v12}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lwr/b;->a:Lwr/b;

    .line 65
    .line 66
    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    .line 67
    .line 68
    iget v3, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    .line 69
    .line 70
    const-string v4, "fail"

    .line 71
    .line 72
    const-string v7, "download"

    .line 73
    .line 74
    invoke-virtual/range {v1 .. v7}, Lwr/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v8, Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog;->e:Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;

    .line 78
    .line 79
    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    .line 80
    .line 81
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_pay_failed_title:I

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    const-string v1, "getString(...)"

    .line 88
    .line 89
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    .line 93
    .line 94
    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_pay_failed_message:I

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    .line 104
    .line 105
    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_payment_retry:I

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 115
    .line 116
    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->e:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v3, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    .line 119
    .line 120
    iget v4, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    .line 121
    .line 122
    new-instance v12, Lcom/transsion/shorttv/ui/fragment/download/y;

    .line 123
    .line 124
    invoke-direct {v12, v1, v2, v3, v4}, Lcom/transsion/shorttv/ui/fragment/download/y;-><init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    .line 128
    .line 129
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_payment_cancel:I

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    const/16 v15, 0x20

    .line 136
    .line 137
    const/16 v16, 0x0

    .line 138
    .line 139
    const/4 v14, 0x0

    .line 140
    invoke-static/range {v8 .. v16}, Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;->b(Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    .line 145
    .line 146
    const-string v3, "ShortTvAlertDialog"

    .line 147
    .line 148
    invoke-virtual {v1, v2, v3}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->i0(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public b(Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p0 .. p1}, Lcom/transsion/shorttv/order/b$a;->b(Lcom/transsion/shorttv/order/b;Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getOrderStatus()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x2

    .line 28
    if-ne v2, v3, :cond_4

    .line 29
    .line 30
    sget-object v4, Lwr/b;->a:Lwr/b;

    .line 31
    .line 32
    iget-object v5, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    .line 33
    .line 34
    iget v6, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    .line 35
    .line 36
    const-string v9, "0"

    .line 37
    .line 38
    const-string v10, "download"

    .line 39
    .line 40
    const-string v7, "success"

    .line 41
    .line 42
    const-string v8, ""

    .line 43
    .line 44
    invoke-virtual/range {v4 .. v10}, Lwr/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->s(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->g0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R0(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->g0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->S0()V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->P0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->r()Landroidx/lifecycle/b0;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/Long;

    .line 101
    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const-wide/16 v2, 0x0

    .line 110
    .line 111
    :goto_1
    invoke-static {v1, v2, v3}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->M0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;J)V

    .line 112
    .line 113
    .line 114
    goto :goto_a

    .line 115
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const/4 v3, 0x3

    .line 123
    if-ne v2, v3, :cond_6

    .line 124
    .line 125
    sget-object v4, Lwr/b;->a:Lwr/b;

    .line 126
    .line 127
    iget-object v5, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    .line 128
    .line 129
    iget v6, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    .line 130
    .line 131
    const-string v9, "0"

    .line 132
    .line 133
    const-string v10, "download"

    .line 134
    .line 135
    const-string v7, "cancel"

    .line 136
    .line 137
    const-string v8, ""

    .line 138
    .line 139
    invoke-virtual/range {v4 .. v10}, Lwr/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_a

    .line 143
    :cond_6
    :goto_3
    sget-object v11, Lwr/b;->a:Lwr/b;

    .line 144
    .line 145
    iget-object v12, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    .line 146
    .line 147
    iget v13, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    .line 148
    .line 149
    if-eqz p1, :cond_8

    .line 150
    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getDescription()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-nez v2, :cond_7

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_7
    :goto_4
    move-object v15, v2

    .line 159
    goto :goto_6

    .line 160
    :cond_8
    :goto_5
    const-string v2, ""

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :goto_6
    if-eqz v1, :cond_a

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-nez v1, :cond_9

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_9
    :goto_7
    move-object/from16 v16, v1

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_a
    :goto_8
    const-string v1, "-1"

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :goto_9
    const-string v17, "download"

    .line 179
    .line 180
    const-string v14, "fail"

    .line 181
    .line 182
    invoke-virtual/range {v11 .. v17}, Lwr/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :goto_a
    return-void
.end method
