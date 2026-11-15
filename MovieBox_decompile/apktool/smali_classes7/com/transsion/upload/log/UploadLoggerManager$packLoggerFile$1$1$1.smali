.class public final Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Luu/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1;->invoke(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Luu/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Luu/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->a:Luu/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    const-string v0, "localFilePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->a:Luu/a;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    move-wide v3, p2

    .line 12
    move-wide v5, p4

    .line 13
    invoke-interface/range {v1 .. v6}, Luu/a;->a(Ljava/lang/String;JJ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "localFilePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "url"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "bucket"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v0, "upload file success url="

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/transsion/upload/log/UploadLoggerManager;->a:Lcom/transsion/upload/log/UploadLoggerManager;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->b:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->c:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->a:Luu/a;

    .line 36
    .line 37
    new-instance v7, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1$onSuccess$1;

    .line 38
    .line 39
    invoke-direct {v7, v5, p2}, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1$onSuccess$1;-><init>(Luu/a;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object v2, p2

    .line 43
    move-object v6, p3

    .line 44
    invoke-static/range {v1 .. v7}, Lcom/transsion/upload/log/UploadLoggerManager;->b(Lcom/transsion/upload/log/UploadLoggerManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Luu/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->a:Luu/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Luu/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
