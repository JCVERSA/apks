.class Lcom/cloud/hisavana/sdk/s2$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/s2;->g(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic c:Z

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

.field final synthetic f:Lcom/cloud/hisavana/sdk/s2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/s2;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLandroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->f:Lcom/cloud/hisavana/sdk/s2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/s2$a;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/s2$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/cloud/hisavana/sdk/s2$a;->c:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/s2$a;->d:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/hisavana/sdk/s2$a;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "registerCloseAd ---- >  "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/s2$a;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "ssp"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->f:Lcom/cloud/hisavana/sdk/s2;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s2;->b(Lcom/cloud/hisavana/sdk/s2;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    sub-long v4, v2, v4

    .line 40
    .line 41
    const-wide/16 v6, 0x7d0

    .line 42
    .line 43
    cmp-long p1, v4, v6

    .line 44
    .line 45
    if-ltz p1, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->f:Lcom/cloud/hisavana/sdk/s2;

    .line 48
    .line 49
    invoke-static {p1, v2, v3}, Lcom/cloud/hisavana/sdk/s2;->c(Lcom/cloud/hisavana/sdk/s2;J)J

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->a:Ljava/lang/Object;

    .line 53
    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v0, 0x4

    .line 64
    if-eq p1, v0, :cond_2

    .line 65
    .line 66
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->c:Z

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->f:Lcom/cloud/hisavana/sdk/s2;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s2$a;->d:Landroid/content/Context;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/s2$a;->a:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/s2$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/s2$a;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/s2;->o(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->f:Lcom/cloud/hisavana/sdk/s2;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s2$a;->a:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/s2;->q(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->a:Ljava/lang/Object;

    .line 95
    .line 96
    instance-of p1, p1, Lcom/cloud/hisavana/sdk/e1;

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 107
    .line 108
    if-eq p1, v0, :cond_4

    .line 109
    .line 110
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->a:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Lcom/cloud/hisavana/sdk/e1;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/e1;->O()V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s2$a;->f:Lcom/cloud/hisavana/sdk/s2;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s2$a;->a:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/s2;->k(Lcom/cloud/hisavana/sdk/s2;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string v0, "registerCloseAd ---- > interval time not reached"

    .line 131
    .line 132
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_1
    return-void
.end method
