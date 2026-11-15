.class public final Lb8h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb8h;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lz7h;
    .locals 1

    iget-object p0, p0, Lb8h;->a:Lqyi;

    check-cast p0, Lzyf;

    invoke-virtual {p0}, Lzyf;->a()Lenh;

    move-result-object p0

    new-instance v0, Lz7h;

    invoke-direct {v0, p0}, Lz7h;-><init>(Lenh;)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lb8h;->a()Lz7h;

    move-result-object p0

    return-object p0
.end method
