.class public final Lesg;
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

    iput-object p1, p0, Lesg;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Ldsg;
    .locals 1

    iget-object p0, p0, Lesg;->a:Lqyi;

    check-cast p0, Lskf;

    invoke-virtual {p0}, Lskf;->a()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ldsg;

    invoke-direct {v0, p0}, Ldsg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lesg;->a()Ldsg;

    move-result-object p0

    return-object p0
.end method
