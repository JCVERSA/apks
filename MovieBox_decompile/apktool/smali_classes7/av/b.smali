.class public final Lav/b;
.super Lav/a;
.source "source.java"


# instance fields
.field private b:Lzu/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lav/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzu/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lzu/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lav/b;->b:Lzu/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Lav/a;->b()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Luu/c;->a:Luu/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Luu/c;->b()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final e(Lcom/transsion/usercenter/edit/api/RequstUserEntity;)V
    .locals 2

    .line 1
    const-string v0, "entity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lav/b;->b:Lzu/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Lav/b$a;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lav/b$a;-><init>(Lav/b;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Lzu/a;->a(Lcom/transsion/usercenter/edit/api/RequstUserEntity;Lcom/transsion/usercenter/edit/a;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lav/b;->b:Lzu/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lav/b$b;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lav/b$b;-><init>(Lav/b;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lzu/a;->b(Lcom/transsion/usercenter/edit/a;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;Lcom/transsion/usercenter/edit/a;)V
    .locals 3

    .line 1
    const-string v0, "imagePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "apiCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Luu/c;->a:Luu/c;

    .line 12
    .line 13
    sget-object v1, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

    .line 14
    .line 15
    new-instance v2, Lav/b$c;

    .line 16
    .line 17
    invoke-direct {v2, p2}, Lav/b$c;-><init>(Lcom/transsion/usercenter/edit/a;)V

    .line 18
    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-virtual {v0, p1, v1, p2, v2}, Luu/c;->f(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLuu/a;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
