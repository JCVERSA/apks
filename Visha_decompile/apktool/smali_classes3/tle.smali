.class public final Ltle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsle;


# instance fields
.field public final a:Ljava/nio/channels/FileChannel;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltle;->a:Ljava/nio/channels/FileChannel;

    iput-wide p2, p0, Ltle;->b:J

    iput-wide p4, p0, Ltle;->c:J

    return-void
.end method


# virtual methods
.method public final a([Ljava/security/MessageDigest;JI)V
    .locals 8

    iget-wide v0, p0, Ltle;->b:J

    add-long v4, v0, p2

    int-to-long v6, p4

    iget-object v2, p0, Ltle;->a:Ljava/nio/channels/FileChannel;

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_0

    aget-object p4, p1, p3

    invoke-virtual {p0, p2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p4, p0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Ltle;->c:J

    return-wide v0
.end method
