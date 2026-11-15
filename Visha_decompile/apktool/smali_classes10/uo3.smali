.class public Luo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw0;


# static fields
.field public static final e:Luo3;

.field public static final f:Luo3;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Luo3;

    const-string v1, "falcon-512"

    const/16 v2, 0x9

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Luo3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Luo3;->e:Luo3;

    new-instance v0, Luo3;

    const-string v1, "falcon-1024"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Luo3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Luo3;->f:Luo3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0xa

    if-gt p2, v0, :cond_0

    iput-object p1, p0, Luo3;->b:Ljava/lang/String;

    iput p2, p0, Luo3;->c:I

    iput p3, p0, Luo3;->d:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Log N degree should be between 1 and 10"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Luo3;->c:I

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Luo3;->b:Ljava/lang/String;

    return-object p0
.end method
