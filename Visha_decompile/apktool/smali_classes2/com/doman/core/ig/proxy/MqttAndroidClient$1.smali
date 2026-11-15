.class public final Lcom/doman/core/ig/proxy/MqttAndroidClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/proxy/MqttAndroidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/proxy/MqttAndroidClient;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/MqttAndroidClient;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient$1;->a:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient$1;->a:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    invoke-static {v0}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->b(Lcom/doman/core/ig/proxy/MqttAndroidClient;)V

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient$1;->a:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    invoke-static {v0}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c(Lcom/doman/core/ig/proxy/MqttAndroidClient;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient$1;->a:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    invoke-static {p0, p0}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Lcom/doman/core/ig/proxy/MqttAndroidClient;Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
