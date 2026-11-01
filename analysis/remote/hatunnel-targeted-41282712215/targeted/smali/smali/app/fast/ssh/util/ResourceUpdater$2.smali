.class Lapp/fast/ssh/util/ResourceUpdater$2;
.super Ljava/lang/Object;
.source "ResourceUpdater.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/util/ResourceUpdater;->requestUpdate(Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    iput-object p1, p0, Lapp/fast/ssh/util/ResourceUpdater$2;->this$0:Lapp/fast/ssh/util/ResourceUpdater;

    iput-object p2, p0, Lapp/fast/ssh/util/ResourceUpdater$2;->val$updateListener:Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    iget-object p1, p0, Lapp/fast/ssh/util/ResourceUpdater$2;->val$updateListener:Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;

    invoke-interface {p1}, Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;->onErrorOccurred()V

    return-void
.end method
