.class public Lv6d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls9d;

.field public final b:Lj8d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls9d;

    invoke-direct {v0}, Ls9d;-><init>()V

    iput-object v0, p0, Lv6d;->a:Ls9d;

    new-instance v1, Lj8d;

    invoke-direct {v1, v0}, Lj8d;-><init>(Lj3d;)V

    iput-object v1, p0, Lv6d;->b:Lj8d;

    return-void
.end method


# virtual methods
.method public a()Lj3d;
    .locals 0

    iget-object p0, p0, Lv6d;->b:Lj8d;

    return-object p0
.end method

.method public b()Lj3d;
    .locals 0

    iget-object p0, p0, Lv6d;->a:Ls9d;

    return-object p0
.end method
