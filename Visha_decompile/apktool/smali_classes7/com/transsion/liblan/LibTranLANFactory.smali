.class public Lcom/transsion/liblan/LibTranLANFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranLibLANFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/transsion/liblan/interfaces/ITranLibLANFactory;->FACTORY_ID:Ljava/lang/String;

    new-instance v1, Lcom/transsion/liblan/LibTranLANFactory;

    invoke-direct {v1}, Lcom/transsion/liblan/LibTranLANFactory;-><init>()V

    invoke-static {v0, v1}, Lcom/transsion/liblan/FactoryManager;->registerFactory(Ljava/lang/String;Lcom/transsion/liblan/interfaces/ITranComponentFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLibLanFromContext(Landroid/content/Context;)Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 1

    new-instance p0, Lcom/transsion/liblan/TranLibLAN;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/liblan/TranLibLAN;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method

.method public getLibLanFromOptions(Landroid/content/Context;Ljava/util/List;)Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/transsion/liblan/interfaces/ITranLibLAN;"
        }
    .end annotation

    new-instance p0, Lcom/transsion/liblan/TranLibLAN;

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranLibLAN;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method
