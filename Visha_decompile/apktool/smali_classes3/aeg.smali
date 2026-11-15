.class public final Laeg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Ltdg;


# direct methods
.method public constructor <init>(Ltdg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laeg;->a:Ltdg;

    return-void
.end method

.method public static b(Ltdg;)Lddg;
    .locals 0

    invoke-virtual {p0}, Ltdg;->a()Lddg;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a()Lddg;
    .locals 0

    iget-object p0, p0, Laeg;->a:Ltdg;

    invoke-static {p0}, Laeg;->b(Ltdg;)Lddg;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Laeg;->a:Ltdg;

    invoke-static {p0}, Laeg;->b(Ltdg;)Lddg;

    move-result-object p0

    return-object p0
.end method
