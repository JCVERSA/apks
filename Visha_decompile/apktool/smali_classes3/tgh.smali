.class public final Ltgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Logh;


# direct methods
.method public constructor <init>(Logh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltgh;->a:Logh;

    return-void
.end method

.method public static b(Logh;)Z
    .locals 0

    invoke-virtual {p0}, Logh;->k()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Ltgh;->a:Logh;

    invoke-virtual {p0}, Logh;->k()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ltgh;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
