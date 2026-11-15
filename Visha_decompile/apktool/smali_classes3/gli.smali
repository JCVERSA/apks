.class public final Lgli;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lgli;

.field public static final c:Lgli;

.field public static final d:Lgli;

.field public static final e:Lgli;

.field public static final f:Lgli;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgli;

    const-string v1, "SHA1"

    invoke-direct {v0, v1}, Lgli;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgli;->b:Lgli;

    new-instance v0, Lgli;

    const-string v1, "SHA224"

    invoke-direct {v0, v1}, Lgli;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgli;->c:Lgli;

    new-instance v0, Lgli;

    const-string v1, "SHA256"

    invoke-direct {v0, v1}, Lgli;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgli;->d:Lgli;

    new-instance v0, Lgli;

    const-string v1, "SHA384"

    invoke-direct {v0, v1}, Lgli;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgli;->e:Lgli;

    new-instance v0, Lgli;

    const-string v1, "SHA512"

    invoke-direct {v0, v1}, Lgli;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgli;->f:Lgli;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgli;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgli;->a:Ljava/lang/String;

    return-object p0
.end method
