.class public final Lcr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsi1;


# static fields
.field public static final b:Lokhttp3/MediaType;


# instance fields
.field public final a:Lcom/squareup/moshi/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcr6;->b:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/moshi/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcr6;->a:Lcom/squareup/moshi/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 2

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-static {v0}, Lrc5;->F(Lokio/BufferedSink;)Lrc5;

    move-result-object v1

    iget-object p0, p0, Lcr6;->a:Lcom/squareup/moshi/e;

    invoke-virtual {p0, v1, p1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    sget-object p0, Lcr6;->b:Lokhttp3/MediaType;

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcr6;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method
