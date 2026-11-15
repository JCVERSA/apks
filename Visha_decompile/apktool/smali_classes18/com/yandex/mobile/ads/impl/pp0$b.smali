.class public final Lcom/yandex/mobile/ads/impl/pp0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/op0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/pp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .line 5
    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x42480000    # 50.0f

    .line 3
    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result p0

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
