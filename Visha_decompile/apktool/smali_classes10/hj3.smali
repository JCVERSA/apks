.class public final synthetic Lhj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/a$a;


# instance fields
.field public final synthetic a:Lorg/chromium/net/DnsOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/DnsOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhj3;->a:Lorg/chromium/net/DnsOptions;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    iget-object p0, p0, Lhj3;->a:Lorg/chromium/net/DnsOptions;

    invoke-static {p0, p1}, Lorg/chromium/net/a;->c(Lorg/chromium/net/DnsOptions;Lorg/json/JSONObject;)V

    return-void
.end method
