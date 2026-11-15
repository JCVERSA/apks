.class public final Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14

    const-string p0, "parcel"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    sget-object v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    sget-object v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    sget-object v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    sget-object v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    sget-object v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v12, p1

    check-cast v12, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;-><init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    return-object p0
.end method
