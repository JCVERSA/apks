.class final Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadPoolUtilsHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;",
        "",
        "<init>",
        "()V",
        "Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;",
        "b",
        "Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;",
        "a",
        "()Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;",
        "instance",
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
.field public static final a:Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;

.field public static final b:Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;

    invoke-direct {v0}, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;-><init>()V

    sput-object v0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;->a:Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;

    new-instance v0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;->b:Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;
    .locals 0

    sget-object p0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;->b:Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;

    return-object p0
.end method
