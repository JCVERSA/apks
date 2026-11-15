.class public final synthetic Ljj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/a$a;


# instance fields
.field public final synthetic a:Lorg/chromium/net/QuicOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/QuicOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj3;->a:Lorg/chromium/net/QuicOptions;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    iget-object p0, p0, Ljj3;->a:Lorg/chromium/net/QuicOptions;

    invoke-static {p0, p1}, Lorg/chromium/net/a;->b(Lorg/chromium/net/QuicOptions;Lorg/json/JSONObject;)V

    return-void
.end method
