.class public final Lkkg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkkg;->a:Lqyi;

    iput-object p2, p0, Lkkg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkkg;->a:Lqyi;

    check-cast v0, Lvnf;

    invoke-virtual {v0}, Lvnf;->a()Lcoh;

    move-result-object v0

    iget-object p0, p0, Lkkg;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgkg;

    new-instance v1, Ljkg;

    invoke-direct {v1, v0, p0}, Ljkg;-><init>(Lcoh;Lgkg;)V

    return-object v1
.end method
