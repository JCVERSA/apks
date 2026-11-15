.class public Lcom/mbridge/msdk/foundation/same/net/utils/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/same/net/utils/d$b;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field private final a:Ljava/lang/String;

.field private a0:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public b0:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private c0:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public d0:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private e0:Z

.field public f:Ljava/lang/String;

.field private f0:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:I

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:I

.field public w:I

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "RequestUrlUtil"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HOST_APPLETS:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->b:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_CDN_SPARE_SETTING_URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->c:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HOST_ANALYTICS:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->d:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HOST_API:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HOST_MONITOR_DEFAULT:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->f:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HOST_PRIVACY:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->g:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HOST_REVENUE_DEFAULT:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HOST_SETTING:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HOST_TCP_ANALYTICS:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->j:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HOST_TCP_MONITOR:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->k:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HOST_TCP_REVENUE:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->l:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HOST_TCP_SETTING:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    const/16 v0, 0x24a1

    .line 16
    iput v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->n:I

    .line 17
    iput v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->o:I

    const/16 v1, 0x2704

    .line 18
    iput v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->p:I

    .line 19
    iput v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->q:I

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->r:Z

    .line 21
    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->s:Z

    const/4 v1, 0x1

    .line 22
    iput v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->t:I

    .line 23
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->SPARE_SETTING_HOST:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->u:Ljava/util/ArrayList;

    .line 24
    iput v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->v:I

    .line 25
    iput v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->w:I

    .line 26
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->SPARE_TCP_SETTING_HOST:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->x:Ljava/util/ArrayList;

    .line 27
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->DEFAULT_HB_HOST:Ljava/lang/String;

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->y:Ljava/lang/String;

    .line 28
    const-string v2, "/bid"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->z:Ljava/lang/String;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->A:Ljava/lang/String;

    .line 30
    const-string v2, "/sdk/customid"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->B:Ljava/lang/String;

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->C:Ljava/lang/String;

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->D:Ljava/lang/String;

    .line 33
    const-string v2, "/image"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->E:Ljava/lang/String;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->F:Ljava/lang/String;

    .line 35
    const-string v2, "/load"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->G:Ljava/lang/String;

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->H:Ljava/lang/String;

    .line 37
    const-string v2, "/mapping"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->I:Ljava/lang/String;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->J:Ljava/lang/String;

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->K:Ljava/lang/String;

    .line 40
    const-string v2, ""

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->L:Ljava/lang/String;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->L:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->M:Ljava/lang/String;

    .line 42
    const-string v2, "/batchPaidEvent"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->N:Ljava/lang/String;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->N:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->O:Ljava/lang/String;

    .line 44
    const-string v2, "/setting"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->P:Ljava/lang/String;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->P:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->Q:Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->P:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->R:Ljava/lang/String;

    .line 47
    const-string v2, "/rewardsetting"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->S:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->T:Ljava/lang/String;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->U:Ljava/lang/String;

    .line 50
    const-string v2, "/appwall/setting"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->V:Ljava/lang/String;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->V:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->W:Ljava/lang/String;

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->V:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->X:Ljava/lang/String;

    .line 53
    const-string v2, "/openapi/ad/v3"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->Y:Ljava/lang/String;

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->Y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->Z:Ljava/lang/String;

    .line 55
    const-string v2, "/openapi/ad/v4"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a0:Ljava/lang/String;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->b0:Ljava/lang/String;

    .line 57
    const-string v2, "/openapi/ad/v5"

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->c0:Ljava/lang/String;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->c0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->d0:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e0:Z

    .line 60
    iput v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->f0:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/foundation/same/net/utils/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/utils/d;-><init>()V

    return-void
.end method

.method private a(I)Lcom/mbridge/msdk/tracker/p;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 35
    new-instance p1, Lcom/mbridge/msdk/tracker/p;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/m;-><init>(B)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v1

    iget-object v1, v1, Lcom/mbridge/msdk/foundation/same/net/utils/d;->k:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v2

    iget v2, v2, Lcom/mbridge/msdk/foundation/same/net/utils/d;->o:I

    invoke-direct {p1, v0, v1, v2}, Lcom/mbridge/msdk/tracker/p;-><init>(Lcom/mbridge/msdk/tracker/network/toolbox/a;Ljava/lang/String;I)V

    return-object p1

    .line 36
    :cond_0
    new-instance p1, Lcom/mbridge/msdk/tracker/p;

    new-instance v0, Lcom/mbridge/msdk/tracker/network/toolbox/h;

    invoke-direct {v0}, Lcom/mbridge/msdk/tracker/network/toolbox/h;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v1

    iget-object v1, v1, Lcom/mbridge/msdk/foundation/same/net/utils/d;->M:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/mbridge/msdk/tracker/p;-><init>(Lcom/mbridge/msdk/tracker/network/toolbox/a;Ljava/lang/String;I)V

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->O:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/mbridge/msdk/setting/g;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/b;->y()Lcom/mbridge/msdk/setting/d;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/d;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 20
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v2

    const-string v3, "t_r_t"

    invoke-virtual {v2, v3, v1}, Lcom/mbridge/msdk/foundation/tools/q0;->b(Ljava/lang/String;I)I

    move-result v2

    .line 22
    const-string v3, "monitor"

    const-string v4, "type"

    invoke-virtual {v0, v3, v4, v2}, Lcom/mbridge/msdk/foundation/tools/q0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 23
    :cond_1
    new-instance v2, Lcom/mbridge/msdk/tracker/x$b;

    invoke-direct {v2}, Lcom/mbridge/msdk/tracker/x$b;-><init>()V

    new-instance v3, Lcom/mbridge/msdk/foundation/same/report/d;

    invoke-direct {v3}, Lcom/mbridge/msdk/foundation/same/report/d;-><init>()V

    .line 24
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/tracker/x$b;->a(Lcom/mbridge/msdk/tracker/d;)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v2

    new-instance v3, Lcom/mbridge/msdk/foundation/same/report/n;

    invoke-direct {v3}, Lcom/mbridge/msdk/foundation/same/report/n;-><init>()V

    .line 25
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/tracker/x$b;->a(Lcom/mbridge/msdk/tracker/w;)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v2

    .line 26
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a(I)Lcom/mbridge/msdk/tracker/p;

    move-result-object v3

    .line 27
    invoke-virtual {v2, v0, v3}, Lcom/mbridge/msdk/tracker/x$b;->a(ILcom/mbridge/msdk/tracker/p;)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v2

    const-string v3, "t_m_e_t"

    const v4, 0x240c8400

    invoke-virtual {v2, v3, v4}, Lcom/mbridge/msdk/foundation/tools/q0;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/tracker/x$b;->a(I)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v2

    const-string v3, "t_m_e_s"

    const/16 v4, 0x32

    invoke-virtual {v2, v3, v4}, Lcom/mbridge/msdk/foundation/tools/q0;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/tracker/x$b;->b(I)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v2

    const-string v3, "t_m_r_c"

    invoke-virtual {v2, v3, v4}, Lcom/mbridge/msdk/foundation/tools/q0;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/tracker/x$b;->d(I)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v2

    const-string v3, "t_m_t"

    const/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4}, Lcom/mbridge/msdk/foundation/tools/q0;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/tracker/x$b;->c(I)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v2

    const-string v3, "t_m_r_t_s"

    invoke-virtual {v2, v3, v1}, Lcom/mbridge/msdk/foundation/tools/q0;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/x$b;->e(I)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/x$b;->a()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/mbridge/msdk/tracker/u;->a()Lcom/mbridge/msdk/tracker/u;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/d;->b()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/c;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/mbridge/msdk/tracker/u;->a(Landroid/content/Context;Lcom/mbridge/msdk/tracker/x;ILorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    const-string v0, "(https|http)://[-A-Za-z0-9{}+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RequestUrlUtil"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method private b()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->M:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->A:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->H:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/tracker/network/toolbox/i;->b()Lcom/mbridge/msdk/tracker/network/toolbox/i;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/network/toolbox/i;->f(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->Z:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->b0:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->c0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->d0:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->F:Ljava/lang/String;

    return-void
.end method

.method public static h()Lcom/mbridge/msdk/foundation/same/net/utils/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d$b;->a()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 8
    aget-object p1, p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 9
    :cond_0
    const-string p1, ""

    invoke-virtual {p0, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RequestUrlUtil"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->d0:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->Z:Ljava/lang/String;

    :goto_1
    return-object p1
.end method

.method public a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, "{}"

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->H:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->H:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->H:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->A:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e0:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->n:I

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->q:I

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->f0:I

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->P:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->Q:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->B:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->C:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->S:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->T:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->I:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->J:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->V:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->W:Ljava/lang/String;

    .line 105
    .line 106
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->P:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->R:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->B:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->D:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->S:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->U:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->I:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->K:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->V:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->X:Ljava/lang/String;

    .line 105
    .line 106
    return-void
.end method

.method public g()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->s:Z

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->u:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->v:I

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr v1, v2

    .line 18
    if-gt v3, v1, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->u:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->v:I

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e()V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->x:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->w:I

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    sub-int/2addr v1, v2

    .line 49
    if-gt v3, v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->x:Ljava/util/ArrayList;

    .line 52
    .line 53
    iget v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->w:I

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->x:Ljava/util/ArrayList;

    .line 68
    .line 69
    iget v3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->w:I

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/lang/String;

    .line 76
    .line 77
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->f()V

    .line 80
    .line 81
    .line 82
    :cond_1
    return v2

    .line 83
    :cond_2
    iget-boolean v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->r:Z

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    iput v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->v:I

    .line 88
    .line 89
    iput v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->w:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    :cond_3
    return v0

    .line 92
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v2, "RequestUrlUtil"

    .line 97
    .line 98
    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->f0:I

    .line 2
    .line 3
    return v0
.end method

.method public j()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_a

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->j()Lcom/mbridge/msdk/setting/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/a;->f()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->l:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/a;->g()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iput v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->p:I

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/a;->e()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a()V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->y()Lcom/mbridge/msdk/setting/d;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/d;->d()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->k:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/d;->e()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iput v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->o:I

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/d;->c()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->f:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->b()V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a(Lcom/mbridge/msdk/setting/g;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->n0()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x1

    .line 81
    const/4 v3, 0x2

    .line 82
    const/4 v4, 0x0

    .line 83
    if-ne v1, v3, :cond_2

    .line 84
    .line 85
    move v1, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move v1, v4

    .line 88
    :goto_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->s:Z

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->n0()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->t:I

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/setting/b;->b(I)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    xor-int/2addr v1, v2

    .line 101
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->C()Ljava/util/HashMap;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_8

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->C()Ljava/util/HashMap;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-lez v1, :cond_8

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->C()Ljava/util/HashMap;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-lez v2, :cond_8

    .line 131
    .line 132
    const-string v2, "v"

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_3

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Ljava/lang/CharSequence;

    .line 145
    .line 146
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-nez v3, :cond_3

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Ljava/lang/String;

    .line 157
    .line 158
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_3

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Ljava/lang/String;

    .line 169
    .line 170
    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e:Ljava/lang/String;

    .line 171
    .line 172
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->d()V

    .line 173
    .line 174
    .line 175
    :cond_3
    const-string v2, "hb"

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_4

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Ljava/lang/CharSequence;

    .line 188
    .line 189
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-nez v3, :cond_4

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Ljava/lang/String;

    .line 200
    .line 201
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_4

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Ljava/lang/String;

    .line 212
    .line 213
    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->y:Ljava/lang/String;

    .line 214
    .line 215
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->c()V

    .line 216
    .line 217
    .line 218
    :cond_4
    const-string v2, "lg"

    .line 219
    .line 220
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_6

    .line 225
    .line 226
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    check-cast v3, Ljava/lang/CharSequence;

    .line 231
    .line 232
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-nez v3, :cond_6

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    check-cast v2, Ljava/lang/String;

    .line 243
    .line 244
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_5

    .line 249
    .line 250
    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->d:Ljava/lang/String;

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_5
    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->j:Ljava/lang/String;

    .line 254
    .line 255
    :cond_6
    :goto_1
    const-string v2, "lgt"

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_8

    .line 262
    .line 263
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    check-cast v3, Ljava/lang/CharSequence;

    .line 268
    .line 269
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-nez v3, :cond_8

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v1, Ljava/lang/String;

    .line 280
    .line 281
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->a(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_7

    .line 286
    .line 287
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-nez v2, :cond_8

    .line 296
    .line 297
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->j:Ljava/lang/String;

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_7
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->j:Ljava/lang/String;

    .line 301
    .line 302
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->u()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-nez v2, :cond_9

    .line 311
    .line 312
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->e()V

    .line 315
    .line 316
    .line 317
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->u:Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :cond_9
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->v()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-nez v1, :cond_a

    .line 331
    .line 332
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->f()V

    .line 335
    .line 336
    .line 337
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->x:Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_a
    return-void
.end method
