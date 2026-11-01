.class Lapp/fast/ssh/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/MainActivity;


# direct methods
.method constructor <init>(Lapp/fast/ssh/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/MainActivity$1;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorOccurred()V
    .locals 0

    return-void
.end method

.method public onResponseReceived(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lapp/fast/ssh/MainActivity$1;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-static {v0, p1}, Lapp/fast/ssh/MainActivity;->access$000(Lapp/fast/ssh/MainActivity;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
