.class public final Lj6g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Ld6g;


# direct methods
.method public constructor <init>(Ld6g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj6g;->a:Ld6g;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj6g;->a:Ld6g;

    invoke-virtual {p0}, Ld6g;->c()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
