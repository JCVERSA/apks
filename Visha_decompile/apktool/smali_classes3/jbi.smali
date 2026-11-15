.class public final Ljbi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljbi;

.field public static final c:Ljbi;

.field public static final d:Ljbi;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljbi;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Ljbi;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljbi;->b:Ljbi;

    new-instance v0, Ljbi;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Ljbi;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljbi;->c:Ljbi;

    new-instance v0, Ljbi;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Ljbi;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljbi;->d:Ljbi;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljbi;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljbi;->a:Ljava/lang/String;

    return-object p0
.end method
