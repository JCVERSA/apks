.class final Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tupdate/net/network/HttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpRequestorHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\t\u001a\u00020\u00048\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;",
        "",
        "<init>",
        "()V",
        "Lcom/cloud/tupdate/net/network/HttpRequestor;",
        "b",
        "Lcom/cloud/tupdate/net/network/HttpRequestor;",
        "a",
        "()Lcom/cloud/tupdate/net/network/HttpRequestor;",
        "sInstance",
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


# static fields
.field public static final a:Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;

.field public static final b:Lcom/cloud/tupdate/net/network/HttpRequestor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;

    invoke-direct {v0}, Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;-><init>()V

    sput-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;->a:Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;

    new-instance v0, Lcom/cloud/tupdate/net/network/HttpRequestor;

    invoke-direct {v0}, Lcom/cloud/tupdate/net/network/HttpRequestor;-><init>()V

    sput-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;->b:Lcom/cloud/tupdate/net/network/HttpRequestor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/cloud/tupdate/net/network/HttpRequestor;
    .locals 0

    sget-object p0, Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;->b:Lcom/cloud/tupdate/net/network/HttpRequestor;

    return-object p0
.end method
