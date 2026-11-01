.class public abstract Lcom/wandoujia/download/rpc/DownloadConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/download/rpc/DownloadConstants$a;,
        Lcom/wandoujia/download/rpc/DownloadConstants$DownloadNetworkType;,
        Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;,
        Lcom/wandoujia/download/rpc/DownloadConstants$PauseReason;,
        Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/ir1;->a:Ljava/lang/String;

    sput-object v0, Lcom/wandoujia/download/rpc/DownloadConstants;->a:Ljava/lang/String;

    invoke-static {}, Lo/g93;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/download/rpc/DownloadConstants;->b:Ljava/lang/String;

    return-void
.end method
