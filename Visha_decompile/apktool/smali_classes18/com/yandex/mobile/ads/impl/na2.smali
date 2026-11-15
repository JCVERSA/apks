.class public final Lcom/yandex/mobile/ads/impl/na2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/na2$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/mobile/ads/impl/na2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/na2$b;

.field private final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/na2$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/na2$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/na2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/na2$b;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/na2;->b:Lcom/yandex/mobile/ads/impl/na2$b;

    iput p2, p0, Lcom/yandex/mobile/ads/impl/na2;->c:F

    return-void
.end method


# virtual methods
.method public final c()Lcom/yandex/mobile/ads/impl/na2$b;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/na2;->b:Lcom/yandex/mobile/ads/impl/na2$b;

    return-object p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/na2;->c:F

    return p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/na2;->b:Lcom/yandex/mobile/ads/impl/na2$b;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/yandex/mobile/ads/impl/na2;->c:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
