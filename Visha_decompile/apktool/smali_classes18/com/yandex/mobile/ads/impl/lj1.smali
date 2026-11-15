.class public final Lcom/yandex/mobile/ads/impl/lj1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/PopupMenu;)V
    .locals 1

    const-string v0, "popupMenu"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupMenu;->setForceShowIcon(Z)V

    return-void
.end method
