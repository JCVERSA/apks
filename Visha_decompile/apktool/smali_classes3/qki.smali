.class public final Lqki;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lqki;

.field public static final c:Lqki;

.field public static final d:Lqki;

.field public static final e:Lqki;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqki;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lqki;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqki;->b:Lqki;

    new-instance v0, Lqki;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lqki;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqki;->c:Lqki;

    new-instance v0, Lqki;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lqki;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqki;->d:Lqki;

    new-instance v0, Lqki;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lqki;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqki;->e:Lqki;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqki;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqki;->a:Ljava/lang/String;

    return-object p0
.end method
