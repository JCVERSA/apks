.class public final Lcom/transsion/home/view/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/home/view/g;

.field private static b:Z

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/home/view/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/home/view/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/home/view/g;->a:Lcom/transsion/home/view/g;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    sput v0, Lcom/transsion/home/view/g;->c:I

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "click"

    .line 7
    .line 8
    const-string v2, "search"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 14
    .line 15
    const-string v2, "guide"

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/home/view/g;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "search_guide"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/home/view/g;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/transsion/home/view/g;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/transsion/home/view/g;->b:Z

    .line 2
    .line 3
    return-void
.end method
