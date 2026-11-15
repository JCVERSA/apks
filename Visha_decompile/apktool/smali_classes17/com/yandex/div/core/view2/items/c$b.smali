.class public final Lcom/yandex/div/core/view2/items/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/items/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/core/view2/items/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IIIILandroid/util/DisplayMetrics;)Lcom/yandex/div/core/view2/items/c;
    .locals 6

    const-string p0, "metrics"

    invoke-static {p6, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "clamp"

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    new-instance p0, Lcom/yandex/div/core/view2/items/c$a;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/items/c$a;-><init>(IIIILandroid/util/DisplayMetrics;)V

    goto :goto_1

    :cond_1
    const-string p0, "ring"

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/yandex/div/core/view2/items/c$c;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/items/c$c;-><init>(IIIILandroid/util/DisplayMetrics;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported overflow "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_3
    new-instance p0, Lcom/yandex/div/core/view2/items/c$a;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/items/c$a;-><init>(IIIILandroid/util/DisplayMetrics;)V

    :goto_1
    return-object p0
.end method
