.class public interface abstract Lcom/yandex/mobile/ads/impl/zo1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    and-int/lit16 p0, p0, 0x80

    return p0
.end method

.method public static a(III)I
    .locals 0

    .line 2
    or-int/2addr p0, p1

    or-int/2addr p0, p2

    or-int/lit16 p0, p0, 0x80

    return p0
.end method

.method public static b(I)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    and-int/lit8 p0, p0, 0x40

    return p0
.end method


# virtual methods
.method public abstract a(Lcom/yandex/mobile/ads/impl/jc0;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation
.end method

.method public abstract f()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method
