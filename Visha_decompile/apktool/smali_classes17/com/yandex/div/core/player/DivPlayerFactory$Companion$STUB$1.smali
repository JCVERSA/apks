.class public final Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/player/DivPlayerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/player/DivPlayerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Landroid/content/Context;)Lcom/yandex/div/core/player/DivPlayerView;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1;->e(Landroid/content/Context;)Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1$makePlayerView$1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ljava/util/List;Llo2;)Lcom/yandex/div/core/player/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1;->d(Ljava/util/List;Llo2;)Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1$a;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/util/List;Llo2;)Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1$a;
    .locals 0

    const-string p0, "src"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "config"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1$a;

    invoke-direct {p0}, Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1$a;-><init>()V

    return-object p0
.end method

.method public e(Landroid/content/Context;)Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1$makePlayerView$1;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1$makePlayerView$1;

    invoke-direct {p0, p1}, Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1$makePlayerView$1;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
