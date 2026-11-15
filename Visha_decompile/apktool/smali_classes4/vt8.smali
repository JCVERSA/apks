.class public Lvt8;
.super Lqn6;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lqn6;-><init>()V

    const-string v0, "com.mq.mgmi.client.message.internal.nls.messages"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lvt8;->b:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lvt8;->b:Ljava/util/ResourceBundle;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "MqttException"

    return-object p0
.end method
