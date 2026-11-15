.class public final Lcom/yandex/mobile/ads/impl/iy$h;
.super Lcom/yandex/mobile/ads/impl/iy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/iy$h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/mobile/ads/impl/iy$h$a;

.field private final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/iy$h$a;->b:Lcom/yandex/mobile/ads/impl/iy$h$a;

    const-string v1, "text"

    const-string v2, "Debug Error Indicator"

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "switchType"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/yandex/mobile/ads/impl/iy;-><init>(I)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/iy$h;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/iy$h;->b:Lcom/yandex/mobile/ads/impl/iy$h$a;

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/iy$h;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/iy$h;->c:Z

    return p0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2

    .line 2
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/iy$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iy$h;->a:Ljava/lang/String;

    check-cast p1, Lcom/yandex/mobile/ads/impl/iy$h;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/iy$h;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$h;->b:Lcom/yandex/mobile/ads/impl/iy$h$a;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/iy$h;->b:Lcom/yandex/mobile/ads/impl/iy$h$a;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/iy$h$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$h;->b:Lcom/yandex/mobile/ads/impl/iy$h$a;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/iy$h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/iy$h;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/iy$h;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/iy$h;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/iy$h;->b:Lcom/yandex/mobile/ads/impl/iy$h$a;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/iy$h;->b:Lcom/yandex/mobile/ads/impl/iy$h$a;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/iy$h;->c:Z

    iget-boolean p1, p1, Lcom/yandex/mobile/ads/impl/iy$h;->c:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iy$h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/iy$h;->b:Lcom/yandex/mobile/ads/impl/iy$h$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/iy$h;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iy$h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/iy$h;->b:Lcom/yandex/mobile/ads/impl/iy$h$a;

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/iy$h;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch(text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", switchType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", initialState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
