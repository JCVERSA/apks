.class public Lcom/cloud/hisavana/sdk/i4;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/i4$f;
    }
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/i4$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/i4;)Lcom/cloud/hisavana/sdk/i4$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/i4;->a:Lcom/cloud/hisavana/sdk/i4$f;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/r;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/sdk/i4$b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/i4$b;-><init>(Lcom/cloud/hisavana/sdk/i4;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/r;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/m3;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/r;->q()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ssp"

    .line 6
    .line 7
    const-string v2, "start execute getAdCreativies."

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/cloud/hisavana/sdk/s5;

    .line 13
    .line 14
    new-instance v1, Lcom/cloud/hisavana/sdk/i4$a;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/i4$a;-><init>(Lcom/cloud/hisavana/sdk/i4;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v0, p1, v2, v1}, Lcom/cloud/hisavana/sdk/s5;-><init>(Ljava/util/List;ILcom/cloud/hisavana/sdk/s5$b;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/s5;->q()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/a4;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/sdk/i4$c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/i4$c;-><init>(Lcom/cloud/hisavana/sdk/i4;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/a4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/m3;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/a4;->q()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/q1;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/sdk/i4$e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/i4$e;-><init>(Lcom/cloud/hisavana/sdk/i4;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/q1;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/m3;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->u()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/a2;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/sdk/i4$d;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/i4$d;-><init>(Lcom/cloud/hisavana/sdk/i4;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/a2;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/m3;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/a2;->r()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Lcom/cloud/hisavana/sdk/i4$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i4;->a:Lcom/cloud/hisavana/sdk/i4$f;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/util/List;III)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    goto :goto_1

    .line 6
    :pswitch_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/i4;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :pswitch_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/i4;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :pswitch_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 31
    .line 32
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/i4;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :pswitch_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 41
    .line 42
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/i4;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :pswitch_4
    if-lez p4, :cond_1

    .line 47
    .line 48
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-gt p2, p4, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-string p3, "ssp"

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "ads dto subList -> "

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p2, p3, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :catchall_0
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/i4;->d(Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
