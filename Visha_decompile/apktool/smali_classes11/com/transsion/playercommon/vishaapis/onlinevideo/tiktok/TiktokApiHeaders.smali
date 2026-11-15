.class public final Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokApiHeaders;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokApiHeaders;",
        "",
        "<init>",
        "()V",
        "HEADER_ANDROID_ID",
        "",
        "isTtApiPath",
        "",
        "path",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final HEADER_ANDROID_ID:Ljava/lang/String; = "androidId"

.field public static final INSTANCE:Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokApiHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokApiHeaders;

    invoke-direct {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokApiHeaders;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokApiHeaders;->INSTANCE:Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokApiHeaders;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isTtApiPath(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "/visha/api/tt/"

    invoke-static {p0, v3, v0, v1, v2}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
