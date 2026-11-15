.class public Lwe/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lwe/d;

.field private final b:Lwe/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lwe/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lwe/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lwe/b;->a:Lwe/d;

    .line 10
    .line 11
    new-instance v1, Lwe/c;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lwe/c;-><init>(Lwe/a;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lwe/b;->b:Lwe/c;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()Lwe/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lwe/b;->b:Lwe/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lwe/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lwe/b;->a:Lwe/d;

    .line 2
    .line 3
    return-object v0
.end method
