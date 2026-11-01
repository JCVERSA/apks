.class public final Lo/kz5;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lo/kz5;

.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/kz5;

    invoke-direct {v0}, Lo/kz5;-><init>()V

    sput-object v0, Lo/kz5;->a:Lo/kz5;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/kz5;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/ClassLoader;)V
    .locals 2

    const-string v0, "classLoader"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isPluginClassLoaderGcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/kz5;->b:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
