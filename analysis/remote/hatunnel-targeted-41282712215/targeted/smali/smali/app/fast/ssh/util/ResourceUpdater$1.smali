.class Lapp/fast/ssh/util/ResourceUpdater$1;
.super Ljava/lang/Object;
.source "ResourceUpdater.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/util/ResourceUpdater;->requestUpdate(Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/util/ResourceUpdater;

.field final synthetic val$updateListener:Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;


# direct methods
.method constructor <init>(Lapp/fast/ssh/util/ResourceUpdater;Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/util/ResourceUpdater$1;->this$0:Lapp/fast/ssh/util/ResourceUpdater;

    iput-object p2, p0, Lapp/fast/ssh/util/ResourceUpdater$1;->val$updateListener:Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lapp/fast/ssh/util/ResourceUpdater$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/util/ResourceUpdater$1;->val$updateListener:Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;

    invoke-interface {v0, p1}, Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;->onResponseReceived(Lorg/json/JSONObject;)V

    return-void
.end method
