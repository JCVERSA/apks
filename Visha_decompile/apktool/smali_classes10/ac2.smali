.class public Lac2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lac2;

.field public static final e:Lac2;

.field public static final f:Lac2;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lac2;

    const-string v1, "dilithium2"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lac2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lac2;->d:Lac2;

    new-instance v0, Lac2;

    const-string v1, "dilithium3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lac2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lac2;->e:Lac2;

    new-instance v0, Lac2;

    const-string v1, "dilithium5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lac2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lac2;->f:Lac2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lac2;->b:Ljava/lang/String;

    iput p2, p0, Lac2;->a:I

    iput-boolean p3, p0, Lac2;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/security/SecureRandom;)Lwb2;
    .locals 2

    new-instance v0, Lwb2;

    iget v1, p0, Lac2;->a:I

    iget-boolean p0, p0, Lac2;->c:Z

    invoke-direct {v0, v1, p1, p0}, Lwb2;-><init>(ILjava/security/SecureRandom;Z)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lac2;->b:Ljava/lang/String;

    return-object p0
.end method
