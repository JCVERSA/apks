.class public final Lcom/vungle/ads/internal/network/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/network/e$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/network/e$a;


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private final errorBody:Lokhttp3/ResponseBody;

.field private final rawResponse:Lokhttp3/Response;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/network/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/network/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/network/e;->Companion:Lcom/vungle/ads/internal/network/e$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Ljava/lang/Object;",
            "Lokhttp3/ResponseBody;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    .line 4
    iput-object p2, p0, Lcom/vungle/ads/internal/network/e;->body:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/vungle/ads/internal/network/e;->errorBody:Lokhttp3/ResponseBody;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/network/e;-><init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody;)V

    return-void
.end method


# virtual methods
.method public final body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->body:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final code()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final errorBody()Lokhttp3/ResponseBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->errorBody:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    return-object v0
.end method

.method public final headers()Lokhttp3/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final isSuccessful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final message()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final raw()Lokhttp3/Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Response;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
