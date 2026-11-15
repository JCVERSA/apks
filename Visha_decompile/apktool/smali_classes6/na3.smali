.class public final Lna3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lna3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lna3;

    invoke-direct {v0}, Lna3;-><init>()V

    sput-object v0, Lna3;->a:Lna3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x10

    invoke-static {p1, p0}, Lcom/asa/wbcrypto_wrapper_oscloud_client/Wbcrypto_Wrapper_OSCloud_Client;->b(Ljava/lang/String;I)[B

    move-result-object p0

    const-string p1, "ASA_Wbcrypto_GenKey_Wrapper(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "data\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/asa/wbcrypto_wrapper_oscloud_client/Wbcrypto_Wrapper_OSCloud_Client;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ASA_Wbcrypto_Cipher_Version(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/asa/wbcrypto_wrapper_oscloud_client/Wbcrypto_Wrapper_OSCloud_Client;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ASA_Wbcrypto_Sign_String_Wrapper(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "data\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lcom/asa/wbcrypto_wrapper_oscloud_client/Wbcrypto_Wrapper_OSCloud_Client;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "data\u6216sign\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
