.class public final Lcom/yandex/div2/DivRadialGradientRadiusTemplate$c;
.super Lcom/yandex/div2/DivRadialGradientRadiusTemplate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivRadialGradientRadiusTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/yandex/div2/DivRadialGradientRelativeRadiusTemplate;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivRadialGradientRelativeRadiusTemplate;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div2/DivRadialGradientRadiusTemplate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div2/DivRadialGradientRadiusTemplate$c;->c:Lcom/yandex/div2/DivRadialGradientRelativeRadiusTemplate;

    return-void
.end method


# virtual methods
.method public final c()Lcom/yandex/div2/DivRadialGradientRelativeRadiusTemplate;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivRadialGradientRadiusTemplate$c;->c:Lcom/yandex/div2/DivRadialGradientRelativeRadiusTemplate;

    return-object p0
.end method
