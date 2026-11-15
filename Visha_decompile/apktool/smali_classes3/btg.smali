.class public final Lbtg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbtg;->a:Lqyi;

    iput-object p3, p0, Lbtg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Latg;
    .locals 3

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    iget-object v1, p0, Lbtg;->a:Lqyi;

    check-cast v1, Lesg;

    invoke-virtual {v1}, Lesg;->a()Ldsg;

    move-result-object v1

    iget-object p0, p0, Lbtg;->b:Lqyi;

    invoke-static {p0}, Leyi;->a(Lqyi;)Lzxi;

    move-result-object p0

    new-instance v2, Latg;

    invoke-direct {v2, v0, v1, p0}, Latg;-><init>(Lg8i;Ldsg;Lzxi;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lbtg;->a()Latg;

    move-result-object p0

    return-object p0
.end method
