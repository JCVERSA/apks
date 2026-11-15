.class public interface abstract Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/source/jni/ImgoSourceNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V
.end method

.method public abstract onResult(ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
.end method
