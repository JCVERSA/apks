.class abstract Landroidx/media3/common/util/z$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/z$b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroidx/media3/common/util/z;)V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "phone"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    new-instance v0, Landroidx/media3/common/util/z$b$a;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Landroidx/media3/common/util/z$b$a;-><init>(Landroidx/media3/common/util/z;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroidx/media3/common/util/z;->b(Landroidx/media3/common/util/z;)Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p0, v1, v0}, Landroidx/media3/common/util/a0;->a(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/media3/common/util/b0;->a(Landroid/telephony/TelephonyManager;Landroid/telephony/TelephonyCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    const/4 p0, 0x5

    .line 32
    invoke-static {p1, p0}, Landroidx/media3/common/util/z;->d(Landroidx/media3/common/util/z;I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
