.class public final Lbh;
.super Lah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbh$a;
    }
.end annotation


# static fields
.field public static final d:Lbh$a;


# instance fields
.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbh$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbh$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbh;->d:Lbh$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x14

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbh;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lah;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lbh;->b:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lbh;->c:I

    return-void
.end method

.method public static final synthetic f(Lbh;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbh;->b:[Ljava/lang/Object;

    return-object p0
.end method

.method private final k(I)V
    .locals 2

    iget-object v0, p0, Lbh;->b:[Ljava/lang/Object;

    array-length v1, v0

    if-gt v1, p1, :cond_0

    array-length p1, v0

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbh;->b:[Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lbh;->c:I

    return p0
.end method

.method public c(ILjava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lbh;->k(I)V

    iget-object v0, p0, Lbh;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbh;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbh;->c:I

    :cond_0
    iget-object p0, p0, Lbh;->b:[Ljava/lang/Object;

    aput-object p2, p0, p1

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbh;->b:[Ljava/lang/Object;

    invoke-static {p0, p1}, Lhi;->f0([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lbh$b;

    invoke-direct {v0, p0}, Lbh$b;-><init>(Lbh;)V

    return-object v0
.end method
