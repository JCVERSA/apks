.class public Lcom/bytedance/sdk/openadsdk/EjP/Ym;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/EjP/Ym$Sj;
    }
.end annotation


# static fields
.field private static final TKC:[I


# instance fields
.field private final Dq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final EZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile Ei:J

.field private EjP:I

.field private FPG:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private Fm:Z

.field private Fmk:Ljava/lang/String;

.field private HiB:J

.field private final HpB:Ljava/util/concurrent/atomic/AtomicInteger;

.field private IOh:Ljava/lang/String;

.field private JcM:Z

.field private final Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private LD:J

.field private LqL:J

.field private final Mts:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final MuB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private RiZ:Lcom/bytedance/sdk/openadsdk/EjP/Dq;

.field public Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

.field private final TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private TzV:Lcom/bytedance/sdk/openadsdk/sU/Dq;

.field private volatile UHs:J

.field private final WMZ:Z

.field private Wjd:Z

.field private Yf:J

.field private Ym:I

.field private final Zq:Landroid/content/Context;

.field private aa:Z

.field private dNu:Z

.field private final db:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile dwU:J

.field private dx:I

.field private fF:J

.field private gY:Ljava/lang/String;

.field private ib:J

.field private jb:Lcom/bytedance/sdk/openadsdk/EjP/TEQ;

.field private kF:I

.field private ley:J

.field private volatile ndK:I

.field private pfr:J

.field private qRN:I

.field sP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sU:Z

.field private volatile sdp:J

.field private sef:Ljava/lang/String;

.field private final uA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private uvD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;

.field private vS:I

.field private wE:Ljava/lang/String;

.field private xD:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

.field private final xhi:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zR:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x4b

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/16 v3, 0x1e

    .line 8
    .line 9
    const/16 v4, 0x32

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TKC:[I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/EjP/TEQ;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;)V

    .line 2
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->jb:Lcom/bytedance/sdk/openadsdk/EjP/TEQ;

    .line 3
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->qRN:I

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;Z)V
    .locals 7

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP:I

    const-wide/16 v1, -0x1

    .line 7
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->HiB:J

    const/4 v3, 0x1

    .line 8
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS:I

    .line 9
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, -0x1

    .line 13
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ym:I

    .line 14
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sU:Z

    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->dx:I

    .line 16
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    const-string v4, "landingpage"

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 18
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->ley:J

    .line 19
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->LqL:J

    .line 20
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Yf:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->LD:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->fF:J

    .line 21
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->JcM:Z

    .line 22
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->WMZ:Z

    .line 23
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Mts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Wjd:Z

    .line 25
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Fm:Z

    .line 26
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ei:J

    .line 27
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->HpB:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->xhi:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->db:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->ndK:I

    .line 31
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->qRN:I

    .line 32
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->MuB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Zq:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez p2, :cond_0

    return-void

    .line 36
    :cond_0
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sU:Z

    .line 37
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->FPG:Ljava/lang/ref/WeakReference;

    .line 38
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/webkit/WebView;

    if-nez p3, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->MuB()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sU:Z

    invoke-direct {v3, p3, p1, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;-><init>(Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;

    .line 41
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC()Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    :cond_2
    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->IOh()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->nru()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Dq;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sU:Z

    invoke-direct {v0, p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->RiZ:Lcom/bytedance/sdk/openadsdk/EjP/Dq;

    .line 44
    :cond_3
    instance-of p2, p2, Lcom/bytedance/sdk/component/uA/HiB;

    if-eqz p2, :cond_4

    .line 45
    move-object p2, p3

    check-cast p2, Lcom/bytedance/sdk/component/uA/HiB;

    iget-wide v3, p2, Lcom/bytedance/sdk/component/uA/HiB;->Sj:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->pfr:J

    goto :goto_0

    .line 46
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->pfr:J

    .line 47
    :goto_0
    :try_start_0
    new-instance p2, Lcom/bytedance/sdk/openadsdk/EjP/Ym$Sj;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;)V

    const-string v0, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-virtual {p3, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 48
    const-string p3, "LandingPageLog"

    const-string v0, "addJavascriptInterface exception"

    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz p1, :cond_5

    .line 49
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DhB()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DhB()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "page_id"

    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->HiB:J

    .line 51
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->gY:Ljava/lang/String;

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/EjP/Ym;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/EjP/Ym;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Mts:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/EjP/Ym;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private Sj(ILjava/lang/String;)V
    .locals 7

    .line 175
    const-string v0, "\""

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;->sP:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;->sP:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    const-string v3, "cid"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v3, "ad_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v3, "log_extra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v3, "\"/** adInfo **/\""

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "\"/** first_page **/\""

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string p1, "\"/** ix_to_externalurl **/\""

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->HiB:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    const-string v3, "0"

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "1"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-static {v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string p1, "\"/** preload_status **/\""

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->qRN:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const-string v3, "2"

    :cond_2
    invoke-static {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string p1, "\"/** scene_state **/\""

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string p1, "\"/** web_init_time **/\""

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->pfr:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string p1, "\"/** channel_name **/\""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eMB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string p1, "\"/** session_id **/\""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string p1, "\"/** web_url **/\""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 192
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TKC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->FPG:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_3

    .line 194
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 195
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    .line 196
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym$3;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Ym;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    return-void

    .line 197
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/EjP/Ym;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(ILjava/lang/String;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JI)V
    .locals 9

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v8, Lcom/bytedance/sdk/openadsdk/EjP/Ym$4;

    move-object v2, v8

    move v3, p4

    move-object v4, p0

    move-wide v5, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/EjP/Ym$4;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;)V

    const-string v4, "lp_feeling_duration"

    move-object v2, p0

    move-object v3, p1

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    return-void
.end method

.method private Sj(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc8

    if-le v1, v3, :cond_4

    const/16 v1, 0x26

    .line 42
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    const/16 v4, 0x12c

    if-eq v1, v3, :cond_0

    if-le v1, v4, :cond_1

    :cond_0
    const/16 v1, 0x3f

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_1
    if-eq v1, v3, :cond_3

    if-le v1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    .line 44
    :cond_3
    :goto_0
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 45
    :cond_4
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string p1, "type"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    const-string p1, "load_finish_progress"

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_5
    return-void
.end method

.method private Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 154
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 14

    move-object v7, p0

    .line 155
    iget-boolean v0, v7, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Wjd:Z

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 157
    :cond_1
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TzV:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->FPG()I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 159
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v7, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v11, v7, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    new-instance v13, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v3, p1

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lorg/json/JSONObject;Ljava/lang/String;IJ)V

    move-object v12, p1

    invoke-static/range {v8 .. v13}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private Sj(ZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TEQ()I

    move-result p1

    .line 174
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;

    const-string v1, "sendPrefLog"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Ym;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_1

    return v0

    .line 199
    :pswitch_3
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;->vS:Z

    return p1

    .line 200
    :pswitch_4
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;->HiB:Z

    return p1

    .line 201
    :pswitch_5
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;->EjP:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private TEQ()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->FPG:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/webkit/WebView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :catchall_0
    :cond_1
    return v1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/EjP/Ym;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->kF:I

    return p0
.end method

.method private TKC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "javascript:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/EjP/Ym;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->dx:I

    return p0
.end method

.method private uA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Fm:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Za()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method


# virtual methods
.method public Dq()V
    .locals 6

    .line 1
    const-string v0, "landingpage"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "landingpage_endcard"

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "landingpage_split_screen"

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string v0, "landingpage_direct"

    .line 32
    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const-string v0, "aggregate_page"

    .line 42
    .line 43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    const-string v0, "landingpage_split_ceiling"

    .line 52
    .line 53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS:I

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    if-ne v0, v1, :cond_2

    .line 66
    .line 67
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->LqL:J

    .line 68
    .line 69
    const-wide/16 v2, 0x0

    .line 70
    .line 71
    cmp-long v0, v0, v2

    .line 72
    .line 73
    if-gtz v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TKC()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->ley:J

    .line 87
    .line 88
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->LqL:J

    .line 89
    .line 90
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    sub-long/2addr v0, v2

    .line 95
    new-instance v2, Lorg/json/JSONObject;

    .line 96
    .line 97
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .line 99
    .line 100
    :try_start_0
    const-string v3, "load_status"

    .line 101
    .line 102
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS:I

    .line 103
    .line 104
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    const-string v3, "max_scroll_percent"

    .line 108
    .line 109
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Mts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    const-string v3, "jump_times"

    .line 119
    .line 120
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->HpB:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 121
    .line 122
    const/4 v5, 0x0

    .line 123
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    const-string v3, "click_times"

    .line 131
    .line 132
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->xhi:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    .line 134
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    const-string v3, "render_type"

    .line 142
    .line 143
    const-string v4, "h5"

    .line 144
    .line 145
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    const-string v3, "render_type_2"

    .line 149
    .line 150
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    :catch_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    .line 159
    const/4 v4, 0x1

    .line 160
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    .line 162
    .line 163
    const-wide/32 v3, 0x927c0

    .line 164
    .line 165
    .line 166
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    const-string v3, "stay_page"

    .line 171
    .line 172
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 180
    .line 181
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->gY:Ljava/lang/String;

    .line 182
    .line 183
    const-string v3, "landingPause"

    .line 184
    .line 185
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_2
    :goto_0
    return-void
.end method

.method public EjP()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->UHs:J

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->IOh:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public EjP(Z)V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->FPG:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    const-string v1, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    const-string v1, "LandingPageLog"

    const-string v2, "removeJavascriptInterface exception"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    const-string v0, "1"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(ZLjava/lang/String;)V

    .line 11
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Wjd:Z

    if-eqz p1, :cond_3

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->fF:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->qRN:I

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TEQ()I

    move-result v5

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JII)V

    goto :goto_2

    .line 15
    :cond_2
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    :try_start_1
    const-string v0, "load_status"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    const-string v0, "max_scroll_percent"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Mts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string v0, "jump_times"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->HpB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string v0, "click_times"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->xhi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    const-string v0, "render_type"

    const-string v1, "h5"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string v0, "render_type_2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    :catch_1
    const-string v0, "stay_page"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 24
    :cond_3
    :goto_2
    const-string p1, "landingpage"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "landingpage_endcard"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "landingpage_split_screen"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "landingpage_direct"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "aggregate_page"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "landingpage_split_ceiling"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 27
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->gY:Ljava/lang/String;

    const-string v2, "landingFinish"

    invoke-virtual {p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public HiB()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->dwU:J

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS()V

    :cond_0
    return-void
.end method

.method public Jcg()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->fF:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->fF:J

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->ley:J

    .line 20
    .line 21
    const-string v0, "landingpage"

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, "landingpage_endcard"

    .line 33
    .line 34
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const-string v0, "landingpage_split_screen"

    .line 43
    .line 44
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    const-string v0, "landingpage_direct"

    .line 53
    .line 54
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    const-string v0, "aggregate_page"

    .line 63
    .line 64
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->gY:Ljava/lang/String;

    .line 88
    .line 89
    const-string v4, "landingStart"

    .line 90
    .line 91
    invoke-virtual {v0, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->gY:Ljava/lang/String;

    .line 102
    .line 103
    const-string v4, "landingContinue"

    .line 104
    .line 105
    invoke-virtual {v0, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 125
    .line 126
    .line 127
    move-result-wide v2

    .line 128
    invoke-virtual {p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(ZJ)V

    .line 129
    .line 130
    .line 131
    :cond_5
    return-void
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->qRN:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->LqL:J

    return-void
.end method

.method public Sj(Landroid/view/MotionEvent;)V
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->dNu:Z

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj(Landroid/view/MotionEvent;)V

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 163
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ei:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->xhi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 165
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->db:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 166
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 167
    :try_start_0
    const-string v0, "url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :catch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ei:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-string v2, "click_time"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Sj(Landroid/webkit/WebView;I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ei:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ei:J

    .line 19
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Yf:J

    cmp-long v0, v0, v2

    const/16 v1, 0x64

    if-nez v0, :cond_2

    if-lez p2, :cond_2

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Yf:J

    goto :goto_0

    .line 21
    :cond_2
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->LD:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->LD:J

    .line 23
    :cond_3
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP:I

    sget-object v2, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TKC:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    .line 24
    const-string v0, "landingpage"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "landingpage_endcard"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "landingpage_split_screen"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "landingpage_direct"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "aggregate_page"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP:I

    :goto_1
    sget-object v2, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TKC:[I

    array-length v4, v2

    if-ge v0, v4, :cond_6

    .line 27
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP:I

    aget v4, v2, v4

    if-lt p2, v4, :cond_6

    add-int/lit8 v4, v0, 0x1

    .line 28
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP:I

    .line 29
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 30
    :try_start_0
    const-string v6, "url"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->HiB:J

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_5

    .line 32
    const-string v8, "page_id"

    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    :cond_5
    const-string v6, "render_type"

    const-string v7, "h5"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v6, "render_type_2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v6, "pct"

    aget v0, v2, v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    const-string v0, "progress_load_finish"

    invoke-direct {p0, v0, v5}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    move v0, v4

    goto :goto_1

    :cond_6
    if-ne p2, v1, :cond_7

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(ZJ)V

    .line 38
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->LD:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Yf:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-string p2, "progress"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7
    return-void
.end method

.method public Sj(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->xD:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 136
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/vS;->Sj(Lorg/json/JSONObject;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 137
    const-string p1, "image"

    invoke-virtual {p5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS:I

    const/4 p5, 0x2

    if-eq p1, p5, :cond_2

    const/4 p1, 0x3

    .line 139
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS:I

    .line 140
    :cond_2
    :goto_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ym:I

    .line 141
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Fmk:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sef:Ljava/lang/String;

    .line 143
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->aa:Z

    return-void
.end method

.method public Sj(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .locals 0

    .line 48
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->dNu:Z

    .line 49
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->kF:I

    const/4 p3, 0x1

    add-int/2addr p1, p3

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->kF:I

    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 51
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP()V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->RiZ:Lcom/bytedance/sdk/openadsdk/EjP/Dq;

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 54
    invoke-virtual {p1, p2, p5}, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Sj(Ljava/lang/String;I)V

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->FPG:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 57
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p2

    iget p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->ndK:I

    if-le p2, p4, :cond_3

    .line 59
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->HpB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 60
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->ndK:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 61
    :goto_2
    const-string p2, "LandingPageLog"

    const-string p4, "copyBackForwardList exception"

    invoke-static {p2, p4, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_4
    :goto_3
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ei:J

    const-wide/16 p4, 0x0

    cmp-long p1, p1, p4

    if-nez p1, :cond_5

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ei:J

    .line 64
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->xD:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz p1, :cond_6

    .line 65
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/vS;->HiB()V

    .line 66
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 67
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    :try_start_1
    const-string p3, "render_type"

    const-string p4, "h5"

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string p3, "render_type_2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->qRN:I

    if-ltz p2, :cond_7

    .line 71
    const-string p3, "preload_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :catch_1
    :cond_7
    const-string p2, "load_start"

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_8
    return-void
.end method

.method public Sj(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 75
    invoke-virtual {v0, v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(ZJ)V

    .line 76
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj()V

    .line 78
    :cond_0
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->xD:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v4, :cond_1

    .line 79
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/vS;->vS()V

    .line 80
    :cond_1
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->RiZ:Lcom/bytedance/sdk/openadsdk/EjP/Dq;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Sj(Ljava/lang/String;)V

    :cond_2
    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 82
    iget-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->JcM:Z

    if-nez v5, :cond_3

    iget-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Wjd:Z

    if-eqz v5, :cond_3

    .line 83
    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->JcM:Z

    .line 84
    const-string v5, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log(\'LandingPageLogscroll status: (\' + scrollH + \'+\' + clientH + \')/\' + totalH + \'=\' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener(\'scroll\', function(e){\n    sendScroll();\n});"

    .line 85
    invoke-static {v1, v5}, Lcom/bytedance/sdk/component/utils/sef;->Sj(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 86
    :cond_3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 87
    :cond_4
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS:I

    const/4 v5, 0x3

    const/4 v8, 0x2

    if-eq v1, v5, :cond_5

    .line 88
    iput v8, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS:I

    .line 89
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->ley:J

    .line 90
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS:I

    if-ne v1, v8, :cond_6

    move v6, v4

    .line 91
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TEQ()I

    move-result v1

    .line 92
    const-string v4, "preload_h5_type"

    const-string v5, "url"

    const-string v8, "h5"

    const-string v9, "first_page"

    const-string v10, "preload_status"

    const-string v11, "error_url"

    const-string v12, "error_msg"

    const-string v13, "error_code"

    const-string v14, "render_type_2"

    const-string v15, "render_type"

    if-eqz v6, :cond_a

    .line 93
    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->LD:J

    move-object/from16 p1, v4

    move-object v6, v5

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Yf:J

    sub-long/2addr v2, v4

    .line 94
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 95
    :try_start_0
    iget v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ym:I

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Fmk:Ljava/lang/String;

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sef:Ljava/lang/String;

    invoke-virtual {v4, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    iget v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->qRN:I

    if-ltz v5, :cond_7

    .line 99
    invoke-virtual {v4, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    :cond_7
    invoke-virtual {v4, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    invoke-virtual {v4, v15, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    invoke-virtual {v4, v14, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->rd()I

    move-result v5

    move-object/from16 v6, p1

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    const-string v5, "0"

    move/from16 v6, p3

    invoke-direct {v0, v6, v5}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(ZLjava/lang/String;)V

    const-wide/32 v5, 0x927c0

    .line 106
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 107
    const-string v5, "load_finish"

    invoke-direct {v0, v5, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uA()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sdp:J

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->vS()V

    .line 111
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->IOh:Ljava/lang/String;

    iget-wide v7, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sdp:J

    iget-wide v9, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->UHs:J

    sub-long/2addr v7, v9

    invoke-static {v4, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;J)V

    :cond_8
    move-object/from16 v4, p2

    .line 112
    invoke-direct {v0, v4, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;J)V

    .line 113
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->jb:Lcom/bytedance/sdk/openadsdk/EjP/TEQ;

    if-eqz v2, :cond_9

    .line 114
    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TEQ;->Sj(I)V

    :cond_9
    return-void

    :cond_a
    move v2, v3

    move-object v3, v4

    move-object v6, v5

    .line 115
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 116
    :try_start_1
    iget v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ym:I

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Fmk:Ljava/lang/String;

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sef:Ljava/lang/String;

    invoke-virtual {v4, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v4, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->qRN:I

    if-ltz v1, :cond_b

    .line 121
    invoke-virtual {v4, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    :cond_b
    invoke-virtual {v4, v15, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    invoke-virtual {v4, v14, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->rd()I

    move-result v1

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :catch_1
    const-string v1, "2"

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(ZLjava/lang/String;)V

    .line 127
    const-string v1, "load_fail"

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uA()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 130
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->IOh:Ljava/lang/String;

    iget-wide v7, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->UHs:J

    sub-long v7, v1, v7

    iget v9, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Ym:I

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Fmk:Ljava/lang/String;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sef:Ljava/lang/String;

    invoke-static/range {v5 .. v11}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_c
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->aa:Z

    if-eqz v1, :cond_d

    .line 132
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    const-string v1, "load_fail_main"

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_d
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 8

    .line 144
    const-string v0, "landingpage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "landingpage_endcard"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "landingpage_split_screen"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "landingpage_direct"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aggregate_page"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->IOh()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 147
    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v1, v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_4

    .line 148
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 149
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 150
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v1, :cond_4

    .line 151
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->HiB:J

    .line 153
    const-string v3, "landing_page_blank"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    :cond_4
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->xD:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/EjP/TEQ;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->jb:Lcom/bytedance/sdk/openadsdk/EjP/TEQ;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TzV:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->RiZ:Lcom/bytedance/sdk/openadsdk/EjP/Dq;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->TKC(Ljava/lang/String;)V

    .line 13
    :cond_2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    return-void
.end method

.method public Sj(Ljava/lang/String;Z)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->RiZ:Lcom/bytedance/sdk/openadsdk/EjP/Dq;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 172
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->sP(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->dx:I

    :cond_0
    return-void
.end method

.method public Sj(ZJ)V
    .locals 4

    if-eqz p1, :cond_0

    .line 202
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->zR:J

    goto :goto_0

    .line 203
    :cond_0
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->ib:J

    .line 204
    :goto_0
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->zR:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->ib:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->dNu:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->wE:Ljava/lang/String;

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->ib:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->zR:J

    sub-long/2addr v0, v2

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->dx:I

    invoke-static {p1, p2, v0, v1, p3}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JI)V

    :cond_1
    return-void
.end method

.method public TKC(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Fm:Z

    return-void
.end method

.method public TKC()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Fm:Z

    return v0
.end method

.method public sP()Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->xD:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    return-object v0
.end method

.method public sP(Z)Lcom/bytedance/sdk/openadsdk/EjP/Ym;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Wjd:Z

    return-object p0
.end method

.method public sP(I)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->dNu:Z

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj(I)V

    :cond_0
    return-void
.end method

.method public sP(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->RiZ:Lcom/bytedance/sdk/openadsdk/EjP/Dq;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Dq;->Sj(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->IOh:Ljava/lang/String;

    return-void
.end method

.method public vS()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uA()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->dwU:J

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sdp:J

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->MuB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sdp:J

    .line 32
    .line 33
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->dwU:J

    .line 34
    .line 35
    sub-long/2addr v0, v2

    .line 36
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->uP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->IOh:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
