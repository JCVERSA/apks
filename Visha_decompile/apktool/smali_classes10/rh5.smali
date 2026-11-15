.class public Lrh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw0;


# static fields
.field public static final f:Lrh5;

.field public static final g:Lrh5;

.field public static final h:Lrh5;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lrh5;

    const-string v1, "kyber512"

    const/4 v2, 0x2

    const/16 v3, 0x100

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lrh5;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lrh5;->f:Lrh5;

    new-instance v0, Lrh5;

    const-string v1, "kyber768"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lrh5;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lrh5;->g:Lrh5;

    new-instance v0, Lrh5;

    const-string v1, "kyber1024"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lrh5;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lrh5;->h:Lrh5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrh5;->b:Ljava/lang/String;

    iput p2, p0, Lrh5;->c:I

    iput p3, p0, Lrh5;->d:I

    iput-boolean p4, p0, Lrh5;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lmh5;
    .locals 2

    new-instance v0, Lmh5;

    iget v1, p0, Lrh5;->c:I

    iget-boolean p0, p0, Lrh5;->e:Z

    invoke-direct {v0, v1, p0}, Lmh5;-><init>(IZ)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrh5;->b:Ljava/lang/String;

    return-object p0
.end method
