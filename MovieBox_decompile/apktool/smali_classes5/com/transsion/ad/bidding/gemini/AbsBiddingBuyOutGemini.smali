.class public abstract Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lxh/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$a;


# instance fields
.field private a:Loh/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Boolean;

.field private e:Z

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->g:Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->b:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->d:Ljava/lang/Boolean;

    .line 11
    .line 12
    new-instance v0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$myReceiver$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$myReceiver$1;-><init>(Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->o(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "com.transsion.ad.bidding."

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ".click"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method private final g()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "com.transsion.ad.bidding."

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ".close"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method private final h()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "com.transsion.ad.bidding."

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ".display"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method private final i()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "com.transsion.ad.bidding."

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ".display_timestamp"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method private final j()Loh/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->a:Loh/a;

    .line 2
    .line 3
    return-object v0
.end method

.method private final k()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "com.transsion.ad.bidding."

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ".resume"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method private final l()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "com.transsion.ad.bidding."

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ".rewarded"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method private final m()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "com.transsion.ad.bidding."

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ".show_error"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method private final o(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x21

    .line 4
    .line 5
    const-string v1, "ad_max_ecpm_object"

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    const-class p1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 10
    .line 11
    invoke-static {p2, v1, p1}, Lcom/cloud/hisavana/sdk/common/activity/c;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 23
    .line 24
    :goto_0
    const-string v0, "display_timestamp"

    .line 25
    .line 26
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->k()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->j()Loh/a;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-eqz p2, :cond_7

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Loh/a;->f(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->h()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->j()Loh/a;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz p2, :cond_7

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Loh/a;->c(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->j()Loh/a;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    if-eqz p2, :cond_7

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Loh/a;->a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->l()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->j()Loh/a;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    if-eqz p2, :cond_7

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Loh/a;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->i()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_5

    .line 126
    .line 127
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->j()Loh/a;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    if-eqz p2, :cond_7

    .line 132
    .line 133
    invoke-virtual {p2, p1, v0, v1}, Loh/a;->d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->g()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->j()Loh/a;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    if-eqz p2, :cond_7

    .line 152
    .line 153
    invoke-virtual {p2, p1}, Loh/a;->b(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_6
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->m()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-eqz p2, :cond_7

    .line 166
    .line 167
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->j()Loh/a;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    if-eqz p2, :cond_7

    .line 172
    .line 173
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p2, v0, p1}, Loh/a;->h(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lr1/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->r(Loh/a;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e:Z

    .line 20
    .line 21
    return-void
.end method

.method public abstract c()Ljava/lang/Class;
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->getSceneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public getClassTag()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lxh/b$a;->a(Lxh/b;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n(Ljava/lang/Boolean;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lxh/b$a;->b(Lxh/b;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e:Z

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->k()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->h()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->l()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->i()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->g()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->m()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f:Landroid/content/BroadcastReceiver;

    .line 71
    .line 72
    invoke-virtual {v1, v2, v0}, Lr1/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-object p0
.end method

.method public final q(Ljava/lang/Integer;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->c:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final r(Loh/a;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->a:Loh/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 1

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final t(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->c()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "scene_id"

    .line 21
    .line 22
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string p2, "ad_max_ecpm_object"

    .line 26
    .line 27
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string p2, "app_layout_id"

    .line 31
    .line 32
    iget-object p3, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->c:Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string p2, "is_show_member_btn"

    .line 38
    .line 39
    iget-object p3, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->d:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string p2, "action_resume"

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->k()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string p2, "action_display"

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->h()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    const-string p2, "action_click"

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const-string p2, "action_display_timestamp"

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->i()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    const-string p2, "action_rewarded"

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->l()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string p2, "action_close"

    .line 90
    .line 91
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->g()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    const-string p2, "show_error"

    .line 99
    .line 100
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->m()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    .line 109
    .line 110
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    goto :goto_1

    .line 115
    :cond_0
    move-object p1, v0

    .line 116
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    goto :goto_2

    .line 121
    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 122
    .line 123
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-nez p1, :cond_1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->j()Loh/a;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    if-eqz p2, :cond_2

    .line 143
    .line 144
    new-instance p3, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const/16 v1, 0x66

    .line 155
    .line 156
    invoke-direct {p3, v1, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p3, v0}, Loh/a;->h(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 160
    .line 161
    .line 162
    :cond_2
    :goto_3
    return-void
.end method
