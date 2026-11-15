.class final Luu/c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/upload/auth/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luu/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/transsion/upload/bean/UploadFileType;

.field private final c:Z

.field private final d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLjava/lang/ref/WeakReference;)V
    .locals 1

    .line 1
    const-string v0, "localFilePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "uploadFileType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callbackRef"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Luu/c$a;->a:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p0, Luu/c$a;->b:Lcom/transsion/upload/bean/UploadFileType;

    .line 22
    .line 23
    iput-boolean p3, p0, Luu/c$a;->c:Z

    .line 24
    .line 25
    iput-object p4, p0, Luu/c$a;->d:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/upload/bean/TstTokenEntity;)V
    .locals 8

    .line 1
    iget-object v0, p0, Luu/c$a;->d:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Luu/a;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Luu/c$a;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const-string v3, "TstTokenEntity is empty"

    .line 19
    .line 20
    invoke-interface {v0, p1, v3, v1, v2}, Luu/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Luu/c;->a:Luu/c;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getStorage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Luu/c;->a(Luu/c;Ljava/lang/String;)Lvu/a;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v4, p0, Luu/c$a;->a:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v5, p0, Luu/c$a;->b:Lcom/transsion/upload/bean/UploadFileType;

    .line 39
    .line 40
    iget-boolean v6, p0, Luu/c$a;->c:Z

    .line 41
    .line 42
    iget-object v0, p0, Luu/c$a;->d:Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v7, v0

    .line 49
    check-cast v7, Luu/a;

    .line 50
    .line 51
    move-object v3, p1

    .line 52
    invoke-virtual/range {v2 .. v7}, Lvu/a;->i(Lcom/transsion/upload/bean/TstTokenEntity;Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLuu/a;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Luu/c$a;->d:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Luu/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Luu/c$a;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v5, 0xc

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v2, "client authorization failed"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static/range {v0 .. v6}, Luu/a$a;->a(Luu/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
