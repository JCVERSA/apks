.class public Lge7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge7;->enqueue(Ltq0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ltq0;

.field public final synthetic c:Lge7;


# direct methods
.method public constructor <init>(Lge7;Ltq0;)V
    .locals 0

    iput-object p1, p0, Lge7$a;->c:Lge7;

    iput-object p2, p0, Lge7$a;->b:Ltq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lge7$a;->b:Ltq0;

    iget-object p0, p0, Lge7$a;->c:Lge7;

    invoke-interface {v0, p0, p1}, Ltq0;->onFailure(Ljq0;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lulb;->t(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    invoke-virtual {p0, p2}, Lge7$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lge7$a;->c:Lge7;

    invoke-virtual {p1, p2}, Lge7;->e(Lokhttp3/Response;)Lgu8;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lge7$a;->b:Ltq0;

    iget-object p0, p0, Lge7$a;->c:Lge7;

    invoke-interface {p2, p0, p1}, Ltq0;->onResponse(Ljq0;Lgu8;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lulb;->t(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lulb;->t(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lge7$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
