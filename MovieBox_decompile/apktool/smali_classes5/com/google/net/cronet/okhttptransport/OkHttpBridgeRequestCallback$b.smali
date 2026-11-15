.class Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

.field private final b:Ljava/nio/ByteBuffer;

.field private final c:Lorg/chromium/net/CronetException;


# direct methods
.method private constructor <init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;->a:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    .line 4
    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;->b:Ljava/nio/ByteBuffer;

    .line 5
    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;->c:Lorg/chromium/net/CronetException;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method static synthetic a(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;)Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;->a:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;)Lorg/chromium/net/CronetException;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;->c:Lorg/chromium/net/CronetException;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object p0
.end method
