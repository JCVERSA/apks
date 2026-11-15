.class public final Lcom/yandex/mobile/ads/impl/nv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/aw0;


# instance fields
.field private final a:Landroid/widget/CheckBox;

.field private final b:Landroid/widget/ProgressBar;

.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/nv;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p1, p1}, Lcom/yandex/mobile/ads/impl/nv;-><init>(Landroid/widget/CheckBox;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/CheckBox;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nv;->a:Landroid/widget/CheckBox;

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nv;->b:Landroid/widget/ProgressBar;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/nv;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/nv;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/nv;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nv;->a:Landroid/widget/CheckBox;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/nv;->a:Landroid/widget/CheckBox;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nv;->b:Landroid/widget/ProgressBar;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/nv;->b:Landroid/widget/ProgressBar;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nv;->c:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/nv;->c:Landroid/widget/TextView;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCountDownProgress()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nv;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMuteControl()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nv;->a:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public final getVideoProgress()Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nv;->b:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nv;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nv;->b:Landroid/widget/ProgressBar;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nv;->c:Landroid/widget/TextView;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nv;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nv;->b:Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nv;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomControlsContainer(muteControl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoProgress="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", countDownProgress="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
