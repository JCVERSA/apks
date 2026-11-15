.class public final Lfsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lasf;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lasf;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfsf;->a:Lasf;

    iput-object p2, p0, Lfsf;->b:Lqyi;

    return-void
.end method

.method public static b(Lasf;Ljava/lang/Object;)Lsrf;
    .locals 0

    check-cast p1, Lwrf;

    return-object p1
.end method


# virtual methods
.method public final a()Lsrf;
    .locals 0

    iget-object p0, p0, Lfsf;->b:Lqyi;

    check-cast p0, Lxrf;

    invoke-virtual {p0}, Lxrf;->a()Lwrf;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lfsf;->a()Lsrf;

    move-result-object p0

    return-object p0
.end method
