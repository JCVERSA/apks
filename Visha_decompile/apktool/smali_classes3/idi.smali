.class public final Lidi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lidi;

.field public static final c:Lidi;

.field public static final d:Lidi;

.field public static final e:Lidi;

.field public static final f:Lidi;

.field public static final g:Lidi;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lidi;

    const-string v1, "ASSUME_AES_GCM"

    invoke-direct {v0, v1}, Lidi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lidi;->b:Lidi;

    new-instance v0, Lidi;

    const-string v1, "ASSUME_XCHACHA20POLY1305"

    invoke-direct {v0, v1}, Lidi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lidi;->c:Lidi;

    new-instance v0, Lidi;

    const-string v1, "ASSUME_CHACHA20POLY1305"

    invoke-direct {v0, v1}, Lidi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lidi;->d:Lidi;

    new-instance v0, Lidi;

    const-string v1, "ASSUME_AES_CTR_HMAC"

    invoke-direct {v0, v1}, Lidi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lidi;->e:Lidi;

    new-instance v0, Lidi;

    const-string v1, "ASSUME_AES_EAX"

    invoke-direct {v0, v1}, Lidi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lidi;->f:Lidi;

    new-instance v0, Lidi;

    const-string v1, "ASSUME_AES_GCM_SIV"

    invoke-direct {v0, v1}, Lidi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lidi;->g:Lidi;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lidi;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lidi;->a:Ljava/lang/String;

    return-object p0
.end method
