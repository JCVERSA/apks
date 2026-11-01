.class public Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;
.super Ljava/lang/Object;


# instance fields
.field private final Gy:[B

.field private suH:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->Gy:[B

    const/4 v0, 0x0

    iput v0, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->suH:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->Gy:[B

    iput p2, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->suH:I

    return-void
.end method


# virtual methods
.method Cc([BI)V
    .locals 4

    iget-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->Gy:[B

    iget v1, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->suH:I

    add-int/2addr v1, p2

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method m(IB)V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->Gy:[B

    iget v1, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->suH:I

    add-int/2addr v1, p1

    aput-byte p2, v0, v1

    return-void
.end method

.method public r(II)V
    .locals 4

    iget-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->Gy:[B

    iget v1, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->suH:I

    add-int v2, v1, p2

    int-to-byte v3, p1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method tks(I)I
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->Gy:[B

    iget v1, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->suH:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH$ExportActivity$2$8;->rj(B)I

    move-result v0

    return v0
.end method

.method public uiGk(I)Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;
    .locals 3

    new-instance v0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;

    iget-object v1, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->Gy:[B

    iget v2, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->suH:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;-><init>([BI)V

    return-object v0
.end method

.method xzy(II)[B
    .locals 4

    new-array v0, p2, [B

    iget-object v1, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->Gy:[B

    iget v2, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->suH:I

    add-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method yp(I)B
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->Gy:[B

    iget v1, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->suH:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public zc(I)V
    .locals 1

    iget v0, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->suH:I

    add-int/2addr v0, p1

    iput v0, p0, Lapp/fast/ssh/ProtectedFastSSH$HomeFragment$5$1;->suH:I

    return-void
.end method
