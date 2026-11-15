.class public final Lhte;
.super Ltte;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V
    .locals 7

    const-string v3, "N2hMYZs1ev7Z/FgteF5QqKUc7rf1QopGcozQWEbWilo="

    const/16 v6, 0xc

    const-string v2, "H15E0WS5fFY9seCuALNpJkFkFuaIx1/XSodKeX1rubjSuXoMYEWIVaGutUfPnKqm"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ltte;->e:Looe;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Looe;->y0(J)Looe;

    iget-object v1, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object p0, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e0;->b()Landroid/content/Context;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Looe;->y0(J)Looe;

    return-void
.end method
