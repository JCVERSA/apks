.class public Lcom/transsion/playercommon/utils/storage/FileOperateUtils$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->D(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/dialog/c;

.field public final synthetic b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/widgetslib/dialog/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$c;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$c;->a:Lcom/transsion/widgetslib/dialog/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$c;->a:Lcom/transsion/widgetslib/dialog/c;

    double-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/c;->h(I)Lcom/transsion/widgetslib/dialog/c;

    return-void
.end method

.method public b(Lcom/transsion/privateroom/api/beans/PrivateFile;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d(Lcom/transsion/privateroom/api/beans/PrivateFile;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/transsion/privateroom/api/beans/PrivateFile;)V
    .locals 0

    return-void
.end method

.method public f(Lcom/transsion/privateroom/api/beans/PrivateFile;)V
    .locals 0

    return-void
.end method

.method public g(Lcom/transsion/privateroom/api/beans/PrivateFile;)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$c;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->v(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$c;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$c;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->d()V

    :cond_0
    return-void
.end method

.method public i(Lcom/transsion/privateroom/api/beans/PrivateFile;)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method
