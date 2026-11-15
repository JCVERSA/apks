.class public Lcom/mbridge/msdk/foundation/entity/m;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static N:I = 0x1

.field public static O:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:J

.field private L:Ljava/lang/String;

.field private M:I

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    .line 22
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    .line 23
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILjava/lang/String;JI)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    .line 54
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    .line 55
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    const/4 v0, 0x1

    if-eq p7, v0, :cond_1

    const/16 v0, 0x11f

    if-eq p7, v0, :cond_1

    const/16 v0, 0x5e

    if-eq p7, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p7, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    const-string p7, "2000025"

    iput-object p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_1
    const-string p7, "m_download_end"

    iput-object p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    .line 58
    :goto_0
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result p7

    iput p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    .line 59
    invoke-static {p1, p7}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    .line 60
    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->J:I

    .line 61
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->y:Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->z:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 64
    :try_start_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p7, "utf-8"

    invoke-static {p1, p7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 65
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    :cond_3
    :goto_3
    iput p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    .line 67
    iput-object p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    const-wide/16 p3, 0x0

    cmp-long p1, p5, p3

    if-nez p1, :cond_4

    .line 68
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoSize()I

    move-result p1

    int-to-long p5, p1

    :cond_4
    iput-wide p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->K:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    .line 85
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    .line 86
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    .line 87
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    .line 4
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    .line 5
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    .line 6
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    .line 8
    iput-object p11, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    .line 9
    iput p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->p:I

    .line 10
    iput p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->M:I

    .line 11
    iput p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->J:I

    .line 12
    :try_start_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 13
    const-string p1, "utf-8"

    invoke-static {p6, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :cond_0
    :goto_0
    iput-object p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    .line 16
    iput p8, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    .line 17
    iput-object p9, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    int-to-long p1, p10

    .line 18
    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->K:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    .line 39
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    .line 40
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    .line 41
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    .line 43
    iput-object p8, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->J:I

    .line 45
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    :try_start_0
    const-string p1, "utf-8"

    invoke-static {p4, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    :cond_0
    :goto_0
    iput p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    .line 49
    iput-object p6, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    int-to-long p1, p7

    .line 50
    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->K:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    .line 27
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    .line 28
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    .line 29
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    .line 32
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 33
    :try_start_0
    const-string p1, "utf-8"

    invoke-static {p3, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    .line 91
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    .line 92
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    .line 93
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    .line 94
    iput p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    .line 95
    iput-object p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    .line 96
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    const-string p1, "utf-8"

    invoke-static {p4, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    :cond_0
    :goto_0
    iput-object p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    .line 100
    iput-object p6, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    .line 101
    iput-object p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    .line 102
    iput-object p8, p0, Lcom/mbridge/msdk/foundation/entity/m;->j:Ljava/lang/String;

    .line 103
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lcom/mbridge/msdk/foundation/same/a;->L:I

    if-le p1, p2, :cond_1

    const/4 p1, 0x2

    .line 104
    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    .line 108
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    .line 109
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    .line 110
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->y:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->z:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    .line 115
    iput p6, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    .line 119
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    .line 120
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    .line 121
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->y:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->z:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    .line 126
    iput p6, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    .line 127
    iput-object p8, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    .line 128
    iput p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    .line 72
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    .line 73
    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    .line 74
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->m:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->H:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->r:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    .line 80
    iput p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    .line 81
    iput-object p8, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->H:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->J:I

    .line 2
    .line 3
    return v0
.end method

.method public D()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->K:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->L:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public F()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->M:I

    .line 2
    .line 3
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    return-object p2

    .line 6
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return-object p2

    :cond_2
    return-object p1

    :catch_0
    return-object p2
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->b:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    .line 7
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->e:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->h:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->j:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->l:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->s:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->o:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    return-void
.end method

.method public m()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->p:I

    return v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->y:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->r:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->z:Ljava/lang/String;

    return-void
.end method

.method public p()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    return v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->A:Ljava/lang/String;

    return-void
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    return v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->B:Ljava/lang/String;

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->D:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->E:Ljava/lang/String;

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->G:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "RewardReportData [key="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", networkType="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", isCompleteView="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->p:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", watchedMillis="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->M:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", videoLength="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->J:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", offerUrl="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", reason="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", result="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", duration="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", videoSize="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->K:J

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, "]"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->y:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->z:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->L:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    .line 2
    .line 3
    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    .line 2
    .line 3
    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->G:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
