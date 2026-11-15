.class public final Legh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Legh;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Ldof;->a()Leef;

    move-result-object v0

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v1

    iget-object p0, p0, Legh;->a:Lqyi;

    check-cast p0, Lpgh;

    invoke-virtual {p0}, Lpgh;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcgh;

    invoke-direct {v2, v0, v1, p0}, Lcgh;-><init>(Leef;Lg8i;Ljava/lang/String;)V

    return-object v2
.end method
