.class public final Lv7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv7h;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lt7h;
    .locals 2

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    iget-object p0, p0, Lv7h;->a:Lqyi;

    check-cast p0, Lskf;

    invoke-virtual {p0}, Lskf;->a()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lt7h;

    invoke-direct {v1, v0, p0}, Lt7h;-><init>(Lg8i;Landroid/content/Context;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv7h;->a()Lt7h;

    move-result-object p0

    return-object p0
.end method
