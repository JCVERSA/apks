.class public final Lcom/yandex/mobile/ads/impl/h01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/h01$a;,
        Lcom/yandex/mobile/ads/impl/h01$b;
    }
.end annotation

.annotation runtime Lld9;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/mobile/ads/impl/h01;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/yandex/mobile/ads/impl/h01$b;

.field private static final d:[Lef5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lef5;"
        }
    .end annotation
.end field


# instance fields
.field private final b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/e01;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/h01$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/h01$b;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/h01;->Companion:Lcom/yandex/mobile/ads/impl/h01$b;

    new-instance v0, Lcom/yandex/mobile/ads/impl/h01$c;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/h01$c;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/h01;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lzg;

    sget-object v2, Lcom/yandex/mobile/ads/impl/e01$a;->a:Lcom/yandex/mobile/ads/impl/e01$a;

    invoke-direct {v0, v2}, Lzg;-><init>(Lef5;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lef5;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/h01;->d:[Lef5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/h01;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 2

    const-wide/16 v0, 0x7530

    .line 2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/yandex/mobile/ads/impl/h01;-><init>(JLjava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/util/List;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const-wide/16 p2, 0x7530

    :cond_0
    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/h01;->b:J

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h01;->c:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/h01;->c:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/e01;",
            ">;)V"
        }
    .end annotation

    .line 7
    const-string v0, "mediationPrefetchAdUnits"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/h01;->b:J

    .line 10
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/h01;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/h01;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 6

    sget-object v0, Lcom/yandex/mobile/ads/impl/h01;->d:[Lef5;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lid1;->r(Lkotlinx/serialization/descriptors/a;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/h01;->b:J

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :goto_0
    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/h01;->b:J

    invoke-interface {p1, p2, v1, v2, v3}, Lid1;->u(Lkotlinx/serialization/descriptors/a;IJ)V

    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lid1;->r(Lkotlinx/serialization/descriptors/a;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/h01;->c:Ljava/util/List;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h01;->c:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static final synthetic c()[Lef5;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/h01;->d:[Lef5;

    return-object v0
.end method


# virtual methods
.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/h01;->b:J

    return-wide v0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/e01;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h01;->c:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/h01;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/h01;

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/h01;->b:J

    iget-wide v5, p1, Lcom/yandex/mobile/ads/impl/h01;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h01;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/h01;->c:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/h01;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h01;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/h01;->b:J

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h01;->c:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediationPrefetchSettings(loadTimeoutMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mediationPrefetchAdUnits="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/h01;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h01;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/e01;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/e01;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
