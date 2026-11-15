.class public interface abstract Lcom/transsion/retrofit/cache/CacheCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ltq0;"
    }
.end annotation


# virtual methods
.method public abstract synthetic onFailure(Ljq0;Ljava/lang/Throwable;)V
.end method

.method public abstract onGetCache(Ljq0;Lgu8;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "TT;>;",
            "Lgu8<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract synthetic onResponse(Ljq0;Lgu8;)V
.end method
