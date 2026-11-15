.class public final Lcom/transsion/cloud_drive/base/exceptions/NoConnectivityException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/exceptions/NoConnectivityException;",
        "Ljava/io/IOException;",
        "()V",
        "message",
        "",
        "getMessage",
        "()Ljava/lang/String;",
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


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    const-string v0, "No internet connection"

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/exceptions/NoConnectivityException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/exceptions/NoConnectivityException;->message:Ljava/lang/String;

    return-object p0
.end method
