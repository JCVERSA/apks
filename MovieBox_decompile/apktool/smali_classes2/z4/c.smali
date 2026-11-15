.class public interface abstract annotation Lz4/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lz4/c;
        buildMethod = "build"
        withPrefix = "with"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract buildMethod()Ljava/lang/String;
.end method

.method public abstract withPrefix()Ljava/lang/String;
.end method
