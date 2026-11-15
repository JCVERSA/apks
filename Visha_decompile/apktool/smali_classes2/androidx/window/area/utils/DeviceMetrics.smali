.class public final Landroidx/window/area/utils/DeviceMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/window/area/utils/DeviceMetrics;",
        "",
        "manufacturer",
        "",
        "model",
        "rearDisplayMetrics",
        "Landroid/util/DisplayMetrics;",
        "(Ljava/lang/String;Ljava/lang/String;Landroid/util/DisplayMetrics;)V",
        "getManufacturer",
        "()Ljava/lang/String;",
        "getModel",
        "getRearDisplayMetrics",
        "()Landroid/util/DisplayMetrics;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final manufacturer:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final rearDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/util/DisplayMetrics;)V
    .locals 1

    const-string v0, "manufacturer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rearDisplayMetrics"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/area/utils/DeviceMetrics;->manufacturer:Ljava/lang/String;

    iput-object p2, p0, Landroidx/window/area/utils/DeviceMetrics;->model:Ljava/lang/String;

    iput-object p3, p0, Landroidx/window/area/utils/DeviceMetrics;->rearDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/window/area/utils/DeviceMetrics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/window/area/utils/DeviceMetrics;->manufacturer:Ljava/lang/String;

    check-cast p1, Landroidx/window/area/utils/DeviceMetrics;

    iget-object v1, p1, Landroidx/window/area/utils/DeviceMetrics;->manufacturer:Ljava/lang/String;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/window/area/utils/DeviceMetrics;->model:Ljava/lang/String;

    iget-object v1, p1, Landroidx/window/area/utils/DeviceMetrics;->model:Ljava/lang/String;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/window/area/utils/DeviceMetrics;->rearDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object p1, p1, Landroidx/window/area/utils/DeviceMetrics;->rearDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, p1}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/window/area/utils/DeviceMetrics;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/window/area/utils/DeviceMetrics;->model:Ljava/lang/String;

    return-object p0
.end method

.method public final getRearDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Landroidx/window/area/utils/DeviceMetrics;->rearDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/window/area/utils/DeviceMetrics;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/area/utils/DeviceMetrics;->model:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/window/area/utils/DeviceMetrics;->rearDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/util/DisplayMetrics;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceMetrics{ Manufacturer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/area/utils/DeviceMetrics;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/area/utils/DeviceMetrics;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Rear display metrics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/window/area/utils/DeviceMetrics;->rearDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
