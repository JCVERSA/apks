.class public final Lwfh;
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

    iput-object p3, p0, Lwfh;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lbof;->a()Lrwe;

    move-result-object v0

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v1

    iget-object p0, p0, Lwfh;->a:Lqyi;

    check-cast p0, Lskf;

    invoke-virtual {p0}, Lskf;->a()Landroid/content/Context;

    move-result-object p0

    new-instance v2, Lufh;

    invoke-direct {v2, v0, v1, p0}, Lufh;-><init>(Lrwe;Lg8i;Landroid/content/Context;)V

    return-object v2
.end method
