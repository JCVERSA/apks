.class public final Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;",
        "",
        "()V",
        "exception",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;",
        "ex",
        "",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;

    invoke-direct {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;-><init>()V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;->$$INSTANCE:Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final exception(Ljava/lang/Throwable;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;
    .locals 0

    const-string p0, "ex"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p0, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method
