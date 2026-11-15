.class Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lad/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->B(Ljava/net/HttpURLConnection;)Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$a;->a:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$a;->a:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->c(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$a;->a:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->d(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(Lad/b;)V
    .locals 0

    .line 1
    return-void
.end method
