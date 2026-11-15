.class public interface abstract annotation Lyh/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyh/b$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final a:Lyh/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lyh/b$a;->a:Lyh/b$a;

    .line 2
    .line 3
    sput-object v0, Lyh/b;->a:Lyh/b$a;

    .line 4
    .line 5
    return-void
.end method
