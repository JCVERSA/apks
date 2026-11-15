.class public Lt17;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/StringBuffer;

.field public final synthetic c:Ljava/io/Writer;

.field public final synthetic d:Lu17;


# direct methods
.method public constructor <init>(Lu17;Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lt17;->d:Lu17;

    iput-object p2, p0, Lt17;->b:Ljava/lang/StringBuffer;

    iput-object p3, p0, Lt17;->c:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lt17;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    iget-object v2, p0, Lt17;->d:Lu17;

    invoke-virtual {v2, v0, v1}, Lu17;->b(Ljava/io/Reader;Ljava/io/Writer;)V

    iget-object p0, p0, Lt17;->c:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lt17;->c:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .locals 0

    iget-object p0, p0, Lt17;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method
