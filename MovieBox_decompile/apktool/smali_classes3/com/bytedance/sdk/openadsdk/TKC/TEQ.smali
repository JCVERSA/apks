.class public Lcom/bytedance/sdk/openadsdk/TKC/TEQ;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TKC/TEQ$Sj;,
        Lcom/bytedance/sdk/openadsdk/TKC/TEQ$EjP;,
        Lcom/bytedance/sdk/openadsdk/TKC/TEQ$TKC;,
        Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;
    }
.end annotation


# static fields
.field public static EjP:I

.field public static HiB:I

.field public static Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

.field public static TKC:I

.field public static sP:I


# instance fields
.field private final Dq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;",
            ">;"
        }
    .end annotation
.end field

.field private Fmk:Ljava/lang/String;

.field private final Jcg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/TKC/TEQ$TKC;",
            ">;"
        }
    .end annotation
.end field

.field private final TEQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/TKC/TEQ$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private TzV:Lcom/bytedance/sdk/openadsdk/FilterWord;

.field private Ym:Ljava/lang/String;

.field private Zq:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private dNu:I

.field private sef:Ljava/lang/String;

.field private final uA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/TKC/TEQ$EjP;",
            ">;"
        }
    .end annotation
.end field

.field private uvD:I

.field protected vS:Lcom/bytedance/sdk/openadsdk/IListenerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    sput v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sP:I

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    sput v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC:I

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    sput v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->EjP:I

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    sput v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->HiB:I

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Jcg:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Dq:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->uA:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TEQ:Ljava/util/Set;

    .line 31
    .line 32
    return-void
.end method

.method private HiB(Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$1;

    const-string v1, "Reward_executeMultiProcessCallback"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$1;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/TEQ;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Fmk:Ljava/lang/String;

    return-object p0
.end method

.method public static Sj(ILjava/lang/String;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$3;

    const-string v1, "DislikeClosed_unregisterMultiProcessListener"

    invoke-direct {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method public static Sj(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V
    .locals 2

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$2;

    const-string v1, "DislikeClosed_registerMultiProcessListener"

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$2;-><init>(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;Ljava/lang/String;)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method private TEQ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Jcg:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$TKC;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TzV:Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$TKC;->Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public Dq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->uvD:I

    .line 2
    .line 3
    return v0
.end method

.method public EjP()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sef:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    const-string v1, "0:00"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sef:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TzV:Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 3
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TzV:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Ym:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sef:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TKC/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TKC/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Ym:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v2}, Lcom/bytedance/sdk/openadsdk/TKC/sP;->Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TKC/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TKC/sP;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Ym:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Zq:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sef:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->aa:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/TKC/sP;->Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Fmk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    const-string v0, "onItemClickClosed"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->HiB(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Fmk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;->Sj()V

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Fmk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->vS(Ljava/lang/String;)V

    .line 15
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Dq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;

    .line 16
    sget v2, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sP:I

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;->Sj(I)V

    goto :goto_2

    .line 17
    :cond_5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    .line 18
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC(Ljava/lang/String;)V

    return-void
.end method

.method public EjP(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Zq:Ljava/lang/String;

    return-void
.end method

.method public HiB()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Dq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;

    .line 2
    sget v2, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC:I

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;->Sj(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Jcg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sef:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected Sj(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->vS:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_0

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj(I)Landroid/os/IBinder;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->vS:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->vS:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object p1
.end method

.method public Sj()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Jcg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Dq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->uA:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TEQ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public Sj(II)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->uvD:I

    .line 25
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->dNu:I

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TzV:Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TEQ()V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$EjP;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->uA:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$Sj;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TEQ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$TKC;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Jcg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Dq:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Ym:Ljava/lang/String;

    return-void
.end method

.method public Sj(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TEQ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$Sj;

    .line 14
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$Sj;->Sj(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sef:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->uA:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$EjP;

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sef:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$EjP;->Sj(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public TKC()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TzV:Lcom/bytedance/sdk/openadsdk/FilterWord;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sP()Lcom/bytedance/sdk/openadsdk/FilterWord;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TzV:Lcom/bytedance/sdk/openadsdk/FilterWord;

    return-object v0
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->aa:Ljava/lang/String;

    return-void
.end method

.method public uA()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->uvD:I

    .line 2
    .line 3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->dNu:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public vS()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Dq:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;

    .line 18
    .line 19
    sget v2, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->HiB:I

    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;->Sj(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
