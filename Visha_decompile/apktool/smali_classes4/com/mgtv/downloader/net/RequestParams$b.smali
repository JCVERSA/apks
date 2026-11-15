.class public Lcom/mgtv/downloader/net/RequestParams$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/downloader/net/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/downloader/net/RequestParams$b;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/mgtv/downloader/net/RequestParams$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/downloader/net/RequestParams$b;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/mgtv/downloader/net/RequestParams$b;->d:Z

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mgtv/downloader/net/RequestParams$b;
    .locals 1

    new-instance v0, Lcom/mgtv/downloader/net/RequestParams$b;

    if-nez p2, :cond_0

    const-string p2, "application/octet-stream"

    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mgtv/downloader/net/RequestParams$b;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
