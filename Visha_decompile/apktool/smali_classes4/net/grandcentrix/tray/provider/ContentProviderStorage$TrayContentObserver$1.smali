.class Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

.field final synthetic val$listener:Lpf7;

.field final synthetic val$trayItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;Lpf7;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;->this$1:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

    iput-object p3, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;->val$trayItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
