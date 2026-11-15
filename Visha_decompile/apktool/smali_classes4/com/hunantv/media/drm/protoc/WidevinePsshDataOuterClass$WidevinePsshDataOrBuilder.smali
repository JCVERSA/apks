.class public interface abstract Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshDataOrBuilder;
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
    name = "WidevinePsshDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlgorithm()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;
.end method

.method public abstract getContentId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCryptoPeriodIndex()I
.end method

.method public abstract getGroupedLicense()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getKeyId(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getKeyIdCount()I
.end method

.method public abstract getKeyIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPolicy()Ljava/lang/String;
.end method

.method public abstract getPolicyBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getProtectionScheme()I
.end method

.method public abstract getProvider()Ljava/lang/String;
.end method

.method public abstract getProviderBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAlgorithm()Z
.end method

.method public abstract hasContentId()Z
.end method

.method public abstract hasCryptoPeriodIndex()Z
.end method

.method public abstract hasGroupedLicense()Z
.end method

.method public abstract hasPolicy()Z
.end method

.method public abstract hasProtectionScheme()Z
.end method

.method public abstract hasProvider()Z
.end method
