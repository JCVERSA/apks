.class public Lio/appmetrica/analytics/network/internal/NetworkClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/network/internal/NetworkClient$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:Ljava/lang/Integer;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;

.field private final d:Ljava/lang/Boolean;

.field private final e:Ljava/lang/Boolean;

.field private final f:I


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->a:Ljava/lang/Integer;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->b:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->d:Ljava/lang/Boolean;

    .line 7
    iput-object p5, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->e:Ljava/lang/Boolean;

    if-nez p6, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/appmetrica/analytics/network/internal/NetworkClient;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getConnectTimeout()Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public getInstanceFollowRedirects()Ljava/lang/Boolean;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getMaxResponseSize()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->f:I

    return p0
.end method

.method public getReadTimeout()Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->c:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public getUseCaches()Ljava/lang/Boolean;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public newCall(Lio/appmetrica/analytics/network/internal/Request;)Lio/appmetrica/analytics/network/internal/Call;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/network/internal/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/network/impl/c;

    new-instance v1, Lio/appmetrica/analytics/network/impl/d;

    invoke-direct {v1}, Lio/appmetrica/analytics/network/impl/d;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lio/appmetrica/analytics/network/impl/c;-><init>(Lio/appmetrica/analytics/network/internal/NetworkClient;Lio/appmetrica/analytics/network/internal/Request;Lio/appmetrica/analytics/network/impl/d;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkClient{connectTimeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sslSocketFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", useCaches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instanceFollowRedirects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxResponseSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/appmetrica/analytics/network/internal/NetworkClient;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
