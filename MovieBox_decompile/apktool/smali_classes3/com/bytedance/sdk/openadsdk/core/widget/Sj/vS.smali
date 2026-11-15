.class public Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;
    }
.end annotation


# instance fields
.field Dq:Z

.field EjP:Landroid/webkit/WebView;

.field Fmk:F

.field HiB:I

.field Jcg:Z

.field private LD:J

.field private final LqL:Ljava/lang/String;

.field RiZ:J

.field Sj:Landroid/content/Context;

.field TEQ:I

.field TKC:Ljava/lang/String;

.field TzV:Z

.field private final Yf:Ljava/lang/String;

.field Ym:F

.field Zq:F

.field aa:F

.field dNu:Z

.field dx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private fF:Z

.field ib:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field kF:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

.field private final ley:Z

.field sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field sU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field sef:F

.field uA:Ljava/lang/String;

.field uP:Landroid/view/GestureDetector;

.field uvD:J

.field vS:I

.field private final wE:Landroid/os/Handler;

.field zR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/content/Context;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/component/utils/LqL;

    .line 5
    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->wE:Landroid/os/Handler;

    .line 18
    .line 19
    const-string v0, "landingpage"

    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->vS:I

    .line 25
    .line 26
    const-string v0, ".*\\/serp\\?sc=.*&clkt=\\d+$"

    .line 27
    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->LqL:Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, ".*\\/\\?caf_results=.*&clkt=\\d+$"

    .line 31
    .line 32
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Yf:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->kF:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    .line 40
    .line 41
    new-instance v0, Landroid/view/GestureDetector;

    .line 42
    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$2;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uP:Landroid/view/GestureDetector;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    .line 60
    .line 61
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Ir()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->HiB:I

    .line 72
    .line 73
    new-instance p1, Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sU:Ljava/util/Map;

    .line 79
    .line 80
    new-instance p1, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    .line 86
    .line 87
    new-instance p1, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->zR:Ljava/util/Map;

    .line 93
    .line 94
    new-instance p1, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->ib:Ljava/util/List;

    .line 100
    .line 101
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->ley:Z

    .line 102
    .line 103
    return-void
.end method

.method private Dq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v1, v0, 0x1

    .line 14
    .line 15
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->ley:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private EjP()V
    .locals 4

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Ym:F

    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->EjP(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->aa:F

    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->HiB(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Zq:F

    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->vS(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->RiZ:J

    long-to-float v1, v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Jcg(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    move-result-object v0

    .line 17
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x64

    .line 18
    iput v2, v1, Landroid/os/Message;->what:I

    .line 19
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->wE:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private EjP(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V

    return-void
.end method

.method private HiB()Z
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    :cond_0
    const-string v0, ".*\\/serp\\?sc=.*&clkt=\\d+$"

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string v0, ".*\\/\\?caf_results=.*&clkt=\\d+$"

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :goto_1
    const-string v1, "WebArbitrageBehavior"

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    const/4 v0, 0x0

    .line 44
    return v0
.end method

.method private Jcg()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->vS:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->vS:I

    .line 6
    .line 7
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->HiB:I

    .line 8
    .line 9
    if-le v0, v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const-string v0, "landingpage"

    .line 13
    .line 14
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    const-string v0, "landingpage_endcard"

    .line 23
    .line 24
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    const-string v0, "landingpage_split_screen"

    .line 33
    .line 34
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    const-string v0, "landingpage_direct"

    .line 43
    .line 44
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    const-string v0, "landingpage_split_ceiling"

    .line 53
    .line 54
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return v1

    .line 64
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 65
    return v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->LD:J

    return-wide p1
.end method

.method private Sj(ILjava/lang/String;I)V
    .locals 6

    .line 22
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sU:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 26
    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 28
    :goto_1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;-><init>()V

    .line 29
    invoke-virtual {v5, p2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p2

    .line 30
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p2

    sub-long/2addr v0, v2

    long-to-float p3, v0

    .line 31
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Dq(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p2

    .line 32
    invoke-virtual {p2, v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->uA(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p2

    .line 33
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->vS()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;ILjava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj(ILjava/lang/String;I)V

    return-void
.end method

.method private TKC(I)V
    .locals 3

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->vS()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg:Z

    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Ym:F

    .line 17
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->aa:F

    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->RiZ:J

    long-to-float v1, v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->TKC(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    move-result-object p1

    .line 22
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->fF:Z

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->Sj(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->Sj(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :catchall_0
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc8

    .line 27
    iput v1, v0, Landroid/os/Message;->what:I

    .line 28
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->wE:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Dq()V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->LD:J

    return-wide v0
.end method

.method private sP(I)V
    .locals 5

    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->ib:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->ib:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->zR:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v2, v0

    .line 15
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    .line 17
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->TEQ(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V

    return-void
.end method

.method private sP(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Fmk:F

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sef:F

    .line 23
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->aa:F

    sub-float v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    sub-float/2addr p1, v0

    .line 24
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Zq:F

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private vS()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    .line 2
    .line 3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    int-to-float v0, v0

    .line 37
    div-float/2addr v1, v0

    .line 38
    const/4 v0, 0x0

    .line 39
    cmpg-float v2, v1, v0

    .line 40
    .line 41
    if-ltz v2, :cond_1

    .line 42
    .line 43
    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    .line 45
    cmpl-float v2, v1, v2

    .line 46
    .line 47
    if-lez v2, :cond_2

    .line 48
    .line 49
    :cond_1
    move v1, v0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    .line 51
    .line 52
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    .line 5
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP(I)V

    return-void
.end method

.method public Sj(I)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 4

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    .line 37
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 38
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dNu:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :cond_0
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->EjP(I)V

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V

    .line 40
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dNu:Z

    return-void

    :cond_1
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 41
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TzV:Z

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->TKC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->EjP()I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj(ILjava/lang/String;I)V

    .line 43
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TzV:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->TKC(I)V

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V

    .line 45
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg:Z

    .line 46
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TzV:Z

    :cond_3
    return-void
.end method

.method public Sj(Landroid/view/MotionEvent;)V
    .locals 6

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uP:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC(I)V

    return-void

    .line 14
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 15
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uvD:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->RiZ:J

    .line 16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP()V

    return-void

    .line 18
    :cond_2
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC(I)V

    :goto_0
    return-void

    .line 19
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Ym:F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->aa:F

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uvD:J

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    return-void
.end method

.method public TKC()Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->kF:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    return-object v0
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TzV:Z

    .line 4
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "query="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    .line 6
    const-string v1, "&"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-le v1, v0, :cond_1

    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sP()V
    .locals 2

    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)V

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Dq()V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sU:Ljava/util/Map;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->zR:Ljava/util/Map;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->HiB()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->fF:Z

    return-void
.end method
