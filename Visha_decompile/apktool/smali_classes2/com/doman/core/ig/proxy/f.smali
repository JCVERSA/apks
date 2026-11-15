.class public final Lcom/doman/core/ig/proxy/f;
.super Lcom/doman/core/ig/proxy/h;
.source "SourceFile"

# interfaces
.implements Lyad;


# instance fields
.field private b:Ltod;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/MqttAndroidClient;Ltod;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/doman/core/ig/proxy/h;-><init>(Lcom/doman/core/ig/proxy/MqttAndroidClient;Lv7d;)V

    iput-object p2, p0, Lcom/doman/core/ig/proxy/f;->b:Ltod;

    return-void
.end method


# virtual methods
.method public final a()Ltod;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/f;->b:Ltod;

    return-object p0
.end method
