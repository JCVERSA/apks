.class public Lcom/transsion/palmsdk/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkfc$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/b;->A(Lcom/transsion/palmsdk/data/PalmAuthResult;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/b$i;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/transsion/palmsdk/b$i;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/palmsdk/b$i;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/transsion/palmsdk/b$i;->b:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v1, "request vip info failed"

    const/4 v2, 0x0

    invoke-static {v2, v0, p0, v1}, Lg06;->c(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x407

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V
    .locals 2

    const-string p1, "get visha user info success, post EVENT_PALM_ID_LOG_IN event"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_PalmIdManager"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x407

    invoke-virtual {p1, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/palmsdk/b$i;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/transsion/palmsdk/b$i;->b:Z

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    const-string v1, "success"

    invoke-static {v0, p1, p0, v1}, Lg06;->c(ZLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
