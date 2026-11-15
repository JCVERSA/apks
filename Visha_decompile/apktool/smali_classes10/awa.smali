.class public final Lawa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lawa;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lawa;

    invoke-direct {v0}, Lawa;-><init>()V

    sput-object v0, Lawa;->a:Lawa;

    const-string v0, "AES/CBC/PKCS7Padding"

    sput-object v0, Lawa;->b:Ljava/lang/String;

    const-string v0, "AES/GCM/NoPadding"

    sput-object v0, Lawa;->c:Ljava/lang/String;

    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    sput-object v0, Lawa;->d:Ljava/lang/String;

    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    sput-object v0, Lawa;->e:Ljava/lang/String;

    const-string v0, "HmacSHA256"

    sput-object v0, Lawa;->f:Ljava/lang/String;

    const-string v0, "SHA256withRSA"

    sput-object v0, Lawa;->g:Ljava/lang/String;

    const-string v0, "SHA256withECDSA"

    sput-object v0, Lawa;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    sget-object p0, Lawa;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    sget-object p0, Lawa;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lawa;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    sget-object p0, Lawa;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    sget-object p0, Lawa;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lawa;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    sget-object p0, Lawa;->g:Ljava/lang/String;

    return-object p0
.end method
