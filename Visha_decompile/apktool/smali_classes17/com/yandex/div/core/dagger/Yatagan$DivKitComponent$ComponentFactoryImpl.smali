.class final Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ComponentFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/dagger/DivKitComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentFactoryImpl"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/yandex/div/core/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ComponentFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/div/core/c;)Lcom/yandex/div/core/dagger/DivKitComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ComponentFactoryImpl;->b:Lcom/yandex/div/core/c;

    return-object p0
.end method

.method public b(Landroid/content/Context;)Lcom/yandex/div/core/dagger/DivKitComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ComponentFactoryImpl;->a:Landroid/content/Context;

    return-object p0
.end method

.method public build()Lcom/yandex/div/core/dagger/DivKitComponent;
    .locals 2

    new-instance v0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;

    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ComponentFactoryImpl;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ComponentFactoryImpl;->b:Lcom/yandex/div/core/c;

    invoke-direct {v0, v1, p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;-><init>(Landroid/content/Context;Lcom/yandex/div/core/c;)V

    return-object v0
.end method
