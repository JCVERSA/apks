.class public final Lcom/yandex/mobile/ads/impl/dn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/fn0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/dn1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/he2;

.field private final b:Lcom/yandex/mobile/ads/impl/ig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ig<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/en1;

.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/he2;Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/en1;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/sj0;",
            "Lcom/yandex/mobile/ads/impl/he2;",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/en1;",
            "Z)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoClicks"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "qrcodeLoader"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dn1;->a:Lcom/yandex/mobile/ads/impl/he2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/dn1;->b:Lcom/yandex/mobile/ads/impl/ig;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/dn1;->c:Lcom/yandex/mobile/ads/impl/en1;

    iput-boolean p6, p0, Lcom/yandex/mobile/ads/impl/dn1;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ob2;)V
    .locals 3

    const-string v0, "uiElements"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dn1;->a:Lcom/yandex/mobile/ads/impl/he2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/he2;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/dn1;->d:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dn1;->b:Lcom/yandex/mobile/ads/impl/ig;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/xj0;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/xj0;->f()Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dn1;->c:Lcom/yandex/mobile/ads/impl/en1;

    new-instance v1, Lcom/yandex/mobile/ads/impl/dn1$a;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/dn1$a;-><init>(Lcom/yandex/mobile/ads/impl/ob2;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/yandex/mobile/ads/impl/en1;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jj0$b;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->k()Landroid/view/ViewGroup;

    move-result-object p0

    const/16 v0, 0x8

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->l()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method
