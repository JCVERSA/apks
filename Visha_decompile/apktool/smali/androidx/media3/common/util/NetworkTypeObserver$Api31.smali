.class final Landroidx/media3/common/util/NetworkTypeObserver$Api31;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api31"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disambiguate4gAnd5gNsa(Landroid/content/Context;Landroidx/media3/common/util/NetworkTypeObserver;)V
    .locals 2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    new-instance v0, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;

    invoke-direct {v0, p1}, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;-><init>(Landroidx/media3/common/util/NetworkTypeObserver;)V

    invoke-static {p1}, Landroidx/media3/common/util/NetworkTypeObserver;->access$100(Landroidx/media3/common/util/NetworkTypeObserver;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lzz6;->a(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    invoke-static {p0, v0}, La07;->a(Landroid/telephony/TelephonyManager;Landroid/telephony/TelephonyCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x5

    invoke-static {p1, p0}, Landroidx/media3/common/util/NetworkTypeObserver;->access$300(Landroidx/media3/common/util/NetworkTypeObserver;I)V

    :goto_0
    return-void
.end method
