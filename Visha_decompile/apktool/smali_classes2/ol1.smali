.class public abstract Lol1;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# instance fields
.field public final b:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lol1;->b:Lokhttp3/ResponseBody;

    return-void
.end method


# virtual methods
.method public abstract b()V
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lol1;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    invoke-virtual {p0}, Lol1;->b()V

    return-void
.end method

.method public final contentLength()J
    .locals 2

    iget-object p0, p0, Lol1;->b:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lol1;->b:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lol1;->b:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p0

    return-object p0
.end method
