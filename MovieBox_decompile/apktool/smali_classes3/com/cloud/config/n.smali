.class public final synthetic Lcom/cloud/config/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

.field public final synthetic b:Lcom/google/gson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/config/n;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/config/n;->b:Lcom/google/gson/JsonObject;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/config/n;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/config/n;->b:Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->d(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
