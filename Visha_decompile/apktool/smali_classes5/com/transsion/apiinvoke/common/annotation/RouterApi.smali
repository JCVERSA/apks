.class public interface abstract annotation Lcom/transsion/apiinvoke/common/annotation/RouterApi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/transsion/apiinvoke/common/annotation/RouterApi;
        apiHandle = ""
        constructorType = 0x0
        livingTime = 0x0L
        packageName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final CONSTRUCTOR_ALWAYS_NEW:I = 0x1

.field public static final CONSTRUCTOR_SINGLE_INSTANCE:I = 0x0

.field public static final INSTANCE_DYNAMIC_REGISTER:I = 0x2

.field public static final KEEP_LIVING:I = 0x0

.field public static final SINGLE_CONSTRUCTOR_METHOD:Ljava/lang/String; = "getInstance"


# virtual methods
.method public abstract apiHandle()Ljava/lang/String;
.end method

.method public abstract apiName()Ljava/lang/String;
.end method

.method public abstract constructorType()I
.end method

.method public abstract livingTime()J
.end method

.method public abstract packageName()Ljava/lang/String;
.end method
