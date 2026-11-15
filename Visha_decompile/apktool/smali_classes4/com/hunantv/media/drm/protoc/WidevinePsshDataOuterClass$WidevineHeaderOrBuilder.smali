.class public interface abstract Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeaderOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WidevineHeaderOrBuilder"
.end annotation


# virtual methods
.method public abstract getContentId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getKeyIds(I)Ljava/lang/String;
.end method

.method public abstract getKeyIdsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getKeyIdsCount()I
.end method

.method public abstract getKeyIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProvider()Ljava/lang/String;
.end method

.method public abstract getProviderBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasContentId()Z
.end method

.method public abstract hasProvider()Z
.end method
