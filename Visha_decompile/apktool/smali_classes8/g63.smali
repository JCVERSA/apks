.class public interface abstract Lg63;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll1;

.field public static final b:Ll1;

.field public static final c:Ll1;

.field public static final d:Ll1;

.field public static final e:Ll1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll1;

    const-string v1, "1.3.101"

    invoke-direct {v0, v1}, Ll1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg63;->a:Ll1;

    const-string v1, "110"

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v1

    invoke-virtual {v1}, Ll1;->E()Ll1;

    move-result-object v1

    sput-object v1, Lg63;->b:Ll1;

    const-string v1, "111"

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v1

    invoke-virtual {v1}, Ll1;->E()Ll1;

    move-result-object v1

    sput-object v1, Lg63;->c:Ll1;

    const-string v1, "112"

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v1

    invoke-virtual {v1}, Ll1;->E()Ll1;

    move-result-object v1

    sput-object v1, Lg63;->d:Ll1;

    const-string v1, "113"

    invoke-virtual {v0, v1}, Ll1;->w(Ljava/lang/String;)Ll1;

    move-result-object v0

    invoke-virtual {v0}, Ll1;->E()Ll1;

    move-result-object v0

    sput-object v0, Lg63;->e:Ll1;

    return-void
.end method
