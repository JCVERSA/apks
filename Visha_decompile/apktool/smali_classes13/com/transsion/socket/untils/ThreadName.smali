.class public interface abstract annotation Lcom/transsion/socket/untils/ThreadName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/transsion/socket/untils/ThreadName;
        value = "Ui_main"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final CLIENT_HEART_BEAT:Ljava/lang/String; = "heart_beat_thread"

.field public static final HEART:Ljava/lang/String; = "Heart_beat"

.field public static final RECEIVE:Ljava/lang/String; = "Receive_thread"

.field public static final SEND:Ljava/lang/String; = "Send_thread"

.field public static final SERVER_HEART_CHECK:Ljava/lang/String; = "heart_check_thread"

.field public static final SOCKET_HELP:Ljava/lang/String; = "Socket_help_thread"


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method
