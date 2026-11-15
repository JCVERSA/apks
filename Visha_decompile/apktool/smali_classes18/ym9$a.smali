.class public final Lym9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lym9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lin9;

.field public final synthetic c:Lym9;


# direct methods
.method public constructor <init>(Lym9;Lin9;)V
    .locals 0

    iput-object p1, p0, Lym9$a;->c:Lym9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lym9$a;->b:Lin9;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lym9$a;->b:Lin9;

    invoke-interface {p0, p1}, Lin9;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    iget-object p0, p0, Lym9$a;->b:Lin9;

    invoke-interface {p0, p1}, Lin9;->onSubscribe(Lrc2;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lym9$a;->c:Lym9;

    iget-object v0, v0, Lym9;->b:Lzf1;

    invoke-interface {v0, p1}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lym9$a;->b:Lin9;

    invoke-interface {p0, p1}, Lin9;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lre3;->b(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lym9$a;->b:Lin9;

    invoke-interface {p0, p1}, Lin9;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
