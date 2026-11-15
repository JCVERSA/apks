.class public Ltqc;
.super Lj1;
.source "SourceFile"


# static fields
.field public static c:Lvqc;


# instance fields
.field public b:Lw43;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvqc;

    invoke-direct {v0}, Lvqc;-><init>()V

    sput-object v0, Ltqc;->c:Lvqc;

    return-void
.end method

.method public constructor <init>(Lw43;)V
    .locals 0

    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Ltqc;->b:Lw43;

    return-void
.end method


# virtual methods
.method public j()Lp1;
    .locals 2

    sget-object v0, Ltqc;->c:Lvqc;

    iget-object v1, p0, Ltqc;->b:Lw43;

    invoke-virtual {v0, v1}, Lvqc;->b(Lw43;)I

    move-result v0

    sget-object v1, Ltqc;->c:Lvqc;

    iget-object p0, p0, Ltqc;->b:Lw43;

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lvqc;->c(Ljava/math/BigInteger;I)[B

    move-result-object p0

    new-instance v0, Lwp1;

    invoke-direct {v0, p0}, Lwp1;-><init>([B)V

    return-object v0
.end method
