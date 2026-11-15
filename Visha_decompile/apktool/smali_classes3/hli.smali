.class public final Lhli;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lhli;

.field public static final c:Lhli;

.field public static final d:Lhli;

.field public static final e:Lhli;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhli;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lhli;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhli;->b:Lhli;

    new-instance v0, Lhli;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lhli;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhli;->c:Lhli;

    new-instance v0, Lhli;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lhli;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhli;->d:Lhli;

    new-instance v0, Lhli;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lhli;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhli;->e:Lhli;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhli;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhli;->a:Ljava/lang/String;

    return-object p0
.end method
