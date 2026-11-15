.class public final Lcom/cloud/tmc/integration/utils/share/ShareBySystem;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/share/config/IShare;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/share/ShareBySystem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/share/ShareBySystem;",
        "Lcom/cloud/tmc/integration/utils/share/config/IShare;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "share",
        "",
        "shareParams",
        "Lcom/cloud/tmc/integration/utils/share/ShareParams;",
        "listener",
        "Lcom/cloud/tmc/integration/utils/share/OnShareListener;",
        "startActivity",
        "",
        "intent",
        "Landroid/content/Intent;",
        "Companion",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/utils/share/ShareBySystem$Companion;

.field private static final TAG:Ljava/lang/String; = "ShareBySystem"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareBySystem$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/utils/share/ShareBySystem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/utils/share/ShareBySystem;->Companion:Lcom/cloud/tmc/integration/utils/share/ShareBySystem$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/share/ShareBySystem;->context:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method

.method private final startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    const-string p2, "ShareBySystem"

    .line 8
    .line 9
    const-string v0, "startActivity: "

    .line 10
    .line 11
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method


# virtual methods
.method public share(Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 1

    .line 1
    const-string v0, "shareParams"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareBySystem;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->createShareIntent(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/integration/utils/share/ShareBySystem;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-interface {p2, v0, v0}, Lcom/cloud/tmc/integration/utils/share/OnShareListener;->onShare(II)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    invoke-interface {p2, v0, p1}, Lcom/cloud/tmc/integration/utils/share/OnShareListener;->onShare(II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method
