.class public final Lcom/yandex/div2/DivAnimator$a;
.super Lcom/yandex/div2/DivAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final d:Lcom/yandex/div2/DivColorAnimator;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivColorAnimator;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div2/DivAnimator;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div2/DivAnimator$a;->d:Lcom/yandex/div2/DivColorAnimator;

    return-void
.end method


# virtual methods
.method public final c()Lcom/yandex/div2/DivColorAnimator;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivAnimator$a;->d:Lcom/yandex/div2/DivColorAnimator;

    return-object p0
.end method
