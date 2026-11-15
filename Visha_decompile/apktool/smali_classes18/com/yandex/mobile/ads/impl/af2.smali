.class public final Lcom/yandex/mobile/ads/impl/af2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/ProgressBar;

.field private final b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressBar"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/af2;->a:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/af2;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/af2;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final b()Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/af2;->a:Landroid/widget/ProgressBar;

    return-object p0
.end method
