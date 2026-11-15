.class public Lpy2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpy2;->d(Lzf1;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lzf1;


# direct methods
.method public constructor <init>(Lzf1;)V
    .locals 0

    iput-object p1, p0, Lpy2$a;->b:Lzf1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;)V
    .locals 0

    iget-object p0, p0, Lpy2$a;->b:Lzf1;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lpy2$a;->b:Lzf1;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;

    invoke-virtual {p0, p1}, Lpy2$a;->a(Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
