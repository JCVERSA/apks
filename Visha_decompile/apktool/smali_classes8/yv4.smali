.class public interface abstract Lyv4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll1;

.field public static final b:Ll1;

.field public static final c:Ll1;

.field public static final d:Ll1;

.field public static final e:Ll1;

.field public static final f:Ll1;

.field public static final g:Ll1;

.field public static final h:Ll1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll1;

    const-string v1, "1.0.10118"

    invoke-direct {v0, v1}, Ll1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyv4;->a:Ll1;

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v0

    sput-object v0, Lyv4;->b:Ll1;

    const-string v1, "49"

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v1

    sput-object v1, Lyv4;->c:Ll1;

    const-string v1, "50"

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v1

    sput-object v1, Lyv4;->d:Ll1;

    const-string v1, "55"

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v0

    sput-object v0, Lyv4;->e:Ll1;

    new-instance v0, Ll1;

    const-string v1, "1.0.18033.2"

    invoke-direct {v0, v1}, Ll1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyv4;->f:Ll1;

    const-string v1, "1.2"

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v1

    sput-object v1, Lyv4;->g:Ll1;

    const-string v1, "2.4"

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v0

    sput-object v0, Lyv4;->h:Ll1;

    return-void
.end method
