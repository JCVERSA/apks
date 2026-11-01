.class public Lapp/fast/ssh/util/ResourceUpdater;
.super Ljava/lang/Object;
.source "ResourceUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;
    }
.end annotation


# static fields
.field private static final UPDATE_URL:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u31a6"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/util/ResourceUpdater;->UPDATE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/util/ResourceUpdater;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lapp/fast/ssh/util/ResourceUpdater;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method


# virtual methods
.method public requestUpdate(Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;)V
    .locals 6

    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v4, Lapp/fast/ssh/util/ResourceUpdater$1;

    invoke-direct {v4, p0, p1}, Lapp/fast/ssh/util/ResourceUpdater$1;-><init>(Lapp/fast/ssh/util/ResourceUpdater;Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;)V

    new-instance v5, Lapp/fast/ssh/util/ResourceUpdater$2;

    invoke-direct {v5, p0, p1}, Lapp/fast/ssh/util/ResourceUpdater$2;-><init>(Lapp/fast/ssh/util/ResourceUpdater;Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;)V

    const/4 v1, 0x0

    const-string/jumbo v2, "\u31a6"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object p1, p0, Lapp/fast/ssh/util/ResourceUpdater;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method
