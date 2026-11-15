.class public interface abstract Lcom/yandex/div/core/player/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/player/a$a;,
        Lcom/yandex/div/core/player/a$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div/core/player/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/core/player/a$a;->a:Lcom/yandex/div/core/player/a$a;

    sput-object v0, Lcom/yandex/div/core/player/a;->a:Lcom/yandex/div/core/player/a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/div/core/player/a$b;)V
    .locals 0

    const-string p0, "observer"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(J)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setMuted(Z)V
    .locals 0

    return-void
.end method
