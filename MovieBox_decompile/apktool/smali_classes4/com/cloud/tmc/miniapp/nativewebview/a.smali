.class public final synthetic Lcom/cloud/tmc/miniapp/nativewebview/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/gson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/a;->a:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/nativewebview/a;->c:Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/a;->a:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/a;->c:Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
