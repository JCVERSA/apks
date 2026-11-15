.class public interface abstract annotation Lcom/transsion/apiinvoke/common/annotation/RouterChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/transsion/apiinvoke/common/annotation/RouterChannel;
        autoConnect = true
        className = ""
        packageName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract autoConnect()Z
.end method

.method public abstract channelName()Ljava/lang/String;
.end method

.method public abstract className()Ljava/lang/String;
.end method

.method public abstract packageName()Ljava/lang/String;
.end method

.method public abstract service()[Ljava/lang/String;
.end method
