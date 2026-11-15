.class public final Lcom/yandex/mobile/ads/impl/hp1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayButton"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hp1;->a:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hp1;->a:Landroid/widget/Button;

    return-object p0
.end method
