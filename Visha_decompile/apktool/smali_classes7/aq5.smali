.class public Laq5;
.super Lvec;
.source "SourceFile"


# static fields
.field public static b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laq5;->b:Ljava/util/List;

    const-class v1, Lzz4;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method

.method public static i()V
    .locals 2

    invoke-static {}, Lvmb;->f()V

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->r()Lcom/blankj/utilcode/util/LogUtils$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/LogUtils$b;->x(Z)Lcom/blankj/utilcode/util/LogUtils$b;

    invoke-static {}, Lge;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->r()Lcom/blankj/utilcode/util/LogUtils$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/LogUtils$b;->y(I)Lcom/blankj/utilcode/util/LogUtils$b;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->r()Lcom/blankj/utilcode/util/LogUtils$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/LogUtils$b;->z(I)Lcom/blankj/utilcode/util/LogUtils$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Laq5;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Laq5;->b:Ljava/util/List;

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 0

    invoke-static {}, Laq5;->i()V

    const/4 p0, 0x0

    return-object p0
.end method
