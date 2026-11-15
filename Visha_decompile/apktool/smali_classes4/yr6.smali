.class public Lyr6;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Lby0;

.field public d:Ljava/io/DataInputStream;

.field public e:Ljava/io/ByteArrayOutputStream;

.field public f:I


# direct methods
.method public constructor <init>(Lby0;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-class p1, Lyr6;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyr6;->b:Ljava/lang/String;

    const-string v0, "com.mq.mgmi.client.message.internal.nls.logcat"

    invoke-static {v0, p1}, Lw7d;->a(Ljava/lang/String;Ljava/lang/String;)Lg6d;

    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lyr6;->d:Ljava/io/DataInputStream;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lyr6;->e:Ljava/io/ByteArrayOutputStream;

    const/4 p1, -0x1

    iput p1, p0, Lyr6;->f:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0

    iget-object p0, p0, Lyr6;->d:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lyr6;->d:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 0

    iget-object p0, p0, Lyr6;->d:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method
