.class final Lcom/transsion/cloud_drive/base/network/RetrofitInstance$retrofit$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud_drive/base/network/RetrofitInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lru8;",
        "invoke",
        "()Lru8;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/cloud_drive/base/network/RetrofitInstance$retrofit$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance$retrofit$2;

    invoke-direct {v0}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance$retrofit$2;-><init>()V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance$retrofit$2;->INSTANCE:Lcom/transsion/cloud_drive/base/network/RetrofitInstance$retrofit$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance$retrofit$2;->invoke()Lru8;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lru8;
    .locals 3

    .line 2
    sget-object p0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->a:Lcom/transsion/cloud_drive/base/network/RetrofitInstance;

    invoke-static {p0}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->b(Lcom/transsion/cloud_drive/base/network/RetrofitInstance;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->d()Lqz6;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lqz6;->s()Z

    move-result v1

    invoke-static {}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->d()Lqz6;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lqz6;->o()Lnpa;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->c(Lcom/transsion/cloud_drive/base/network/RetrofitInstance;Lokhttp3/OkHttpClient;ZLnpa;)Lru8;

    move-result-object p0

    return-object p0
.end method
