.class public interface abstract Lcom/yandex/div/core/player/DivPlayerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/player/DivPlayerFactory$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div/core/player/DivPlayerFactory$a;

.field public static final b:Lcom/yandex/div/core/player/DivPlayerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/core/player/DivPlayerFactory$a;->a:Lcom/yandex/div/core/player/DivPlayerFactory$a;

    sput-object v0, Lcom/yandex/div/core/player/DivPlayerFactory;->a:Lcom/yandex/div/core/player/DivPlayerFactory$a;

    new-instance v0, Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1;

    invoke-direct {v0}, Lcom/yandex/div/core/player/DivPlayerFactory$Companion$STUB$1;-><init>()V

    sput-object v0, Lcom/yandex/div/core/player/DivPlayerFactory;->b:Lcom/yandex/div/core/player/DivPlayerFactory;

    return-void
.end method


# virtual methods
.method public a()Lmo2;
    .locals 0

    sget-object p0, Lmo2;->b:Lmo2;

    return-object p0
.end method

.method public abstract b(Landroid/content/Context;)Lcom/yandex/div/core/player/DivPlayerView;
.end method

.method public abstract c(Ljava/util/List;Llo2;)Lcom/yandex/div/core/player/a;
.end method
