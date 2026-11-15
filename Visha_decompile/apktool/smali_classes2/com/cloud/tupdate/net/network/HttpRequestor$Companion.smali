.class public final Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tupdate/net/network/HttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\tR\u0014\u0010\u000c\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\tR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\tR\u0014\u0010\u0011\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;",
        "",
        "<init>",
        "()V",
        "Lcom/cloud/tupdate/net/network/HttpRequestor;",
        "a",
        "()Lcom/cloud/tupdate/net/network/HttpRequestor;",
        "",
        "APP_NAME",
        "Ljava/lang/String;",
        "APP_VERSION",
        "COUNTRY",
        "LANGUAGE",
        "",
        "TIMEOUT_IN_MILLIONS",
        "I",
        "TIME_ZONE",
        "VERSION_CODE",
        "tupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/cloud/tupdate/net/network/HttpRequestor;
    .locals 0

    sget-object p0, Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;->a:Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;

    invoke-virtual {p0}, Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;->a()Lcom/cloud/tupdate/net/network/HttpRequestor;

    move-result-object p0

    return-object p0
.end method
