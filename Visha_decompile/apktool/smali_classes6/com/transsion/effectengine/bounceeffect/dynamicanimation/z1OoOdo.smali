.class public final Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOfor;,
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOint;,
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOdo;,
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;,
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOif;
    }
.end annotation


# static fields
.field public static final z1OoOcase:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public z1OoObyte:Z

.field public final z1OoOdo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOif;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final z1OoOfor:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOdo;

.field public final z1OoOif:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOif;",
            ">;"
        }
    .end annotation
.end field

.field public final z1OoOint:Ljava/lang/Runnable;

.field public final z1OoOnew:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;

.field public z1OoOtry:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOcase:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;)V
    .locals 4
    .param p1    # Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOdo:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOdo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOdo;-><init>(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;I)V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOdo;

    new-instance v0, Lryd;

    invoke-direct {v0, p0}, Lryd;-><init>(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;)V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOint:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOtry:J

    iput-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoObyte:Z

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif()V

    return-void
.end method

.method public static z1OoOdo()Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOcase:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    new-instance v2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOint;

    invoke-direct {v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOint;-><init>()V

    invoke-direct {v1, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;-><init>(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    return-object v0
.end method

.method private z1OoOif()V
    .locals 3

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOdo;

    .line 2
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOtry:J

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    iget-wide v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOtry:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOdo(J)V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    .line 4
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;

    .line 5
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOint:Ljava/lang/Runnable;

    .line 6
    invoke-interface {v0, p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;->z1OoOdo(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final z1OoOdo(J)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOif;

    if-nez v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v5, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOdo:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gez v5, :cond_2

    iget-object v5, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOdo:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_1
    invoke-interface {v4, p1, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOif;->doAnimationFrame(J)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_3
    iget-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoObyte:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-ltz p1, :cond_5

    iget-object p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_5
    iput-boolean v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoObyte:Z

    :cond_6
    return-void
.end method

.method public final z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOif;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOint:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;->z1OoOdo(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final z1OoOif(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOif;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOdo:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoObyte:Z

    :cond_0
    return-void
.end method
