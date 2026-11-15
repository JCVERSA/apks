.class public Lorg/nanohttpd/NanoHTTPD$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/nanohttpd/NanoHTTPD$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nanohttpd/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lorg/nanohttpd/NanoHTTPD;


# direct methods
.method public constructor <init>(Lorg/nanohttpd/NanoHTTPD;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD$f;->a:Lorg/nanohttpd/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/nanohttpd/NanoHTTPD;Ljy6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/nanohttpd/NanoHTTPD$f;-><init>(Lorg/nanohttpd/NanoHTTPD;)V

    return-void
.end method


# virtual methods
.method public create()Lorg/nanohttpd/NanoHTTPD$j;
    .locals 0

    new-instance p0, Lorg/nanohttpd/NanoHTTPD$e;

    invoke-direct {p0}, Lorg/nanohttpd/NanoHTTPD$e;-><init>()V

    return-object p0
.end method
