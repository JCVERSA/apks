.class public final Luwa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Luwa;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Luwa;

    invoke-direct {v0}, Luwa;-><init>()V

    sput-object v0, Luwa;->a:Luwa;

    const-string v0, "hyperion_hap"

    sput-object v0, Luwa;->b:Ljava/lang/String;

    const-string v0, "!!DefaultGuardKeyMustNotDelete!!"

    sput-object v0, Luwa;->c:Ljava/lang/String;

    const-string v0, "ConfigStore.hap"

    sput-object v0, Luwa;->d:Ljava/lang/String;

    const-string v0, "SecureStore.hap"

    sput-object v0, Luwa;->e:Ljava/lang/String;

    const-string v0, "PersistStore.hap"

    sput-object v0, Luwa;->f:Ljava/lang/String;

    const-string v0, "CryptoStore.hap"

    sput-object v0, Luwa;->g:Ljava/lang/String;

    const-string v0, "SecureStoreLite.hap"

    sput-object v0, Luwa;->h:Ljava/lang/String;

    const-string v0, "PersistStoreLite.hap"

    sput-object v0, Luwa;->i:Ljava/lang/String;

    const-string v0, "CryptoStoreLite.hap"

    sput-object v0, Luwa;->j:Ljava/lang/String;

    const-string v0, "CryptoStoreLiteV2.hap"

    sput-object v0, Luwa;->k:Ljava/lang/String;

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

    sget-object p0, Luwa;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    sget-object p0, Luwa;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Luwa;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    sget-object p0, Luwa;->h:Ljava/lang/String;

    return-object p0
.end method
