.class public final Lcom/transsion/cloudcore/utils/CloudTaskUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/cloudcore/utils/CloudTaskUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/cloudcore/utils/CloudTaskUtils;

    invoke-direct {v0}, Lcom/transsion/cloudcore/utils/CloudTaskUtils;-><init>()V

    sput-object v0, Lcom/transsion/cloudcore/utils/CloudTaskUtils;->a:Lcom/transsion/cloudcore/utils/CloudTaskUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloudcore/utils/CloudTaskUtils$handleLocalFileStatus$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/cloudcore/utils/CloudTaskUtils$handleLocalFileStatus$2;-><init>(Ljava/util/List;Lwh1;)V

    invoke-static {v0, v1, p1}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/transsion/cloudcore/db/CloudTaskEntity;)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 9

    const-string v0, "cloudTaskEntity"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    iget-wide v0, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    long-to-int v6, v0

    iget-object v7, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    const/16 v8, 0x31

    const-wide/16 v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->createKtPlayData(JLjava/lang/String;IIILjava/lang/String;I)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    const-string v0, "createKtPlayData(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
