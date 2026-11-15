.class public final Lb3d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnw4;


# static fields
.field public static final a:Lb3d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb3d;

    invoke-direct {v0}, Lb3d;-><init>()V

    sput-object v0, Lb3d;->a:Lb3d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[B
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-array p0, v1, [B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnw4$a;->b(Lnw4;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string p1, "decode(ImportHmacTag, Base64.DEFAULT)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lnw4$a;->a(Lnw4;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string p1, "decode(ImportAesTag, Base64.DEFAULT)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
