.class public Lcom/bytedance/sdk/openadsdk/EjP/sP;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/EjP/sP$sP;,
        Lcom/bytedance/sdk/openadsdk/EjP/sP$Sj;
    }
.end annotation


# static fields
.field public static final EjP:Ljava/lang/String;

.field public static final HiB:Ljava/lang/String;

.field public static final Jcg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Sj:Ljava/lang/String;

.field public static final TKC:Ljava/lang/String;

.field public static final sP:Ljava/lang/String;

.field public static final vS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->sP:Ljava/lang/String;

    .line 6
    .line 7
    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->sP:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->TKC:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->TKC:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->EjP:Ljava/lang/String;

    .line 14
    .line 15
    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->EjP:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->HiB:Ljava/lang/String;

    .line 18
    .line 19
    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->HiB:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->vS:Ljava/lang/String;

    .line 22
    .line 23
    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->vS:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    const-string v1, "show"

    .line 28
    .line 29
    const-string v2, "insight_log"

    .line 30
    .line 31
    const-string v3, "click"

    .line 32
    .line 33
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->Jcg:Ljava/util/Set;

    .line 45
    .line 46
    return-void
.end method

.method public static Sj(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "embeded_ad"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "banner_ad"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "interaction"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "slide_banner_ad"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    return p0
.end method
