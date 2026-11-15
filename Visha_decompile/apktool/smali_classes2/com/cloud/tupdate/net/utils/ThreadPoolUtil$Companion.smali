.class public final Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;",
        "",
        "<init>",
        "()V",
        "Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;",
        "a",
        "()Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;",
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
    invoke-direct {p0}, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;
    .locals 0

    sget-object p0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;->a:Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;

    invoke-virtual {p0}, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;->a()Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;

    move-result-object p0

    return-object p0
.end method
