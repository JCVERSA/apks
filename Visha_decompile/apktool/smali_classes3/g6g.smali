.class public final Lg6g;
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

    iput-object p1, p0, Lg6g;->a:Ld6g;

    return-void
.end method

.method public static a(Ld6g;)Ljava/util/Set;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg6g;->a:Ld6g;

    invoke-static {p0}, Lg6g;->a(Ld6g;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
