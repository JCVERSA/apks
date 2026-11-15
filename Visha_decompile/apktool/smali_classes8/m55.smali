.class public interface abstract Lm55;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll1;

.field public static final b:Ll1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll1;

    const-string v1, "0.4.0.127.0.15.1.1.13.0"

    invoke-direct {v0, v1}, Ll1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm55;->a:Ll1;

    new-instance v0, Ll1;

    const-string v1, "0.4.0.127.0.15.1.1.14.0"

    invoke-direct {v0, v1}, Ll1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm55;->b:Ll1;

    return-void
.end method
