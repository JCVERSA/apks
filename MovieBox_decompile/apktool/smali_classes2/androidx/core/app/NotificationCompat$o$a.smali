.class abstract Landroidx/core/app/NotificationCompat$o$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a()Landroid/app/Notification$Style;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
