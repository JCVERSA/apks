.class public final Lcom/yandex/mobile/ads/impl/pj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/aw0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q71;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q71;)V
    .locals 1

    const-string v0, "weakViewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pj2;->a:Lcom/yandex/mobile/ads/impl/q71;

    return-void
.end method


# virtual methods
.method public final getCountDownProgress()Landroid/widget/TextView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMuteControl()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pj2;->a:Lcom/yandex/mobile/ads/impl/q71;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/q71;->c()Landroid/widget/CheckBox;

    move-result-object p0

    return-object p0
.end method

.method public final getVideoProgress()Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pj2;->a:Lcom/yandex/mobile/ads/impl/q71;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/q71;->e()Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method
