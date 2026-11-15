.class public final Lovh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lqvh;

.field public final b:Lpvh;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqvh;

    invoke-direct {v0}, Lqvh;-><init>()V

    iput-object v0, p0, Lovh;->a:Lqvh;

    new-instance v1, Lpvh;

    invoke-direct {v1, v0}, Lpvh;-><init>(Lnvh;)V

    iput-object v1, p0, Lovh;->b:Lpvh;

    return-void
.end method


# virtual methods
.method public final a()Lnvh;
    .locals 0

    iget-object p0, p0, Lovh;->b:Lpvh;

    return-object p0
.end method

.method public final b()Lnvh;
    .locals 0

    iget-object p0, p0, Lovh;->a:Lqvh;

    return-object p0
.end method
