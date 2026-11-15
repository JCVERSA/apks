.class Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;
.super Ljava/util/HashMap;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->k(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

.field final synthetic val$cpmCents:Ljava/lang/Double;

.field final synthetic val$entryName:Ljava/lang/String;

.field final synthetic val$isDisplay:Z

.field final synthetic val$placementFbid:Ljava/lang/String;

.field final synthetic val$segment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->this$0:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->val$placementFbid:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->val$segment:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->val$entryName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->val$cpmCents:Ljava/lang/Double;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->val$isDisplay:Z

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->b(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "${PARTNER_FBID}"

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->b(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "${APP_FBID}"

    .line 38
    .line 39
    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string v0, "${PLACEMENT_FBID}"

    .line 43
    .line 44
    invoke-virtual {p0, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string p2, "${BUNDLE}"

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->h()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string p2, "${IDFA}"

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->f()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->b(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Lcom/facebook/biddingkit/facebook/bidder/b$a;->b()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const-string v0, "${AUCTION_ID}"

    .line 74
    .line 75
    invoke-virtual {p0, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string p2, "${AB_TEST_SEGMENT}"

    .line 79
    .line 80
    invoke-virtual {p0, p2, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p4}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->g(Ljava/lang/String;)Lcom/facebook/biddingkit/bidders/LossCode;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/facebook/biddingkit/bidders/LossCode;->getStringValue()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string p2, "${AUCTION_LOSS}"

    .line 92
    .line 93
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    .line 97
    .line 98
    .line 99
    move-result-wide p1

    .line 100
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 101
    .line 102
    div-double/2addr p1, v0

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string p2, "${AUCTION_PRICE}"

    .line 108
    .line 109
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    if-nez p4, :cond_0

    .line 113
    .line 114
    const-string p1, ""

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    move-object p1, p4

    .line 118
    :goto_0
    const-string p2, "${WINNER_NAME}"

    .line 119
    .line 120
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-static {p4}, Lm8/a;->a(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_1

    .line 128
    .line 129
    const-string p1, "bidding"

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    const-string p1, "waterfall"

    .line 133
    .line 134
    :goto_1
    const-string p2, "${WINNER_TYPE}"

    .line 135
    .line 136
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    if-eqz p6, :cond_2

    .line 140
    .line 141
    const-string p1, "display"

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    const-string p1, "auction"

    .line 145
    .line 146
    :goto_2
    const-string p2, "${PHASE}"

    .line 147
    .line 148
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    return-void
.end method
