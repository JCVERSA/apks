.class public Lcom/transsion/api/gateway/dns/d;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lcom/transsion/api/gateway/dns/d;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->c:I

    .line 13
    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->d:I

    .line 14
    iput-boolean v0, p0, Lcom/transsion/api/gateway/dns/d;->e:Z

    const/16 v0, 0x10

    .line 15
    new-array v1, v0, [C

    const/16 v2, 0x66

    .line 16
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 17
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/transsion/api/gateway/dns/d;->g:Ljava/math/BigInteger;

    .line 19
    iget-object v0, p1, Lcom/transsion/api/gateway/dns/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/api/gateway/dns/d;->b:Ljava/lang/String;

    .line 20
    iget v0, p1, Lcom/transsion/api/gateway/dns/d;->a:I

    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->a:I

    .line 21
    iget v0, p1, Lcom/transsion/api/gateway/dns/d;->c:I

    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->c:I

    .line 22
    iget v0, p1, Lcom/transsion/api/gateway/dns/d;->d:I

    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->d:I

    .line 23
    iget-boolean v0, p1, Lcom/transsion/api/gateway/dns/d;->e:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/dns/d;->e:Z

    .line 24
    iget-object v0, p1, Lcom/transsion/api/gateway/dns/d;->g:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/transsion/api/gateway/dns/d;->g:Ljava/math/BigInteger;

    .line 25
    iget-object p1, p1, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->c:I

    .line 3
    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->d:I

    .line 4
    iput-boolean v0, p0, Lcom/transsion/api/gateway/dns/d;->e:Z

    const/16 v0, 0x10

    .line 5
    new-array v1, v0, [C

    const/16 v2, 0x66

    .line 6
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/transsion/api/gateway/dns/d;->g:Ljava/math/BigInteger;

    .line 9
    iput-object p1, p0, Lcom/transsion/api/gateway/dns/d;->b:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/transsion/api/gateway/dns/d;->a:I

    return-void
.end method
