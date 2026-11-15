.class public final Lkqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lkqg;->a:Lqyi;

    iput-object p4, p0, Lkqg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Ljqg;
    .locals 4

    invoke-static {}, Llqh;->b()Lg8i;

    move-result-object v0

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v1

    iget-object v2, p0, Lkqg;->a:Lqyi;

    check-cast v2, Larg;

    invoke-virtual {v2}, Larg;->a()Lurg;

    move-result-object v2

    iget-object p0, p0, Lkqg;->b:Lqyi;

    invoke-static {p0}, Leyi;->a(Lqyi;)Lzxi;

    move-result-object p0

    new-instance v3, Ljqg;

    invoke-direct {v3, v0, v1, v2, p0}, Ljqg;-><init>(Lg8i;Lg8i;Lurg;Lzxi;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkqg;->a()Ljqg;

    move-result-object p0

    return-object p0
.end method
