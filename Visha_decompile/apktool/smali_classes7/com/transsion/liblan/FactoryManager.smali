.class public Lcom/transsion/liblan/FactoryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/liblan/interfaces/ITranComponentFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/liblan/FactoryManager;->factories:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory(Ljava/lang/String;)Lcom/transsion/liblan/interfaces/ITranComponentFactory;
    .locals 2

    sget-object v0, Lcom/transsion/liblan/FactoryManager;->factories:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/liblan/interfaces/ITranComponentFactory;

    if-nez v0, :cond_2

    const-string v0, "FactoryManager"

    const-string v1, "Factory doesn\'t exist. Falling back to hard coded one"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/liblan/interfaces/ITranMediaFactory;->FACTORY_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/transsion/liblan/TranMediaFactory;

    invoke-direct {v1}, Lcom/transsion/liblan/TranMediaFactory;-><init>()V

    invoke-static {v0, v1}, Lcom/transsion/liblan/FactoryManager;->registerFactory(Ljava/lang/String;Lcom/transsion/liblan/interfaces/ITranComponentFactory;)V

    :cond_0
    sget-object v0, Lcom/transsion/liblan/interfaces/ITranLibLANFactory;->FACTORY_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/transsion/liblan/LibTranLANFactory;

    invoke-direct {v1}, Lcom/transsion/liblan/LibTranLANFactory;-><init>()V

    invoke-static {v0, v1}, Lcom/transsion/liblan/FactoryManager;->registerFactory(Ljava/lang/String;Lcom/transsion/liblan/interfaces/ITranComponentFactory;)V

    :cond_1
    sget-object v0, Lcom/transsion/liblan/FactoryManager;->factories:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/transsion/liblan/interfaces/ITranComponentFactory;

    :cond_2
    return-object v0
.end method

.method public static registerFactory(Ljava/lang/String;Lcom/transsion/liblan/interfaces/ITranComponentFactory;)V
    .locals 1

    sget-object v0, Lcom/transsion/liblan/FactoryManager;->factories:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
