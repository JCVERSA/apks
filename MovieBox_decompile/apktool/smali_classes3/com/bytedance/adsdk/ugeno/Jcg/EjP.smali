.class public final Lcom/bytedance/adsdk/ugeno/Jcg/EjP;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static Sj:Ljava/lang/String;

.field private static TKC:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static sP:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static Sj(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 8
    const-string v0, "drawable"

    invoke-static {p0, p1, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 5
    sget-object v0, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->sP:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->sP:Landroid/content/res/Resources;

    .line 7
    :cond_0
    sget-object v0, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->sP:Landroid/content/res/Resources;

    invoke-static {p0}, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static Sj(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->Sj:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->Sj:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->Sj:Ljava/lang/String;

    return-object p0
.end method

.method public static Sj(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->Sj:Ljava/lang/String;

    return-void
.end method
