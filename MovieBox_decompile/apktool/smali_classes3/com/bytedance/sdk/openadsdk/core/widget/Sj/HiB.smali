.class public Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;
.super Lcom/bytedance/sdk/component/uA/vS$Sj;
.source "source.java"


# static fields
.field private static final sU:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected Dq:Z

.field protected final EjP:Landroid/content/Context;

.field private Fmk:Lcom/bytedance/sdk/openadsdk/common/EjP;

.field protected final HiB:Ljava/lang/String;

.field protected Jcg:Z

.field private RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final Sj:Z

.field private TEQ:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

.field protected final TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field private TzV:Lorg/json/JSONObject;

.field private Ym:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Zq:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Z

.field private dNu:Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$Sj;

.field private sP:Ljava/lang/String;

.field private sef:Ljava/lang/String;

.field protected uA:Z

.field private uvD:Z

.field protected vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sU:Ljava/util/HashSet;

    .line 7
    .line 8
    const-string v1, "png"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const-string v1, "ico"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const-string v1, "jpg"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const-string v1, "gif"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const-string v1, "svg"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const-string v1, "jpeg"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/component/uA/vS$Sj;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Jcg:Z

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Dq:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->uA:Z

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 12
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->HiB:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 14
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj:Z

    .line 15
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Zq:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/EjP;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/common/EjP;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/EjP;Lcom/bytedance/sdk/openadsdk/EjP/Ym;ZZLcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$Sj;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/EjP;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    .line 2
    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->uvD:Z

    .line 3
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->dNu:Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$Sj;

    return-void
.end method

.method public static EjP(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/16 v1, 0x2e

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ltz v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_2
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sU:Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const-string v0, "image/"

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_3
    :goto_0
    return-object v0
.end method

.method private HiB(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ron()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method private Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->HiB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "market"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TzV:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TKC()V

    :cond_2
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TzV:Lorg/json/JSONObject;

    return-void
.end method

.method private Sj(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Zq()Lcom/bytedance/sdk/openadsdk/core/model/vS;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Zq()Lcom/bytedance/sdk/openadsdk/core/model/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->Sj()I

    move-result p1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Zq:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 14
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->uvD:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne v0, p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/EjP/sP$Sj;->EjP:Ljava/lang/String;

    invoke-static {p1, p2, v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/dx;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Z

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->dNu:Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$Sj;

    if-eqz p1, :cond_1

    .line 17
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$Sj;->Sj()V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/TEQ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP:Ljava/lang/String;

    return-void
.end method

.method public Sj(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Ym:Ljava/util/Map;

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TzV:Lorg/json/JSONObject;

    return-void
.end method

.method public TKC()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->aa:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    const/4 v0, 0x1

    if-eqz v3, :cond_1

    .line 3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Ym:Ljava/util/Map;

    const/4 v7, 0x1

    const-string v1, "click"

    const/4 v5, 0x1

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->aa:Z

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TzV:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP:Ljava/lang/String;

    const-string v4, "click"

    invoke-static {v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->aa:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public TKC(Ljava/lang/String;)Z
    .locals 4

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 10
    const-string v0, "play.google.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TzV:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    if-nez v0, :cond_1

    return v2

    .line 12
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_2

    const/high16 v3, 0x10000000

    .line 14
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 16
    const-string p1, "com.android.vending"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TKC()V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TzV:Lorg/json/JSONObject;

    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_3
    return v1
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj:Z

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/common/EjP;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj:Z

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/common/EjP;->sP(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->IOh()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "opt_web_index"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Landroid/webkit/WebView;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    move v6, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v0, -0x1

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj:Z

    .line 36
    .line 37
    move-object v2, p1

    .line 38
    move-object v3, p2

    .line 39
    move-object v4, p3

    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/common/EjP;

    .line 44
    .line 45
    if-eqz p3, :cond_2

    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj:Z

    .line 48
    .line 49
    invoke-virtual {p3, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->TKC(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj:Z

    .line 53
    .line 54
    if-eqz p3, :cond_5

    .line 55
    .line 56
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 57
    .line 58
    if-eqz p3, :cond_5

    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->IOh()Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-eqz p3, :cond_5

    .line 65
    .line 66
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 67
    .line 68
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Zq()Lcom/bytedance/sdk/openadsdk/core/model/vS;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->Sj()I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    const/4 v0, 0x2

    .line 77
    if-lt p3, v0, :cond_5

    .line 78
    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    if-nez p3, :cond_4

    .line 84
    .line 85
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sef:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-nez p3, :cond_4

    .line 92
    .line 93
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Zq:Ljava/util/Stack;

    .line 94
    .line 95
    invoke-virtual {p3, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    if-eqz p3, :cond_3

    .line 100
    .line 101
    :goto_2
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Zq:Ljava/util/Stack;

    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-nez p3, :cond_4

    .line 112
    .line 113
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Zq:Ljava/util/Stack;

    .line 114
    .line 115
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Zq:Ljava/util/Stack;

    .line 120
    .line 121
    invoke-virtual {p3, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    :cond_4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sef:Ljava/lang/String;

    .line 125
    .line 126
    :cond_5
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Dq:Z

    .line 127
    .line 128
    if-eqz p2, :cond_6

    .line 129
    .line 130
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->uA:Z

    .line 131
    .line 132
    if-nez p2, :cond_6

    .line 133
    .line 134
    const/4 p2, 0x1

    .line 135
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->uA:Z

    .line 136
    .line 137
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    .line 138
    .line 139
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-virtual {p3}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    .line 152
    .line 153
    .line 154
    move-result p3

    .line 155
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/webkit/WebView;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 5
    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 6
    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    .line 7
    const-string v2, "accept"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_1
    move-object v7, v1

    .line 9
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v8

    .line 10
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v4

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eqz p3, :cond_2

    .line 9
    .line 10
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v6, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v6, v1

    .line 25
    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "accept"

    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v1, v0

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    :cond_1
    move-object v7, v1

    .line 45
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    move-object v3, p1

    .line 64
    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 9

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    const-string v0, "SslError: unknown"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    :try_start_1
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const-string v2, "SslError: "

    .line 21
    .line 22
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :catchall_1
    :cond_1
    move v4, p2

    .line 35
    move-object v5, v0

    .line 36
    move-object v6, v1

    .line 37
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 38
    .line 39
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const/4 v8, 0x1

    .line 44
    move-object v3, p1

    .line 45
    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->sP()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/uA/vS$Sj;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public sP()Lcom/bytedance/sdk/openadsdk/EjP/Ym;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    return-object v0
.end method

.method public sP(Ljava/lang/String;)Z
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->TKC()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->Sj()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    const-string v0, ""

    move-object v2, v0

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/TKC;->Sj()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 7
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/TKC;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/util/Map;Z)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP:Ljava/lang/String;

    .line 8
    invoke-static {p1, v0, v3, v6, v5}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    invoke-static {p1, v2, v0, v3, v5}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v4

    .line 10
    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1, v3, v6, v7, v5}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;->Sj(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP:Ljava/lang/String;

    .line 11
    invoke-static {p1, v0, v3, v6, v5}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    invoke-static {p1, v2, v0, v3, v5}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    return v1

    :cond_6
    :goto_2
    return v4
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/common/EjP;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj:Z

    .line 6
    .line 7
    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/common/EjP;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj:Z

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Jcg()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ne v0, v1, :cond_4

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 38
    .line 39
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 46
    .line 47
    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/content/Context;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    return v1

    .line 64
    :cond_4
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "bytedance"

    .line 77
    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 85
    .line 86
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    .line 87
    .line 88
    .line 89
    return v1

    .line 90
    :cond_5
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TKC(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    return v1

    .line 97
    :cond_6
    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/TzV;->Sj(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_8

    .line 102
    .line 103
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->RiZ:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 104
    .line 105
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_7

    .line 110
    .line 111
    invoke-direct {p0, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    .line 113
    .line 114
    return v1

    .line 115
    :cond_7
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 116
    .line 117
    const-string p2, "android.intent.action.VIEW"

    .line 118
    .line 119
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    const/high16 p2, 0x10000000

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP:Landroid/content/Context;

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    invoke-static {p2, p1, v0}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .line 135
    .line 136
    :catchall_0
    return v1

    .line 137
    :catchall_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 138
    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_8

    .line 146
    .line 147
    return v1

    .line 148
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    return p1
.end method
