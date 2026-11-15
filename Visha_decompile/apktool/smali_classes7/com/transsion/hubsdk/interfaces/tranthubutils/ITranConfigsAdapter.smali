.class public interface abstract Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAsset(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getConfigs(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getConfigs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getConfigsList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfigsList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLibrary(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getMedia(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getNativeLibrary(Ljava/lang/String;Z)Ljava/io/File;
.end method

.method public abstract initialize(Ljava/lang/String;)V
.end method
