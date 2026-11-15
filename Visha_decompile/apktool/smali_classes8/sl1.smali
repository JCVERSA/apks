.class public abstract Lsl1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll1;

.field public static final b:Ll1;

.field public static final c:Ll1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll1;

    const-string v1, "1.3.6.1.4.1.3029"

    invoke-direct {v0, v1}, Ll1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsl1;->a:Ll1;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v0

    const-string v2, "5"

    invoke-virtual {v0, v2}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v0

    sput-object v0, Lsl1;->b:Ll1;

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v0

    sput-object v0, Lsl1;->c:Ll1;

    return-void
.end method
