.class public final Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static e:Ljava/nio/charset/Charset;

.field public static f:Ljava/nio/charset/Charset;

.field public static final g:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-direct {v0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;-><init>()V

    sput-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    const-string v0, "AndroidKeyStore"

    sput-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->b:Ljava/lang/String;

    const-string v0, "BKS"

    sput-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->c:Ljava/lang/String;

    const-string v0, "AndroidOpenSSL"

    sput-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->d:Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->e:Ljava/nio/charset/Charset;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->f:Ljava/nio/charset/Charset;

    sget-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp$getStorePath$1;->INSTANCE:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp$getStorePath$1;

    sput-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->g:Ls74;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/charset/Charset;
    .locals 0

    sget-object p0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->f:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->d:Ljava/lang/String;

    return-object p0
.end method
