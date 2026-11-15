.class public interface abstract annotation Lcom/transsion/apiinvoke/common/annotation/OptionItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/transsion/apiinvoke/common/annotation/OptionItem;
        label = ""
        name = ""
        type = "string"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final TYPE_JSON:Ljava/lang/String; = "json"

.field public static final TYPE_STRING:Ljava/lang/String; = "string"


# virtual methods
.method public abstract label()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract type()Ljava/lang/String;
.end method

.method public abstract value()[Ljava/lang/String;
.end method
