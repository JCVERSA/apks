.class public final Lfuf;
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

    iput-object p1, p0, Lfuf;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lfuf;->a:Lqyi;

    check-cast p0, Llyi;

    invoke-virtual {p0}, Llyi;->c()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    new-instance v0, Lduf;

    invoke-direct {v0, p0}, Lduf;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
