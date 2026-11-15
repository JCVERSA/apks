.class public final Lcom/yandex/mobile/ads/impl/vz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b10;
.implements Lcom/yandex/mobile/ads/impl/f1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b10<",
        "TV;>;",
        "Lcom/yandex/mobile/ads/impl/f1;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/m6;

.field private final b:Lcom/yandex/mobile/ads/impl/e1;

.field private final c:Lcom/yandex/mobile/ads/impl/b51;

.field private final d:Lcom/yandex/mobile/ads/impl/lz1;

.field private e:Lcom/yandex/mobile/ads/impl/p00;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/m6;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/b51;Lcom/yandex/mobile/ads/impl/lz1;)V
    .locals 1

    const-string v0, "adActivityEventController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdControlViewProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skipAppearanceController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vz1;->a:Lcom/yandex/mobile/ads/impl/m6;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/vz1;->b:Lcom/yandex/mobile/ads/impl/e1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/vz1;->c:Lcom/yandex/mobile/ads/impl/b51;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/vz1;->d:Lcom/yandex/mobile/ads/impl/lz1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vz1;->e:Lcom/yandex/mobile/ads/impl/p00;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p00;->d()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vz1;->c:Lcom/yandex/mobile/ads/impl/b51;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/b51;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vz1;->b:Lcom/yandex/mobile/ads/impl/e1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/e1;->a(Lcom/yandex/mobile/ads/impl/f1;)V

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/p00;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/vz1;->d:Lcom/yandex/mobile/ads/impl/lz1;

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vz1;->a:Lcom/yandex/mobile/ads/impl/m6;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/m6;->b()Lcom/yandex/mobile/ads/impl/n6;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/n6;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    move-wide v4, v1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 7
    :goto_2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/pg1;->a()Lcom/yandex/mobile/ads/impl/mg1;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/p00;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/lz1;JLcom/yandex/mobile/ads/impl/mg1;)V

    .line 9
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vz1;->e:Lcom/yandex/mobile/ads/impl/p00;

    .line 10
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/p00;->b()V

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    .line 12
    const-string p0, "skip_button"

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vz1;->e:Lcom/yandex/mobile/ads/impl/p00;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p00;->c()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vz1;->b:Lcom/yandex/mobile/ads/impl/e1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/e1;->b(Lcom/yandex/mobile/ads/impl/f1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vz1;->e:Lcom/yandex/mobile/ads/impl/p00;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p00;->a()V

    :cond_0
    return-void
.end method
