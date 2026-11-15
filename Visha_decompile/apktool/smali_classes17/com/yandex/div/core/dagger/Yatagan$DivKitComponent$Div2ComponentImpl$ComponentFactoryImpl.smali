.class final Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/dagger/Div2Component$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentFactoryImpl"
.end annotation


# instance fields
.field public a:Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;

.field public b:Landroid/view/ContextThemeWrapper;

.field public c:Ljh2;

.field public d:Ljava/lang/Integer;

.field public e:Lsh2;

.field public f:Lcom/yandex/div/core/expression/variables/DivVariableController;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->a:Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;

    return-void
.end method


# virtual methods
.method public a(Ljh2;)Lcom/yandex/div/core/dagger/Div2Component$Builder;
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->c:Ljh2;

    return-object p0
.end method

.method public b(Lcom/yandex/div/core/expression/variables/DivVariableController;)Lcom/yandex/div/core/dagger/Div2Component$Builder;
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->f:Lcom/yandex/div/core/expression/variables/DivVariableController;

    return-object p0
.end method

.method public build()Lcom/yandex/div/core/dagger/Div2Component;
    .locals 8

    new-instance v7, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl;

    iget-object v1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->a:Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;

    iget-object v2, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->b:Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->c:Ljh2;

    iget-object v4, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->d:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->e:Lsh2;

    iget-object v6, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->f:Lcom/yandex/div/core/expression/variables/DivVariableController;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl;-><init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;Landroid/view/ContextThemeWrapper;Ljh2;Ljava/lang/Integer;Lsh2;Lcom/yandex/div/core/expression/variables/DivVariableController;)V

    return-object v7
.end method

.method public c(I)Lcom/yandex/div/core/dagger/Div2Component$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(Lsh2;)Lcom/yandex/div/core/dagger/Div2Component$Builder;
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->e:Lsh2;

    return-object p0
.end method

.method public e(Landroid/view/ContextThemeWrapper;)Lcom/yandex/div/core/dagger/Div2Component$Builder;
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$Div2ComponentImpl$ComponentFactoryImpl;->b:Landroid/view/ContextThemeWrapper;

    return-object p0
.end method
