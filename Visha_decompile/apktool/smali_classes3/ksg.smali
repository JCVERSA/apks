.class public final Lksg;
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

    iput-object p1, p0, Lksg;->a:Lqyi;

    iput-object p3, p0, Lksg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Ljsg;
    .locals 3

    iget-object v0, p0, Lksg;->a:Lqyi;

    check-cast v0, Loyi;

    invoke-virtual {v0}, Loyi;->c()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v1

    iget-object p0, p0, Lksg;->b:Lqyi;

    check-cast p0, Lk2g;

    invoke-virtual {p0}, Lk2g;->a()Lj2g;

    move-result-object p0

    new-instance v2, Ljsg;

    invoke-direct {v2, v0, v1, p0}, Ljsg;-><init>(Ljava/util/Map;Lg8i;Lj2g;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lksg;->a()Ljsg;

    move-result-object p0

    return-object p0
.end method
