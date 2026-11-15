.class public interface abstract Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onPublishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/apiinvoke/subscribe/Publisher;",
            "TT;)V"
        }
    .end annotation
.end method
