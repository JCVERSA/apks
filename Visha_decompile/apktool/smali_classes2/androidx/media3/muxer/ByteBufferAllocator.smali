.class public interface abstract Landroidx/media3/muxer/ByteBufferAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media3/muxer/ByteBufferAllocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio0;

    invoke-direct {v0}, Lio0;-><init>()V

    sput-object v0, Landroidx/media3/muxer/ByteBufferAllocator;->DEFAULT:Landroidx/media3/muxer/ByteBufferAllocator;

    return-void
.end method


# virtual methods
.method public abstract allocate(I)Ljava/nio/ByteBuffer;
.end method
