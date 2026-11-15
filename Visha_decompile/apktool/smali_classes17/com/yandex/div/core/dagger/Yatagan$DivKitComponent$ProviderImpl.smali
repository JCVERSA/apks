.class final Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxi5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderImpl"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;->a:Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;

    iput p2, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;->a:Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;

    iget p0, p0, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent$ProviderImpl;->b:I

    invoke-virtual {v0, p0}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->l(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
